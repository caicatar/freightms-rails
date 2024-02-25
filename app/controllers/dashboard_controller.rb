class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def orders
    @orders = Order.all
  end
end
