require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_rev = Store.sum(:annual_revenue)
@average_rev = @total_rev / Store.count
@count = Store.where('annual_revenue < ?', 1000000).count
puts "total: #{@total_rev} average: #{@average_rev}"
puts "count: #{@count}"
