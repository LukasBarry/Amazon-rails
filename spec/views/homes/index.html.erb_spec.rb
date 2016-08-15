require 'rails_helper'

RSpec.describe "homes/index.html.erb", type: :view do
  let(:promoted_products) {FactoryGirl.build_stubbed_list(:product, 3, promoted: true)}
  let(:non_promoted_products) {FactoryGirl.build_stubbed_list(:product, 3, promoted: false)}
  it "renders #index with the correct dom elements" do
    assign(:products, promoted_products)
    render
    expect(rendered).to have_content("Welcome to Wally World")
  end
  it "renders #index with the correct products" do
    assign(:products, promoted_products)
    render
    promoted_products.each do |product|
      expect(rendered).to have_content(product.name)
      expect(rendered).to have_selector("#myModal_#{product.id}")
    end
  end
end
