require "spec_helper"

describe "routes for Products" do
  let(:product) {FactoryGirl.create(:product)}
  
  it "routes /products to products#index" do
    expect(get: "/products").to route_to(controller: "products", action: "index")
  end

  it "routes /products/id to products#show" do
    expect(get: "/products/#{product.id}").to route_to(controller: "products", action: "show", id: "#{product.id}")
  end

  it "routes /products/new to products#new" do
    expect(get: "/products/new").to route_to(controller: "products", action: "new")
  end

  it "routes /products/:id/edit to products#edit" do
    expect(get: "/products/#{product.id}/edit").to route_to(controller: "products", action: "edit", id: "#{product.id}")
  end

  it "delete routes /products/:id to products#destroy" do
    expect(delete: "/products/#{product.id}").to route_to(controller: "products", action: "destroy", id: "#{product.id}")
  end

  it "create routes /products to products#create" do
    expect(post: "/products").to route_to(controller: "products", action: "create")
  end
end
