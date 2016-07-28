class CartsController < ApplicationController
  def index
    @current_order = Order.find_by(user: current_user)
    @order_items = @current_order.shopping_cart_items.map(&:item)
  end

  def remove_from_cart
    @dish = Dish.find(params[:dish_id])
    @current_order = Order.find_by(user: current_user)
    @current_order.remove(@dish, 1)
    flash[:notice] = 'Successfully removed an item from the cart'
    redirect_to carts_url
  end
end
