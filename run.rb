require_relative 'database'

puts "Running Exercises"

(1..7).each do |i|
  require_relative "exercises/exercise_#{i}"
end

