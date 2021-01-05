require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.where(id: 1)

puts @store1.name

@store2 = Store.where(id: 2)

Store.update(1, :name => 'Calgary')