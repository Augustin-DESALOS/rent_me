# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Fake.destroy_all
puts "creation d'utilisateurs"
user1 = User.new(email: "toto@gmail.com",password: "toto21")
user1.save
user = User.last
puts "creation de personnalité"
angry_boss = {user_id: user,nickname: "sylvain", url: "photo", category: "boss", personality: "angry", description: "?", price: 150, rating: 5}
crazy_buddy = {user_id: user,nickname: "jean-loup", url: "photo", category: "buddy", personality: "crazy", description: "?", price: 12, rating: 4}
romantic_dinner = {user_id: user,nickname: "julien", url: "photo", category: "dinner", personality: "romantic", description: "?", price: 34, rating: 5}
bodyguard = {user_id: user,nickname: "théo", url: "photo", category: "guard", personality: "bodyguard", description: "?", price: 500, rating: 5}
brother = {user_id: user,nickname: "stéphane", url: "photo", category: "brother", personality: "reuf", description: "?", price: 200, rating: 4}
nice_boss = {user_id: user,nickname: "mathilde", url: "photo", category: "boss", personality: "excellent", description: "?", price: 300, rating: 4}
[ angry_boss, crazy_buddy,romantic_dinner,bodyguard,brother, nice_boss ].each do |attributes|
  fake = Fake.create!(attributes)
  puts "Created #{fake.name}"
end
puts "Finished!"
