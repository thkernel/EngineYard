class TechnicalVisitsController < ApplicationController
  before_action :set_technical_visit, only: %i[ show edit update destroy ]

  # GET /technical_visits or /technical_visits.json
  def index
    @technical_visits = TechnicalVisit.all
  end

  # GET /technical_visits/1 or /technical_visits/1.json
  def show
  end

  # GET /technical_visits/new
  def new
    @technical_visit = TechnicalVisit.new
  end

  # GET /technical_visits/1/edit
  def edit
  end

  # POST /technical_visits or /technical_visits.json
  def create
    @technical_visit = TechnicalVisit.new(technical_visit_params)

    respond_to do |format|
      if @technical_visit.save
        format.html { redirect_to technical_visit_url(@technical_visit), notice: "Technical visit was successfully created." }
        format.json { render :show, status: :created, location: @technical_visit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @technical_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technical_visits/1 or /technical_visits/1.json
  def update
    respond_to do |format|
      if @technical_visit.update(technical_visit_params)
        format.html { redirect_to technical_visit_url(@technical_visit), notice: "Technical visit was successfully updated." }
        format.json { render :show, status: :ok, location: @technical_visit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @technical_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technical_visits/1 or /technical_visits/1.json
  def destroy
    @technical_visit.destroy

    respond_to do |format|
      format.html { redirect_to technical_visits_url, notice: "Technical visit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technical_visit
      @technical_visit = TechnicalVisit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def technical_visit_params
      params.require(:technical_visit).permit(:uid)
    end
end
