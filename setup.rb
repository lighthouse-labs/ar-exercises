require 'pry' # incase you want to use binding.pry
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

puts "Setting up Database (recreating tables) ..."

ActiveRecord::Schema.define do
  drop_table :stores if ActiveRecord::Base.connection.table_exists?(:stores)
  drop_table :employees if ActiveRecord::Base.connection.table_exists?(:employees)
  create_table :stores do |t|
    t.column :name, :string
    t.column :annual_revenue, :integer
    t.column :mens_apparel, :boolean
    t.column :womens_apparel, :boolean
    t.timestamps
  end
  create_table :employees do |table|
    table.references :store
    table.column :first_name, :string
    table.column :last_name, :string
    table.column :hourly_rate, :integer
    table.timestamps
  end
end

puts "Setup DONE"
