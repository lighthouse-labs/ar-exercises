class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  # validates :mens_apparel, :womens_apparel, presence: true
  # why did this break ex. 3
end
