require 'active_record'
require_relative 'lib/store'
require_relative 'lib/employee'

# Output messages from AR to STDOUT
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts "Establishing connection to database ..."
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  encoding: 'unicode',
  pool: 5,
  database: 'dd0g8jjf5k806s',
  username: 'awidipxgjksoce',
  password: 'xxx',
  host: 'ec2-174-129-21-42.compute-1.amazonaws.com',
  port: 5432,
  min_messages: 'error'
)
puts "CONNECTED"

print "Setting up Database (recreating tables) ..."

ActiveRecord::Schema.define do
  drop_table :stores
  drop_table :employees
  create_table :stores do |table|
    table.column :name, :string
    table.column :annual_revenue, :string
    table.column :mens_apparel, :boolean
    table.column :womens_apparel, :boolean
    table.timestamps
  end
  create_table :employees do |table|
    table.references :store
    table.column :first_name, :string
    table.column :last_name, :string
    table.column :hourly_rate, :integer
    table.timestamps
  end
end

puts "DONE"
