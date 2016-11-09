class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :annual_revenue, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :has_apparel?
end

def has_apparel?
  if !(:mens_apparel || :womens_apparel)
    errors.add("Please specify the apparel carried.")
  end
end
