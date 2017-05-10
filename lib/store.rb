class Store < ActiveRecord::Base
  validate :has_mens_or_womens?
  validates :name,
            presence: true
  validates :name,
            length: { minimum: 3 }
  validates :annual_revenue,
            numericality: { only_integer: true,
                            greater_than_or_equal_to: 0 }
  has_many :employees

  def has_mens_or_womens?
    if self.mens_apparel.blank? && self.womens_apparel.blank?
      errors[:base] << "Mens & Womens apparel can't be both blank"
    end
  end
end
