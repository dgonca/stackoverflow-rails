# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative '../app/models/user'
User.create([
  {name: "Heroko", username: "yes", email:"zac@csd", password: "panda" },
  {name: "zack taylor", username: "zack", email:"zack@zack.zack", password: "panda" },
  {name: "dom G", username: "G_dom", email:"dom@dom.dom", password: "panda" },
  {name: "James", username: "james_likes_peaches", email:"james@james.net", password: "panda" }
  ])

Question.create([
  {title: "Heroku is cool", content: "yes!", author: User.find(1)},
  {title: "Zack the autobiography.", content: "Zack is cool", author: User.find(2)},
  {title: "Oreos", content: "I just cant get enough!", author: User.find(3)},
  {title: "Peaches is cool", content: "PEACHEZZZZZZ", author: User.find(4)}
  ])
