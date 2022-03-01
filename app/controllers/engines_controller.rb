class EnginesController < ApplicationController
  before_action :authenticate_user!
    layout "dashboard"

  before_action :set_engine, only: %i[ show edit update destroy ]

  # GET /gears or /engines.json
  def index
    @engines = Engine.all
  end

  # GET /gears/1 or /gears/1.json
  def show
  end

  # GET /gears/new
  def new
    @engine_categories = EngineCategory.all
    @parks = Park.all
    @engine = Engine.new
  end

  # GET /gears/1/edit
  def edit
    @engine_categories = EngineCategory.all
    @parks = Park.all
  end

  # POST /gears or /engines.json
  def create
    @engine = current_user.engines.build(engine_params)

    respond_to do |format|
      if @Engine.save
        @engines = Engine.all
        format.html { redirect_to @engine, notice: "Gear was successfully created." }
        format.json { render :show, status: :created, location: @engine }
        format.js
      else
        @engine_categories = EngineCategory.all
        @parks = Park.all

        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @engine.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /gears/1 or /gears/1.json
  def update
    respond_to do |format|
      if @engine.update(engine_params)
        @engines = Engine.all
        format.html { redirect_to @engine, notice: "Gear was successfully updated." }
        format.json { render :show, status: :ok, location: @engine }
        format.js
      else
        @engine_categories = EngineCategory.all
        @parks = Park.all
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @Engine.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @engine = Engine.find_by(uid: params[:gear_id])
    end

  # DELETE /gears/1 or /gears/1.json
  def destroy
    @Engine.destroy
    respond_to do |format|
      format.html { redirect_to gears_url, notice: "Gear was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engine
      @engine = Engine.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def engine_params
      params.require(:engine).permit(:engine_category_id, :brand, :engine_model, :manufacture_year, :park_id, :name, :chassis_number, :immatriculation_number, :color, :mileage, :fuel_type, :rental_price, :rental_time_unit, :status)
    end
end
