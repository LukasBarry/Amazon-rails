require 'rails_helper'

RSpec.describe "products/new.html.erb", type: :view do
  it "renders the new action with the dom element" do
    @product = Product.new
    render
    expect(rendered).to have_content("New Product")
    expect(rendered).to have_selector(".form-control")
  end
end
