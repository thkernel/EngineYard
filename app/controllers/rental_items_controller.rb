class RentalItemsController < ApplicationController
  before_action :set_rental_item, only: %i[ show edit update destroy ]

  # GET /rental_items or /rental_items.json
  def index
    @rental_items = RentalItem.all
  end

  # GET /rental_items/1 or /rental_items/1.json
  def show
  end

  # GET /rental_items/new
  def new
    @rental_item = RentalItem.new
  end

  # GET /rental_items/1/edit
  def edit
  end

  # POST /rental_items or /rental_items.json
  def create
    @rental_item = RentalItem.new(rental_item_params)

    respond_to do |format|
      if @rental_item.save
        format.html { redirect_to @rental_item, notice: "Rental item was successfully created." }
        format.json { render :show, status: :created, location: @rental_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rental_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_items/1 or /rental_items/1.json
  def update
    respond_to do |format|
      if @rental_item.update(rental_item_params)
        format.html { redirect_to @rental_item, notice: "Rental item was successfully updated." }
        format.json { render :show, status: :ok, location: @rental_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rental_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_items/1 or /rental_items/1.json
  def destroy
    @rental_item.destroy
    respond_to do |format|
      format.html { redirect_to rental_items_url, notice: "Rental item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_item
      @rental_item = RentalItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rental_item_params
      params.require(:rental_item).permit(:uid, :rental_id)
    end
end
