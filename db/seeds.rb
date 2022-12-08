# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.find_or_create_by({code: 'SFO'})
Airport.find_or_create_by({code: 'NYC'})
Airport.find_or_create_by({code: 'LAX'})
Airport.find_or_create_by({code: 'BOS'})
Airport.find_or_create_by({code: 'ORD'})

Flight.create({})
Flight.create({origin_id: ''})
Flight.create({})
Flight.create({})
Flight.create({})
