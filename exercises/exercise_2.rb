require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.select(id: 1)

@store2 = Store.select(id: 2)

Store.update(1, :name => 'Calgary')