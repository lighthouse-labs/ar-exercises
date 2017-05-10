require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Find store 1 and 2 and delete store 1
@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.name = "North Vancouver"
