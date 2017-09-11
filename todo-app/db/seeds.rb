# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Entry.create(title: 'Homework', description: 'Work on final project proposal and start wireframming')
Entry.create(title: 'Sleep', description: '6-8 hours of sleep every night')
Entry.create(title: 'Portfolio', description: 'Work on creating more content for personal portfolio as well as fixing it up')

puts "created #{Entry.count} entries!"