class FmsG16ShipmentsController < ApplicationController
  before_action :set_fms_g16_shipment, only: %i[ show edit update destroy ]

  # GET /fms_g16_shipments or /fms_g16_shipments.json
  def index
    @fms_g16_shipments = FmsG16Shipment.all
  end

  # GET /fms_g16_shipments/1 or /fms_g16_shipments/1.json
  def show
    @fms_g16_loads = FmsG16Load.all
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
end
