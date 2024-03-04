class FmsG16RoutesController < ApplicationController
  before_action :set_fms_g16_route, only: %i[ show edit update destroy ]

  # GET /fms_g16_routes or /fms_g16_routes.json
  def index
    @fms_g16_routes = FmsG16Route.all
  end

  # GET /fms_g16_routes/1 or /fms_g16_routes/1.json
  def show
  end

  # GET /fms_g16_routes/new
  def new
    @fms_g16_route = FmsG16Route.new
  end

  # GET /fms_g16_routes/1/edit
  def edit
  end

  # POST /fms_g16_routes or /fms_g16_routes.json
  def create
    @fms_g16_route = FmsG16Route.new(fms_g16_route_params)

    respond_to do |format|
      if @fms_g16_route.save
        format.html { redirect_to fms_g16_route_url(@fms_g16_route), notice: "Routes was successfully created." }
        format.json { render :show, status: :created, location: @fms_g16_route }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fms_g16_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fms_g16_routes/1 or /fms_g16_routes/1.json
  def update
    respond_to do |format|
      if @fms_g16_route.update(fms_g16_route_params)
        format.html { redirect_to fms_g16_route_url(@fms_g16_route), notice: "Routes was successfully updated." }
        format.json { render :show, status: :ok, location: @fms_g16_route }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fms_g16_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fms_g16_routes/1 or /fms_g16_routes/1.json
  def destroy
    @fms_g16_route.destroy!

    respond_to do |format|
      format.html { redirect_to fms_g16_routes_url, notice: "Route was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fms_g16_route
      @fms_g16_route = FmsG16Route.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fms_g16_route_params
      # params.fetch(:fms_g16_route, {})
        params.require(:fms_g16_route).permit(:name, :origin_location, :delivery_destination, :origin_latitude, :origin_longitude, :destination_latitude, :destination_longitude, :distance, :estimated_time)
    end
end
