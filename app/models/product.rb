class Product < ActiveRecord::Base
  validates :name, :description, presence: true
  validates :stock, numericality: {greater_than_or_equal_to: 0}
  validates_format_of :price, with: /\A\d+\.?\d{0,2}\z/

  def self.promoted
    where promoted: true
  end

end
