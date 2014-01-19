class WaterCounterTypesController < ApplicationController
  before_action :set_water_counter_type, only: [:show, :edit, :update, :destroy]

  # GET /water_counter_types
  # GET /water_counter_types.json
  def index
    @water_counter_types = WaterCounterType.all
  end

  # GET /water_counter_types/1
  # GET /water_counter_types/1.json
  def show
  end

  # GET /water_counter_types/new
  def new
    @water_counter_type = WaterCounterType.new
  end

  # GET /water_counter_types/1/edit
  def edit
  end

  # POST /water_counter_types
  # POST /water_counter_types.json
  def create
    @water_counter_type = WaterCounterType.new(water_counter_type_params)

    respond_to do |format|
      if @water_counter_type.save
        format.html { redirect_to @water_counter_type, notice: 'Water counter type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @water_counter_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @water_counter_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_counter_types/1
  # PATCH/PUT /water_counter_types/1.json
  def update
    respond_to do |format|
      if @water_counter_type.update(water_counter_type_params)
        format.html { redirect_to @water_counter_type, notice: 'Water counter type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @water_counter_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_counter_types/1
  # DELETE /water_counter_types/1.json
  def destroy
    @water_counter_type.destroy
    respond_to do |format|
      format.html { redirect_to water_counter_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_counter_type
      @water_counter_type = WaterCounterType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_counter_type_params
      params.require(:water_counter_type).permit(:name)
    end
end
