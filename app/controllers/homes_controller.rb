class HomesController < ApplicationController
  def index
    @products = Product.promoted
  end
end
