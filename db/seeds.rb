# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb

# Creates Cars
car1 = Car.create(make: "Honda", model: "Civic", year: 2010)
car2 = Car.create(make: "Toyota", model: "Camry", year: 2015)

# Creates Parts associated with the Cars
part1 = car1.parts.create(name: "Engine", part_number: "1234", manufacturer: "Honda", price: 5000.0, description: "VTEC Engine")
part2 = car1.parts.create(name: "Brakes", part_number: "5678", manufacturer: "Brembo", price: 500.0, description: "Disc brakes")
part3 = car2.parts.create(name: "Tires", part_number: "9012", manufacturer: "Michelin", price: 800.0, description: "All-season radial tires")

