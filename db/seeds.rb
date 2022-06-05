# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create [
  { name: 'John', email: 'john@example.com', role: 0, password: '123456789' },
  { name: 'Peter', email: 'peter@example.com', role: 1, password: '123456789' },
  { name: 'Mary', email: 'mary@example.com', role: 2, password: '123456789' }
]

(1..100).each do |i|
  Note.create user: User.all[rand(3)],
              title: Faker::Lorem.words(number: rand(2..8)).join(' '),
              text: Faker::Lorem.words(number: rand(20..60)).join(' ')
end
