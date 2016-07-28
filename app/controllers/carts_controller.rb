class CartsController < ApplicationController
  def show
    current_order = Order.find_by(user: current_user)
    @order_subtotal = current_order.subtotal
    @order_taxes = current_order.taxes
    @order_total = current_order.total
    @order_items = current_order.shopping_cart_items.map(&:item)
  end
end
