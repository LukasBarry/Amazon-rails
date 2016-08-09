require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "name" do
    it "cannot be empty" do
      macbook = FactoryGirl.build(:product, name: '')
      expect(macbook).to_not be_valid
    end
  end

  describe "stock" do
    it "cannot be nil" do
      macbook = FactoryGirl.build(:product, stock: nil)
      expect(macbook).to_not be_valid
    end
    it "cannot be negative" do
      macbook = FactoryGirl.build(:product, stock: -1)
      expect(macbook).to_not be_valid
    end
  end

  describe "description" do
    it "cannot be nil" do
      macbook = FactoryGirl.build(:product, description: nil)
      expect(macbook).to_not be_valid
    end
  end

  describe "price" do
    it "cannot have 3 decimals" do
      macbook = FactoryGirl.build(:product, price: 78.456)
      expect(macbook).to_not be_valid
    end
  end

  describe ".promoted" do
    it "returns products that are marked true for front page" do
      product_list = FactoryGirl.create_list(:product, 2, promoted: true)
      nonproduct_list = FactoryGirl.create_list(:product, 2, promoted: false)
      expect(Product.promoted).to eq(product_list)
    end
  end

end
