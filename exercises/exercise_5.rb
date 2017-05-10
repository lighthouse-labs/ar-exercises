require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# total revenue for the entire company (all stores)
Store.sum(:annual_revenue)

# output the average annual revenue for all stores
puts Store.sum(:annual_revenue) / Store.count

# Output the number of stores that are generating $1M or more in annual sales
Store.where("annual_revenue > ?", 1000000).size
