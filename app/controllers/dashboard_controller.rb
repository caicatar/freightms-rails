class DashboardController < ApplicationController
  before_action :authenticate_fms_g16_user!

  def index
    @shipments = FmsG16Shipment.all
    @loads = FmsG16Load.all
    @routes = FmsG16Route.all
  end

  def shipments
    @shipments_page = FmsG16Shipment.page(params[:page]).per(2)
    @shipments = FmsG16Shipment.all
  end

  def loads
    @loads = FmsG16Load.all
    @routes = FmsG16Route.all
    @shipments = FmsG16Shipment.all
  end

  def routes
    @routes = FmsG16Route.all
  end
end

