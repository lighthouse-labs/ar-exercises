require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
Store.create(name: "Burnaby",
            annual_revenue: 3000000,
            mens_apparel: true,
            womens_apparel: true
            )
Store.create(name: "Richmond",
            annual_revenue: 1260000,
            mens_apparel: false,
            womens_apparel: true
            )
Store.create(name: "Gastown",
            annual_revenue: 190000,
            mens_apparel: true,
            womens_apparel: false
            )

puts Store.count