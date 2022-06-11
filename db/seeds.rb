# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Eben Eleazer", email:"ebenaeleazer@outlook.com", password_digest: "PantryPal")


Pantry.create(name: "Eben's Pantry", description: "For Food", user_id: 1)

Ingredient.create( name: "Flour", description: "wheat powder", quantity: 0.5, unit_of_measure: "g", pantry_id: 1)