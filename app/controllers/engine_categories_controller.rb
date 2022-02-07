class EngineCategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_engine_category, only: %i[ show edit update destroy ]
  layout "dashboard"

  # GET /engine_categories or /engine_categories.json
  def index
    @engine_categories = EngineCategory.all
  end

  # GET /engine_categories/1 or /engine_categories/1.json
  def show
  end

  # GET /engine_categories/new
  def new
    @engine_category = EngineCategory.new
  end

  # GET /engine_categories/1/edit
  def edit
    puts "ENGINE CAT: #{@engine_category.inspect}"
  end

  # POST /engine_categories or /engine_categories.json
  def create
    @engine_category = current_user.engine_categories.build(engine_category_params)

    respond_to do |format|
      if @engine_category.save
        @engine_categories = EngineCategory.all

        format.html { redirect_to @engine_categories, notice: "Gear type was successfully created." }
        format.json { render :show, status: :created, location: @engine_category }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @engine_category.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /engine_categories/1 or /engine_categories/1.json
  def update
    respond_to do |format|
      if @engine_category.update(engine_category_params)
        @engine_categories = EngineCategory.all
        
        format.html { redirect_to @engine_category, notice: "Gear type was successfully updated." }
        format.json { render :show, status: :ok, location: @engine_category }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @engine_category.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @engine_category = EngineCategory.find_by(uid: params[:engine_category_id])
    end

  # DELETE /engine_categories/1 or /engine_categories/1.json
  def destroy
    @engine_category.destroy
    respond_to do |format|
      format.html { redirect_to engine_categories_url, notice: "Gear type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engine_category
      @engine_category = EngineCategory.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def engine_category_params
      params.require(:engine_category).permit(:name)
    end
end
