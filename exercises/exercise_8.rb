require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 8"
puts "----------"

@store4.employees.create(first_name: "Elvis", last_name: "Chan", hourly_rate: 60)
# sample output to verify implementation of password
puts @store4.employees.each { |employee| puts "Store 4 - Employee Name: #{employee.first_name} #{employee.last_name} | Password: #{employee.password}"}
