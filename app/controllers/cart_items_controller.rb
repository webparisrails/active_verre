class CartItemsController < ApplicationController
  def create
    unless current_user.present?
      return redirect_to user_session_path
    end
    @product = Product.find(params[:product_id])
    @cart = current_user.cart

    cart_item = @cart.cart_items.new(permitted_params[:cart_item])
    cart_item.product = @product
    if cart_item.save
      redirect_to root_path, notice: "Item added to the cart successfully ;)"
    else
      redirect_to @product, alert: "Error"
    end
  end

  def permitted_params
    params.permit(cart_item: [
      :quantity
    ])
  end
end