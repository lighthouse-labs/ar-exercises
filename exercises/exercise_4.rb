require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(:name => 'Surrey', :annual_revenue => 224000, :mens_apparel => false, :womens_apparel => true)

Store.create(:name => 'Whistler', :annual_revenue => 1900000, :mens_apparel => true, :womens_apparel => false)

Store.create(:name => 'Yaletown', :annual_revenue => 190000, :mens_apparel => true, :womens_apparel => true)

@mens_apparel = Store.where("mens_apparel = true")


@mens_apparel.each { |x| puts x.name }

@under1mil = Store.where(["womens_apparel = ? and annual_revenue < ?", "true", "000000"])