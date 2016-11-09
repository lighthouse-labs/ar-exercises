require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
store = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true);
store = Store.create(name: 'Richmond', annual_revenue: 126000, mens_apparel: true)
store = Store.create(name: 'Gastown', annual_revenue: 190000, womens_apparel: true)
store.save
puts Store.count
