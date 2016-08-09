require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "assigns @product to a new Product" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
  end

  describe "POST #create" do
    it "creates a product" do
      post :create, product: FactoryGirl.attributes_for(:product)
      expect(Product.count).to eq(1)
      expect(response).to redirect_to(product_path(assigns[:product]))
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:product) {FactoryGirl.create(:product)}
    it "returns http success" do
      get :show, id: product
      expect(response).to have_http_status(:success)
    end
    it "assigns requested product to @product" do
      get :show, id: product
      expect(assigns(:product)).to eq(product)
    end
  end

  describe "GET #edit" do
    let(:product) {FactoryGirl.create(:product)}
    it "returns http success" do
      get :edit, id: product
      expect(response).to have_http_status(:success)
    end
    it "assigns requested product to @product" do
      get :edit, id: product
      expect(assigns(:product)).to eq(product)
    end
  end

  describe "PUT #update" do
    let(:product) {FactoryGirl.create(:product)}
    let(:product_params_hash) {FactoryGirl.attributes_for(:product, name: "Chromebook")}
    it "updates the attributes" do
      put :update, id: product, product: product_params_hash
      product.reload
      expect(product.name).to eql("Chromebook")
    end
    it "redirects_to show" do
      put :update, id: product, product: product_params_hash
      expect(response).to redirect_to(product)
    end
  end

  describe "DELETE #destroy" do
    let(:product) {FactoryGirl.create(:product)}
    it "deletes a product and redirects to the index page" do
      delete :destroy, id: product
      expect(response).to redirect_to(products_path)
    end
  end

end
