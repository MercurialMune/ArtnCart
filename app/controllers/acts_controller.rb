class ActsController < ApplicationController
  before_action :redirect_if_not_premium, only: %i[index]
  
  private

  def redirect_if_not_premium
    redirect_to root_path if current_user.nil? or current_user.premium_until < DateTime.now
  end
end
