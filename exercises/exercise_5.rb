require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum("annual_revenue")
puts "Total Revenue: #{total_revenue}"
puts "Average Annual Revenue: #{total_revenue / Store.count}"
number_of_successful_stores = Store.where("annual_revenue >= 1000000").count
puts "Number of successful stores: #{number_of_successful_stores}"
