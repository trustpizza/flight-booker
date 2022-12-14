# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
airports = []

airports[0] = Airport.find_or_create_by({code: 'SFO'})
airports[1] = Airport.find_or_create_by({code: 'NYC'})
airports[2] = Airport.find_or_create_by({code: 'LAX'})
airports[3] = Airport.find_or_create_by({code: 'BOS'})
airports[4] = Airport.find_or_create_by({code: 'ORD'})
airports[5] = Airport.find_or_create_by({code: 'JFK'})

flights = Flight.create([{dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[0], arrival_airport: airports[1]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[0], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today, duration: 140, departure_airport: airports[0], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today, duration: 190, departure_airport: airports[0], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 160, departure_airport: airports[0], arrival_airport: airports[5]}, 
  {dep_time: Time.now, dep_date: Date.today + 10, duration: 120, departure_airport: airports[0], arrival_airport: airports[1]}, 
  {dep_time: Time.now, dep_date: Date.today + 15, duration: 120, departure_airport: airports[0], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 30, duration: 120, departure_airport: airports[0], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today + 500, duration: 120, departure_airport: airports[0], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 123 , duration: 120, departure_airport: airports[0], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today + 11, duration: 120, departure_airport: airports[0], arrival_airport: airports[1]}, 
  {dep_time: Time.now, dep_date: Date.today + 90, duration: 140, departure_airport: airports[0], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 40, duration: 190, departure_airport: airports[0], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today + 50, duration: 150, departure_airport: airports[0], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 13, duration: 130, departure_airport: airports[0], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[1], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[1], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today, duration: 140, departure_airport: airports[1], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today, duration: 190, departure_airport: airports[1], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 160, departure_airport: airports[1], arrival_airport: airports[5]}, 
  {dep_time: Time.now, dep_date: Date.today + 10 , duration: 120, departure_airport: airports[1], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 30, duration: 120, departure_airport: airports[1], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today + 500, duration: 120, departure_airport: airports[1], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 123 , duration: 120, departure_airport: airports[1], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today + 11, duration: 120, departure_airport: airports[1], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today + 90, duration: 140, departure_airport: airports[1], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 40, duration: 190, departure_airport: airports[1], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today + 50, duration: 150, departure_airport: airports[1], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 13, duration: 130, departure_airport: airports[1], arrival_airport: airports[5]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[2], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[2], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today, duration: 140, departure_airport: airports[2], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today, duration: 190, departure_airport: airports[2], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 160, departure_airport: airports[2], arrival_airport: airports[5]}, 
  {dep_time: Time.now, dep_date: Date.today + 10 , duration: 120, departure_airport: airports[2], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 30, duration: 120, departure_airport: airports[2], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today + 500, duration: 120, departure_airport: airports[2], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 123 , duration: 120, departure_airport: airports[2], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today + 11, duration: 120, departure_airport: airports[2], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today + 90, duration: 140, departure_airport: airports[2], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 40, duration: 190, departure_airport: airports[2], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today + 50, duration: 150, departure_airport: airports[2], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 13, duration: 130, departure_airport: airports[2], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[3], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[3], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today, duration: 140, departure_airport: airports[3], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today, duration: 190, departure_airport: airports[3], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 160, departure_airport: airports[3], arrival_airport: airports[5]}, 
  {dep_time: Time.now, dep_date: Date.today + 10 , duration: 120, departure_airport: airports[3], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 30 , duration: 120, departure_airport: airports[3], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 500, duration: 120, departure_airport: airports[3], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 123 , duration: 120, departure_airport: airports[3], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today + 11, duration: 120, departure_airport: airports[3], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today + 90, duration: 140, departure_airport: airports[3], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 40, duration: 190, departure_airport: airports[3], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 50, duration: 150, departure_airport: airports[3], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 13, duration: 130, departure_airport: airports[3], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[4], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[4], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today, duration: 140, departure_airport: airports[4], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today, duration: 190, departure_airport: airports[4], arrival_airport: airports[3]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 160, departure_airport: airports[4], arrival_airport: airports[5]}, 
  {dep_time: Time.now, dep_date: Date.today + 10 , duration: 120, departure_airport: airports[4], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 30, duration: 120, departure_airport: airports[4], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 500, duration: 120, departure_airport: airports[4], arrival_airport: airports[3]}, 
  {dep_time: Time.now, dep_date: Date.today + 123 , duration: 120, departure_airport: airports[4], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today + 11, duration: 120, departure_airport: airports[4], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today + 90, duration: 140, departure_airport: airports[4], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 40, duration: 190, departure_airport: airports[4], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 50, duration: 150, departure_airport: airports[4], arrival_airport: airports[3]}, 
  {dep_time: Time.now, dep_date: Date.today + 13, duration: 130, departure_airport: airports[4], arrival_airport: airports[5]},
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[5], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 120, departure_airport: airports[5], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today, duration: 140, departure_airport: airports[5], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today, duration: 190, departure_airport: airports[5], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today, duration: 160, departure_airport: airports[5], arrival_airport: airports[3]}, 
  {dep_time: Time.now, dep_date: Date.today + 10 , duration: 120, departure_airport: airports[5], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 30 , duration: 120, departure_airport: airports[5], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 500, duration: 120, departure_airport: airports[5], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 123 , duration: 120, departure_airport: airports[5], arrival_airport: airports[3]},
  {dep_time: Time.now, dep_date: Date.today + 11, duration: 120, departure_airport: airports[5], arrival_airport: airports[0]}, 
  {dep_time: Time.now, dep_date: Date.today + 90, duration: 140, departure_airport: airports[5], arrival_airport: airports[1]},
  {dep_time: Time.now, dep_date: Date.today + 40, duration: 190, departure_airport: airports[5], arrival_airport: airports[2]},
  {dep_time: Time.now, dep_date: Date.today + 50, duration: 150, departure_airport: airports[5], arrival_airport: airports[4]}, 
  {dep_time: Time.now, dep_date: Date.today + 13, duration: 130, departure_airport: airports[5], arrival_airport: airports[3]}
  ]
)
  