require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@company_total = Store.sum("annual_revenue")
puts @company_total
@all = Store.where("id > 0")
puts @company_total / @all.length
@over1mil = Store.where("annual_revenue > 1000000")
puts @over1mil.length