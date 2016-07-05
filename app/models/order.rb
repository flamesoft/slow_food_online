class Order < ActiveRecord::Base
  acts_as_shopping_cart_using :order_item
  belongs_to :user
end
