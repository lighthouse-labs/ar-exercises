require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Loading a subset of stores
# Create 3 more stores
@store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
@store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@store6 = Store.create(name: "Yaletown",annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)
puts @mens_stores

# Output the name from @mens_stores
@mens_stores.each { |mens_store| puts mens_store.name }

# Stores that carry women's apparel and annual_revenue < $1M
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
puts @womens_stores
