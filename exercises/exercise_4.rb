require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# find all users named David who are Code Artists and sort by created_at in reverse chronological order
# users = User.where(name: 'David', occupation: 'Code Artist').order(created_at: :desc)


# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
puts Store.count

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { |c| puts "#{c.name} #{c.annual_revenue}"}

puts "@@@@@"

@womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")
# @womens_stores = Store.where('womens_apparel = ? and annual_revenue < ?', true, 1000000)

p @womens_stores

@womens_stores.each { |s| puts "#{s.name} #{s.annual_revenue}" }





