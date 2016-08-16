class Product < ActiveRecord::Base
  validates :name, :description, presence: true
  validates :stock, numericality: {greater_than_or_equal_to: 0}
  validates_format_of :price, with: /\A\d+\.?\d{0,2}\z/
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  def self.promoted
    where promoted: true
  end

  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end

end
