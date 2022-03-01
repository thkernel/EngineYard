class MaintenancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_maintenance, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET /maintenances
  # GET /maintenances.json
  def index
    @maintenances = Maintenance.all
  end

  # GET /maintenances/1
  # GET /maintenances/1.json
  def show
  end

  # GET /maintenances/new
  def new
    @maintenance_types = MaintenanceType.all
    @maintenance = Maintenance.new
  end

  # GET /maintenances/1/edit
  def edit
  end

  # POST /maintenances
  # POST /maintenances.json
  def create
    @maintenance = current_user.maintenances.build(maintenance_params)

    respond_to do |format|
      if @maintenance.save
        @maintenances = Maintenance.all

        format.html { redirect_to @maintenance, notice: 'Maintenance was successfully created.' }
        format.json { render :show, status: :created, location: @maintenance }
        format.js
      else
        format.html { render :new }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /maintenances/1
  # PATCH/PUT /maintenances/1.json
  def update
    respond_to do |format|
      if @maintenance.update(maintenance_params)
        @maintenances = Maintenance.all

        format.html { redirect_to @maintenance, notice: 'Maintenance was successfully updated.' }
        format.json { render :show, status: :ok, location: @maintenance }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
    @maintenance = Maintenance.find_by(uid: params[:maintenance_id])
  end

  # DELETE /maintenances/1
  # DELETE /maintenances/1.json
  def destroy
    @maintenance.destroy
    respond_to do |format|
      format.html { redirect_to maintenances_url, notice: 'Maintenance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance
      @maintenance = Maintenance.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maintenance_params
      params.require(:maintenance).permit(:maintenance_type_id, :uid, :fee, :service_provider,  :description)
    end
end
