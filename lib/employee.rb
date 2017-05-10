class Employee < ActiveRecord::Base
  # automatically generate and assign password upon Employee creation
  before_create :gen_password

  belongs_to :store
  validates :first_name, :last_name,
            presence: true
  validates :hourly_rate,
            numericality: { only_integer: true,
                            greater_than_or_equal_to: 40,
                            less_than_or_equal_to: 200 }
  private
    def gen_password
      self.password = ([*('A'..'Z'),*('a'..'z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
    end

end
