# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fiction = Category.create(name: "Fiction") 
memoir = Category.create(name: "Memoir") 
history = Category.create(name: "History") 
politics = Category.create(name: "Politics") 
food = Category.create(name: "Food") 

User.create(username: "betty", email: "bet@gmail.com", password: "password")
User.create(username: "mel", email: "mel@gmail.com", password: "password1")
User.create(username: "martha", email: "martha@gmail.com", password: "password2")
