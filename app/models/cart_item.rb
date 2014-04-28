class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product

  def price
    quantity * product.price
  end
end
