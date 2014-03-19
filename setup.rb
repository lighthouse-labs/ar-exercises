require 'active_record'
require_relative 'lib/store'
require_relative 'lib/employee'

print "Establishing connection to database ..."
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  encoding: 'unicode',
  pool: 5,
  database: 'dd0g8jjf5k806s',
  username: 'awidipxgjksoce',
  password: '-PqtRdd6LbLynv9vcNg4YHTm7T',
  host: 'ec2-174-129-21-42.compute-1.amazonaws.com',
  port: 5432
)
puts "CONNECTED"

print "Setting up Database (if needed) ..."

ActiveRecord::Schema.define do
  unless ActiveRecord::Base.connection.table_exists? 'stores'
    create_table :stores do |table|
      table.column :name, :string
      table.column :annual_revenue, :string
      table.column :mens_apparel, :boolean
      table.column :womens_apparel, :boolean
      table.timestamps
    end
  end
  unless ActiveRecord::Base.connection.table_exists? 'employees'
    create_table :employees do |table|
      table.references :store
      table.column :first_name, :string
      table.column :last_name, :string
      table.column :hourly_rate, :integer
      table.timestamps
    end
  end
end

puts "DONE"

print "Clearing Database (start fresh everytime) ..."
Store.delete_all
Employee.delete_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE stores_id_seq RESTART WITH 1;")
ActiveRecord::Base.connection.execute("ALTER SEQUENCE employees_id_seq RESTART WITH 1;")
puts "DONE"
