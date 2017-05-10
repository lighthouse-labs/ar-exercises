require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# To test out validation errors

# Stores Creation Attempt (should not be added)
@store7 = Store.create(name: "London")

# if errors, throw error message immediately
# @store7 = Store.create!(name: "London")

# false if store7 is not saved
puts "Is '@store7' Persisted? #{@store7.persisted?}"

# output store7 name only when there's no errors
if @store7.errors.any?
  puts "\n@store7 errors:"
  puts @store7.errors.to_a
else
  puts "@store7 names:"
  puts @store7.name
end

# output all store names for verfication
puts "\nAll stores:"
puts Store.pluck(:name).to_a
# same as puts Store.all.maps(&:name).to_a

puts "\nBefore Creating New Employees"
puts @store5.employees.each { |employee| puts "Store 5: #{employee.first_name} #{employee.last_name}"}
puts @store6.employees.each { |employee| puts "Store 6: #{employee.first_name} #{employee.last_name}"}
# Employees Creation (should not be added)
employee1 = @store5.employees.create(first_name: "Another", last_name: "Guy", hourly_rate: 30)
employee2 = @store6.employees.create(last_name: "Gal", hourly_rate: 50)

# Verification
puts "\nAfter Attempt to Create New Employees"
puts "Is 'employee1' Persisted? #{employee1.persisted?}"
puts "Is 'employee2' Persisted? #{employee2.persisted?}"

puts @store5.reload.employees.each { |employee| puts "Store 5 Employees: #{employee.first_name} #{employee.last_name}" }
# alternate way to display directly from DB
Employee.where(store_id: @store5.id).each { |employee| puts "Store 5 Employees: #{employee.first_name} #{employee.last_name}"}
# puts Employee.where(store_id: @store5.id).pluck(:first_name)

puts @store6.reload.employees.each { |employee| puts "Store 6 Employees: #{employee.first_name} #{employee.last_name}" }
