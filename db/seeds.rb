# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Renting.destroy_all
Fake.destroy_all
User.destroy_all
puts "creation d'utilisateurs"
user1 = User.new(email: "toto@gmail.com",password: "toto21",firstname: "tupac",lastname: "shakur",description: "le plus grand rappeur de tout les temps et surement le meilleurs disc joket de tout les temps egalement. Quand pensez vous ? Tupac sort son premier album, 2Pacalypse Now, en 1991, qui fait de lui un acteur majeur du rap West Coast durant les années 199014. Il réalise au cours de sa carrière plusieurs albums à succès comme Strictly 4 My N.I.G.G.A.Z. en 1993 et Me Against the World en 199515. Cette même année, Tupac Shakur, qui a eu des problèmes juridiques, un vol qualifié et une fusillade, est entré en rivalité avec les rappeurs de la côte est et notamment son ancien ami : The Notorious B.I.G.16")
user1.save
user = User.last
puts "creation de personnalité"
boss1 = {user_id: user.id,nickname: "sylvain", url: "sylvain.png", category: "boss", personality: "angry", address: "Marseille", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 150, rating: 5}
boss2 = {user_id: user.id,nickname: "mathilde", url: "mathilde.png", category: "boss", personality: "noisy", address: "Lyon", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 300, rating: 4}
boss3 = {user_id: user.id,nickname: "bruno", url: "bruno.png", category: "boss", personality: "authoritarian", address: "Paris", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 35, rating: 4}
boss4 = {user_id: user.id,nickname: "pauline", url: "pauline.png", category: "boss", personality: "angry", address: "Cannes", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 250, rating: 4}
friend1 = {user_id: user.id,nickname: "jean-loup", url: "jean-loup.png", category: "friend", personality: "noisy", address: "Nice", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 12, rating: 4}
friend2 = {user_id: user.id,nickname: "julien", url: "julien.png", category: "friend", personality: "nice", address: "Monaco", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 89, rating: 5}
friend3 = {user_id: user.id,nickname: "remy", url: "remy.png", category: "friend", personality: "authoritarian", address: "Toulon", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 218, rating: 5}
friend4 = {user_id: user.id,nickname: "damien", url: "damien.png", category: "friend", personality: "nice", address: "Avignon", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 99, rating: 5}
family = {user_id: user.id,nickname: "théo", url: "théo.png", category: "family", personality: "noisy", address: "Montpellier", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 500, rating: 5}
employee = {user_id: user.id,nickname: "stéphane", url: "stephane.png", category: "boss", personality: "angry", address: "Toulouse", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur", price: 200, rating: 4}

[ boss1, boss2,boss3,boss4, friend1, friend2, friend3, friend4, family, employee ].each do |attributes|
  fake = Fake.create!(attributes)
  puts "Created #{fake.nickname}"
end
puts "Finished!"
