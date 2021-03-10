# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Fake.destroy_all
User.destroy_all
puts "creation d'utilisateurs"
user1 = User.new(email: "toto@gmail.com",password: "toto21")
user1.save
user = User.last
puts "creation de personnalité"
boss1 = {user_id: user.id,nickname: "sylvain", url: "sylvain.jpeg", category: "boss", personality: "angry", description: "lorem", price: 150, rating: 5}
boss2 = {user_id: user.id,nickname: "mathilde", url: "photo", category: "boss", personality: "noisy", description: "lorem", price: 300, rating: 4}
boss3 = {user_id: user.id,nickname: "bruno", url: "photo", category: "boss", personality: "authoritarian", description: "lorem", price: 35, rating: 4}
boss4 = {user_id: user.id,nickname: "pauline", url: "photo", category: "boss", personality: "angry", description: "lorem", price: 250, rating: 4}
friend1 = {user_id: user.id,nickname: "jean-loup", url: "photo", category: "friend", personality: "noisy", description: "lorem", price: 12, rating: 4}
friend2 = {user_id: user.id,nickname: "julien", url: "photo", category: "friend", personality: "nice", description: "lorem", price: 89, rating: 5}
friend3 = {user_id: user.id,nickname: "remy", url: "photo", category: "friend", personality: "authoritarian", description: "lorem", price: 218, rating: 5}
friend4 = {user_id: user.id,nickname: "damien", url: "photo", category: "friend", personality: "nice", description: "lorem", price: 99, rating: 5}
family = {user_id: user.id,nickname: "théo", url: "photo", category: "family", personality: "noisy", description: "lorem", price: 500, rating: 5}
employee = {user_id: user.id,nickname: "stéphane", url: "photo", category: "boss", personality: "angry", description: "lorem", price: 200, rating: 4}

[ boss1, boss2,boss3,boss4, friend1, friend2, friend3, friend4, family, employee ].each do |attributes|
  fake = Fake.create!(attributes)
  puts "Created #{fake.nickname}"
end
puts "Finished!"
