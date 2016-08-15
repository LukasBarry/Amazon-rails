class LineItem < ActiveRecord::Base
  validates :cart, presence: true
  validates :product, presence: true
  belongs_to :product
  belongs_to :cart
end
