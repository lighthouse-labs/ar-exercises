require_relative 'database'

puts "Running Exercises"

(1..4).each do |i|
  require_relative "exercises/exercise_#{i}"
end

