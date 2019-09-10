module StripeConcern
  extend ActiveSupport::Concern

  protected

  # Try to retreive Stripe customer and create if not already registered
  # @params [User]
  # @return [Stripe::Customer]
  def create_or_retrieve_customer(user)
    customer = retrieve_stripe_customer(user)

    if customer.nil?
      customer = Stripe::Customer.create email: params[:stripeEmail], source: params[:stripeToken]
      user.update! stripe_token: customer.id
    end

    customer
  end

  private

  # @params [User]
  # @return [Stripe::Customer|Nil]
  def retrieve_stripe_customer(user)
    return nil if user.stripe_token.nil?

    begin
      customer = Stripe::Customer.retrieve user.stripe_token
      return customer
    rescue Stripe::InvalidRequestError
      # if stripe token is invalid, remove it!
      user.update! stripe_token: nil
      return nil
    end
  end
end