class CartsController < ApplicationController
  def show
    current_order = Order.find_by(user: current_user)
    @order_items = current_order.shopping_cart_items.map(&:item)
  end

  def edit
  end
end
