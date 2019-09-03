class Admin::PurchasesController < ApplicationController
before_action :authenticate_admin!

  def index
    @purchases = Order.all
  end
  
end
