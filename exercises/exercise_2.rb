require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find(1)

@store2 = Store.where(id: 2).first

Store.update(1, :name => 'Calgary')