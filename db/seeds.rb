# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin = Admin.create({email: "admin@fevr.pt", password: "password" })
user = User.create({email: "user@fevr.pt", password: "password" })
player = Player.create!({name: "Bruno Fernandes", number: '18', nationality: 'Portugal', age: '27', position: 'M' })