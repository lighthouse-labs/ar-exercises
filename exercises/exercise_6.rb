require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Michael", last_name: "Jordon", hourly_rate: 25)
@store1.employees.create(first_name: "Albert", last_name: "Einstien", hourly_rate: 60)
@store1.employees.create(first_name: "Bill", last_name: "Gates", hourly_rate: 42)
@store2.employees.create(first_name: "Billy", last_name: "Bob", hourly_rate: 34)
@store2.employees.create(first_name: "John", last_name: "Johnson", hourly_rate: 22)
@store2.employees.create(first_name: "Jimbo", last_name: "Slice", hourly_rate: 29)