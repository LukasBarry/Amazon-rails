class LineItem < ActiveRecord::Base
  validates :cart, presence: true
  validates :product, presence: true
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
  
end
