class FmsG16ShipmentsController < ApplicationController
  before_action :set_fms_g16_shipment, only: %i[ show edit update destroy ]

  # GET /fms_g16_shipments or /fms_g16_shipments.json
  def index
    @fms_g16_shipments = FmsG16Shipment.all
  end

  # GET /fms_g16_shipments/1 or /fms_g16_shipments/1.json
  def show
    @fms_g16_shipment = FmsG16Shipment.find(params[:id])
    @fms_g16_loads = @fms_g16_shipment.fms_g16_loads
  end

  # GET /fms_g16_shipments/new
  def new
    @fms_g16_routes = FmsG16Route.all
    @fms_g16_shipment = FmsG16Shipment.new
  end

  # GET /fms_g16_shipments/1/edit
  def edit
    @fms_g16_routes = FmsG16Route.all
    @fms_g16_shipment = FmsG16Shipment.new
  end

  # POST /fms_g16_shipments or /fms_g16_shipments.json
  def create
    @fms_g16_shipment = FmsG16Shipment.new(fms_g16_shipment_params)

    respond_to do |format|
      if @fms_g16_shipment.save
        logger.info @fms_g16_shipment.status
        if @fms_g16_shipment.status == 'Pending'
          user = current_fms_g16_user.email
          origin_location = @fms_g16_shipment.fms_g16_route.origin_location
          origin_latitude = @fms_g16_shipment.fms_g16_route.origin_latitude
          origin_longitude = @fms_g16_shipment.fms_g16_route.origin_longitude
          delivery_destination = @fms_g16_shipment.fms_g16_route.delivery_destination
          destination_latitude = @fms_g16_shipment.fms_g16_route.destination_latitude
          destination_longitude = @fms_g16_shipment.fms_g16_route.destination_longitude
          total_weight = 100
          @fms_g11_trip = FmsG11Trips.create(fms_g11_trips_params(origin_location, origin_longitude, origin_latitude,delivery_destination,
                                                                  destination_latitude, destination_longitude, total_weight, user))
          end

        format.html { redirect_to fms_g16_shipment_url(@fms_g16_shipment), notice: "Shipment was successfully created." }
        format.json { render :show, status: :created, location: @fms_g16_shipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fms_g16_shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fms_g16_shipments/1 or /fms_g16_shipments/1.json
  def update
    respond_to do |format|
      if @fms_g16_shipment.update(fms_g16_shipment_params)
        format.html { redirect_to fms_g16_shipment_url(@fms_g16_shipment), notice: "Shipment was successfully updated." }
        format.json { render :show, status: :ok, location: @fms_g16_shipment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fms_g16_shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fms_g16_shipments/1 or /fms_g16_shipments/1.json
  def destroy
    @fms_g16_shipment.destroy!

    respond_to do |format|
      format.html { redirect_to fms_g16_shipments_url, notice: "Fms g16 shipment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fms_g16_shipment
      @fms_g16_shipment = FmsG16Shipment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fms_g16_shipment_params
      # params.fetch(:fms_g16_shipment, {})
      params.require(:fms_g16_shipment).permit(:name, :start_date, :end_date, :fms_g16_route_id, :vehicle, :driver, :total_distance,
                                               :tracking_code, :total_drive_time, :status)

    end

  def fms_g11_trips_params(origin_location, origin_longitude, origin_latitude,delivery_destination,
                           destination_latitude, destination_longitude, total_weight, user)
    {
      t_start_date: params[:fms_g16_shipment][:start_date],
      t_end_date: params[:fms_g16_shipment][:end_date],
      t_trip_fromlocation: origin_location,
      t_trip_tolocation: delivery_destination,
      t_trip_fromlat: origin_latitude,
      t_trip_fromlog: origin_longitude,
      t_trip_tolat: destination_latitude,
      t_trip_tolog: destination_longitude,
      t_driver: params[:fms_g16_shipment][:driver],
      t_vehicle: params[:fms_g16_shipment][:vehicle],
      t_totalweight: total_weight,
      t_totaldistance: nil,
      t_totaldrivetime: nil,
      t_trip_status: params[:fms_g16_shipment][:status],
      t_trackingcode: params[:fms_g16_shipment][:tracking_code],
      t_created_by: user,
      t_created_date: Time.current,
      t_modified_date: Time.current,
    }

  end
end
