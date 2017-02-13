# Active Record Exercises

## Introduction

You'll find that this project has two Active Record "models" (classes):

1. Store
2. Employee

This means that there is a `stores` table and an `employees` table in the database that it is using. Since we are using an ORM, we just use the two ruby classes and their instances to manage (CRUD) that data.

We'll be modifying this database via Active Record only. The `setup.rb` file already defines the database structure so you _don't need_ to create anything in the database using SQL manually.

That said, feel free to connect to your Postgres database using `psql` or pgAdmin so that you can see what's in the database.

## Instructions

### Setup

1. Create a new Postgres database. Use `psql postgres` to connect to the database server. Use `create database ar_exercises;` to create the database.
2. Take a look at the `establish_connection` method call in `setup.rb`. This will allow Active Record to connect to *your* Postgres database. If you are using vagrant, you should not need to make any changes here.
3. Run `bundle install` to install the gems.
4. Run the first exercise file to make sure the database connection is working: `ruby exercises/exercise_1.rb`. It should just output "Exercise 1" at the end, since you don't yet have any code in there.

### Running Exercises

Complete the exercises by modifying the appropriate `exercises/exercise_*.rb` file and run the exercise using the `ruby` command.

Example:

    ruby exercises/exercise_1.rb

Follow the instructions to work on the exercises within the `exercises` folder. Each exercise is to be completed in it's appropriate file.

**IMPORTANT:**

* Remember to `git commit` (and `git push`) at logical steps, like at the end of every exercise.
* You do not need to / should not comment out your code in each exercise as you move on to the next one. The exercises in this assignment are meant to build on and continue from the previous ones. That's why you see them requiring the previous ones.
* The setup ruby script actually drops and recreates the db tables with every run of the exercise. This is of course not practical in most real apps, because the data is usually meant to stay long term.

You can work with the models with irb by running

    irb -r './setup.rb'

## Exercises

### Exercise 1: Create 3 stores

1. Use Active Record's `create` class method multiple times to create 3 stores in the database:
  * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
  * Richmond (annual_revenue of 1260000 carries women's apparel only)
  * Gastown (annual_revenue of 190000 carries men's apparel only)
2. Output (`puts`) the number of the stores using ActiveRecord's `count` method, to ensure that there are three stores in the database.

### Exercise 2: Update the first store

1. Load the first store (with `id = 1`) from the database and assign it to an instance variable `@store1`.
2. Load the second store from the database and assign it to `@store2`.
3. Update the first store (`@store1`) instance in the database. (Change its name or something.)

### Exercise 3: Delete the third store

1. Load the third store (into `@store3`) as you did the other two before.
2. Using Active Record's `destroy` method, delete the store from the database.
3. Verify that the store has been deleted by again outputting (`puts`ing) the `count` (as you did in Exercise 1.)

### Exercise 4: Loading a subset of stores

1. Borrowing and modifying the code from Exercise one, create 3 more stores:
  * Surrey (annual_revenue of 224000, carries women's apparel only)
  * Whistler (annual_revenue of 1900000 carries men's apparel only)
  * Yaletown (annual_revenue of 430000 carries men's and women's apparel)
2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
3. Loop through each of these stores and output their name and annual revenue on each line.
4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

### Exercise 5: Calculations

1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
2. On the next line, also output the average annual revenue for all stores.
3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

### Exercise 6: One-to-many association

We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

Let's tell Active Record that these two tables are in fact related via the `store_id` column.

1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
2. Add the following code directly inside the Employee model (class): `belongs_to :store`
3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.

### Exercise 7: Validations for both models

1. Add validations to two models to enforce the following business rules:
  * Employees must always have a first name present
  * Employees must always have a last name present
  * Employees have a hourly_rate that is a number (integer) between 40 and 200
  * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  * Stores must always have a name that is a minimum of 3 characters
  * Stores have an annual_revenue that is a number (integer) that must be 0 or more
  * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)
2. Ask the user for a store name (store it in a variable)
3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
