class PaymentsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :redirect_to_cart, only: [:new, :create], if: :cart_already_paid

  def create
    Stripe.api_key = ENV['STRIPE_SK']
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => @cart.price_in_cents, # amount in cents, again
        :currency => "eur",
        :card => token,
        :description => current_user.email
      )
      @cart.was_paid!
      Notifications.cart_confirmation(@cart).deliver
      redirect_to @cart
    rescue Stripe::CardError => e
      # The card has been declined
      render text: e
    end
  end

  private

  def redirect_to_cart
    redirect_to @cart
  end

  def cart_already_paid
    @cart = Cart.find(params[:cart_id])
    @cart.already_paid?
  end
end
