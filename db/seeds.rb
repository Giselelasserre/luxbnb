# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first

Flat.create(
  location: "Sao Paulo"
  description:"Nice flat",
  price: 10_000,
  title: "Super Flat in Bangkok.",
  picture: "http://www.phadke-developers.com/images/projects/tathastu/large/2-bhk-bedroom-apartment-flat-for-sale-in-sangli.jpg",
  address: "Av. 9 de julho, 2000, São Paulo, SP",
  user_id: user.id
)
