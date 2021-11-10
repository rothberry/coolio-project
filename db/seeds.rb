# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User = Api::V1::User
Dog = Api::V1::Dog
User.delete_all
Dog.delete_all

puts "Deleting db"

u1 = User.create(username: "shawny", password: "123")
u2 = User.create(username: "barbalie", password: "123")
u3 = User.create(username: "philo", password: "123")

puts "SEEDED USERS"

u3.dogs.create(name: "chauncy", breed: "mutt", age: 10)
u1.dogs.create(name: "kevin", breed: "bulldog", age: 2)
u2.dogs.create(name: "mr peanutbutter", breed: "golden retreiver", age: 1)

puts "SEEDED DOGS"