require 'active_record'
require_relative 'store'
require_relative 'employee'

print "Establishing connection to database ..."
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database  => "db.sqlite"
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
ActiveRecord::Base.connection.execute("UPDATE sqlite_sequence SET seq = 0 WHERE name = 'stores';")
ActiveRecord::Base.connection.execute("UPDATE sqlite_sequence SET seq = 0 WHERE name = 'employees';")
puts "DONE"
