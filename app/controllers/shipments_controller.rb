class ShipmentsController < ApplicationController
  before_action :set_shipment, only: %i[ show edit update destroy ]

  # GET /shipments or /shipments.json
  def index
    @shipments = Shipment.all
    @warehouses = Warehouse.all
    @vehicles = Vehicle.all
    @warehouses = Warehouse.all
    @products = Product.all
  end

  # GET /shipments/1 or /shipments/1.json
  def show
  end

  # GET /shipments/new
  def new
    @shipment = Shipment.new
    @warehouses = Warehouse.all
    @vehicles = Vehicle.all
    @drivers = Driver.all
    @warehouses = Warehouse.all
    @products = Product.all
    @drivers = Driver.all
  end

  # GET /shipments/1/edit
  def edit
    @warehouses = Warehouse.all
    @vehicles = Vehicle.all
    @products = Product.all
    @drivers = Driver.all
  end

  # POST /shipments or /shipments.json
  def create
    @shipment = Shipment.new
    @warehouses = Warehouse.all
    @vehicles = Vehicle.all
    @drivers = Driver.all
    @warehouses = Warehouse.all
    @products = Product.all
    @drivers = Driver.all
    @shipment = Shipment.new(shipment_params)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to shipment_url(@shipment), notice: "Shipment was successfully created." }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipments/1 or /shipments/1.json
  def update
    respond_to do |format|
      if @shipment.update(shipment_params)
        format.html { redirect_to shipment_url(@shipment), notice: "Shipment was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1 or /shipments/1.json
  def destroy
    @shipment.destroy!

    respond_to do |format|
      format.html { redirect_to shipments_url, notice: "Shipment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_params
      params.require(:shipment).permit(:from_warehouse_id, :to_warehouse_id, :product_id, :vehicle_id, :driver_id)

    end
end
