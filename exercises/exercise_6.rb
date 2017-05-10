require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Add some employees to stores
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sam", last_name: "Don", hourly_rate: 40)
@store2.employees.create(first_name: "Angie", last_name: "Wade", hourly_rate: 50)
@store3.employees.create(first_name: "Kit", last_name: "Muni", hourly_rate: 40)
@store3.employees.create(first_name: "Pat", last_name: "Vasi", hourly_rate: 55)
@store4.employees.create(first_name: "Venus", last_name: "Pope", hourly_rate: 43)
@store5.employees.create(first_name: "Hughes", last_name: "Ivans", hourly_rate: 55)
@store5.employees.create(first_name: "John", last_name: "Dope", hourly_rate: 48)
@store6.employees.create(first_name: "Pete", last_name: "Russell", hourly_rate: 60)

# example to output errors for store5 when creating employees
puts @store5.employees.map { |e| e.errors.inspect }
# example to reload databse
puts @store5.reload.employees
