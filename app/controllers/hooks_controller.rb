class HooksController < ApplicationController
  protect_from_forgery except: [:stripe]

  def stripe
    if is_payment_succeeded?
      advocate = retrieve_user

      advocate.increment_premium! unless advocate.nil?
    end

    head :ok, content_type: 'text/html'
  end

  private

  def retrieve_user
    customer_token = params.dig(:data, :object, :customer)
    return nil if customer_token.nil?

    User.where(stripe_token: customer_token).first
  end

  def is_payment_succeeded?
    params[:type] == 'invoice.payment_succeeded'
  end
end
