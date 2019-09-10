class SubscriptionsController < ApplicationController
  include StripeConcern

  before_action :authenticate_user!
  # before_action :only_advocates

  def new; end

  def create
    customer = create_or_retrieve_customer(current_user)

    begin
      Stripe::Subscription.create(customer: customer.id, items: [{ plan: 'premium-monthly'}])
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_subscription_path
    end
  end
end
