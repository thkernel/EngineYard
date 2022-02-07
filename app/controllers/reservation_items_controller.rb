class ReservationItemsController < ApplicationController
  before_action :set_reservation_item, only: %i[ show edit update destroy ]

  # GET /reservation_items or /reservation_items.json
  def index
    @reservation_items = ReservationItem.all
  end

  # GET /reservation_items/1 or /reservation_items/1.json
  def show
  end

  # GET /reservation_items/new
  def new
    @reservation_item = ReservationItem.new
  end

  # GET /reservation_items/1/edit
  def edit
  end

  # POST /reservation_items or /reservation_items.json
  def create
    @reservation_item = ReservationItem.new(reservation_item_params)

    respond_to do |format|
      if @reservation_item.save
        format.html { redirect_to @reservation_item, notice: "Reservation item was successfully created." }
        format.json { render :show, status: :created, location: @reservation_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservation_items/1 or /reservation_items/1.json
  def update
    respond_to do |format|
      if @reservation_item.update(reservation_item_params)
        format.html { redirect_to @reservation_item, notice: "Reservation item was successfully updated." }
        format.json { render :show, status: :ok, location: @reservation_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservation_items/1 or /reservation_items/1.json
  def destroy
    @reservation_item.destroy
    respond_to do |format|
      format.html { redirect_to reservation_items_url, notice: "Reservation item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation_item
      @reservation_item = ReservationItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_item_params
      params.require(:reservation_item).permit(:uid, :reservation_id)
    end
end
