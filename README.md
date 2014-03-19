# AR Exercise Repo

## Instructions

### Setup

1. Create a new PG database on heroku.
2. Grab (copy) it's connection information ([but this time for ActiveRecord](http://d.pr/i/tjta/1qrbx7p9))
3. Paste the information into the `establish_connection` method call in `setup.rb` so that AR can connect to *your* database. (Note: the format that heroku gives you needs to be modified a bit as it is not ruby code. Ie: add quotes, commas etc to make it into a ruby hash format)
4. Run `bundle install` (we're using Bundler) to install the gems
5. Run the first exercise file to make sure the database connection is working: `ruby exercises/exercise_1.rb`. It should just output "Exercise 1" at the end, since you don't yet have any code in there.

### Running Exercises

Complete the exercises by modify the appropriate `exercises/exercise_*.rb` file and run the exercise using the `ruby` command.

Example:
    ruby exercises/exercise_1.rb

Follow the instructions to work on the exercises within the `exercises` folder.

Remember to `git commit` (and `git push`) at logical steps, like at the end of every exercise.

**Note:** You do not need to / should not comment out your code in each exercise as you move on to the next one. The exercises in this assignment are meant to build on and continue from the previous ones. That's why you see them requiring the previous ones.
