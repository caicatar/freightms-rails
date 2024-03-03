class FmsG16LoadsController < ApplicationController
  before_action :set_fms_g16_load, only: %i[ show edit update destroy ]

  # GET /fms_g16_loads or /fms_g16_loads.json
  def index
    @fms_g16_loads = FmsG16Load.all
  end

  # GET /fms_g16_loads/1 or /fms_g16_loads/1.json
  def show
    @fms_g16_routes = FmsG16Route.all
    @fms_g16_orders = FmsG16Order.all
    @fms_g16_shipments = FmsG16Shipment.all
    @fms_g16_load = FmsG16Load.find(params[:id])
  end

  # GET /fms_g16_loads/new
  def new
    @fms_g16_routes = FmsG16Route.all
    @fms_g16_shipments = FmsG16Shipment.all
    @fms_g16_load = FmsG16Load.new
  end

  # GET /fms_g16_loads/1/edit
  def edit
    @fms_g16_routes = FmsG16Route.all
    @fms_g16_shipments = FmsG16Shipment.all
  end

  # POST /fms_g16_loads or /fms_g16_loads.json
  def create
    @fms_g16_load = FmsG16Load.new(fms_g16_load_params)

    respond_to do |format|
      if @fms_g16_load.save
        format.html { redirect_to fms_g16_load_url(@fms_g16_load), notice: "Load was successfully created." }
        format.json { render :show, status: :created, location: @fms_g16_load }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fms_g16_load.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fms_g16_loads/1 or /fms_g16_loads/1.json
  def update
    respond_to do |format|
      if @fms_g16_load.update(fms_g16_load_params)
        format.html { redirect_to fms_g16_load_url(@fms_g16_load), notice: "Load was successfully updated." }
        format.json { render :show, status: :ok, location: @fms_g16_load }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fms_g16_load.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fms_g16_loads/1 or /fms_g16_loads/1.json
  def destroy
    @fms_g16_load.destroy!

    respond_to do |format|
      format.html { redirect_to fms_g16_loads_url, notice: "Load was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fms_g16_load
      @fms_g16_load = FmsG16Load.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fms_g16_load_params
      # params.fetch(:fms_g16_load, {})
      params.require(:fms_g16_load).permit(:name, :fms_g16_route_id, :fms_g16_shipment_id, :total_price, :total_fee, :total_weight)

    end
end
