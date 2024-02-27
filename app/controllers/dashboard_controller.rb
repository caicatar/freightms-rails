class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @shipments = Shipment.all
  end

  def shipments
    @shipments = Shipment.all
  end
end
