require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here
@store1.employees.create(first_name: "Brett", last_name: "Goss", hourly_rate: 10000)
@store2.employees.create(first_name: "Brett", last_name: "Goss", hourly_rate: 10000)
@store1.employees.create(first_name: "Chris", last_name: "P", hourly_rate: 10)
@store1.employees.create(first_name: "Aileen", last_name: "O", hourly_rate: 0.1)
@store1.employees.create(first_name: "Kim", last_name: "L", hourly_rate: 5)
