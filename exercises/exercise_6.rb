require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Ross", hourly_rate: 60000)
@store1.employees.create(first_name: "Kurt", last_name: "Russell", hourly_rate: 100)

@store2.employees.create(first_name: "Rufus", last_name: "Hewbringer", hourly_rate: 60)
@store2.employees.create(first_name: "Busta", last_name: "Chimes", hourly_rate: 60)
@store2.employees.create(first_name: "Pria", last_name: "Mander", hourly_rate: 60)
