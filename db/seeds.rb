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


Book.create(title: "The Therapist", author: "B A Paris ", 
     description: "From the Sunday Times bestselling author of books like Behind Closed Doors comes the most gripping psychological thriller of 2021",
     image: "https://www.amazon.co.uk/images/I/41em3vN6QQL.jpg", category_id: 1, user_id: 2)

Book.create(title: "Roman Empire", author: "David Piper", 
     description: "Rise & the Fall. Explore the History, Mythology, Legends, Epic Battles & Lives of the Emperors, Legions, Heroes, Gladiators & More", 
     image: "https://www.amazon.co.uk/images/I/8146uJ+MUFS._AC_UY218_.jpg", category_id: 3, user_id: 1)

     
Review.create(comment: "great book", likes: "8", user_id: 2, book_id: 2)
Review.create(comment: "well written book", likes: "2", user_id: 1, book_id: 2)

