class ChargesController < ApplicationController
    include StripeConcern

  # Stripe form to make a new payment
    def new
    end

    def create
      # Amount in cents
      @amount = 500

      # get customer from POST params
      customer = create_or_retrieve_customer(current_user)
      # customer = Stripe::Customer.create(
      #   email: params[:stripeEmail],
      #   source: params[:stripeToken]
      # )

      begin
        charge = Stripe::Charge.create(
          customer: customer.id,
          amount: @amount,
          description: 'Rails Stripe customer',
          currency: 'eur'
        )
        current_user.increment_premium!
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
      end
    end
end
