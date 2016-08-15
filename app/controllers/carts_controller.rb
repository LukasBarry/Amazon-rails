class CartsController < ApplicationController

  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.create(user_id: current_user)
    if @cart.save
      redirect_to @cart
    else
      redirect_to request.referrer
    end
  end
  
end
