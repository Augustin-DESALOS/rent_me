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
user1 = User.new(email: "toto@gmail.com",password: "toto21",firstname: "tupac",lastname: "shakur",description: "né a Lesane Parish Crooks, né le 16 juin 1971 à New York, connu sous les noms de scène de 2Pac et Makaveli (en forme longue Makaveli The Don Killuminati), et mort assassiné le 13 septembre 1996 à Las Vegas, est un rappeur, poète et acteur américain3. Il est souvent considéré comme étant l'un des plus grands rappeurs de tous les temps.")
user1.save
user = User.last
puts "creation de personnalité"
boss1 = {user_id: user.id,nickname: "sylvain", url: "sylvain.png", category: "boss", personality: "angry", address: "Marseille", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 150, rating: 5}
boss2 = {user_id: user.id,nickname: "mathilde", url: "mathilde.png", category: "boss", personality: "noisy", address: "Lyon", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 300, rating: 4}
boss3 = {user_id: user.id,nickname: "bruno", url: "bruno.png", category: "boss", personality: "authoritarian", address: "Paris", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 35, rating: 4}
boss4 = {user_id: user.id,nickname: "pauline", url: "pauline.png", category: "boss", personality: "angry", address: "Cannes", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 250, rating: 4}
friend1 = {user_id: user.id,nickname: "jean-loup", url: "jean-loup.png", category: "friend", personality: "noisy", address: "Nice", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 12, rating: 4}
friend2 = {user_id: user.id,nickname: "julien", url: "photo", category: "friend", personality: "nice", address: "Monaco", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 89, rating: 5}
friend3 = {user_id: user.id,nickname: "remy", url: "photo", category: "friend", personality: "authoritarian", address: "Toulon", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 218, rating: 5}
friend4 = {user_id: user.id,nickname: "damien", url: "photo", category: "friend", personality: "nice", address: "Avignon", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 99, rating: 5}
family = {user_id: user.id,nickname: "théo", url: "photo", category: "family", personality: "noisy", address: "Montpellier", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 500, rating: 5}
employee = {user_id: user.id,nickname: "stéphane", url: "stephane.png", category: "boss", personality: "angry", address: "Toulouse", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 200, rating: 4}

[ boss1, boss2,boss3,boss4, friend1, friend2, friend3, friend4, family, employee ].each do |attributes|
  fake = Fake.create!(attributes)
  puts "Created #{fake.nickname}"
end
puts "Finished!"
