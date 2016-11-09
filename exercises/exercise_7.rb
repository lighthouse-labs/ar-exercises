require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter a store name!"
print "> "
store_name = gets.chomp
new_store = Store.create(name: store_name)
if new_store.valid?
  new_store.save
else
  new_store.errors.full_messages.each { |msg| puts msg }
end
