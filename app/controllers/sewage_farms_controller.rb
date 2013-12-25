class SewageFarmsController < ApplicationController
  before_action :set_sewage_farm, only: [:show, :edit, :update, :destroy]

  # GET /sewage_farms
  # GET /sewage_farms.json
  def index
    @sewage_farms = SewageFarm.all
  end

  # GET /sewage_farms/1
  # GET /sewage_farms/1.json
  def show
  end

  # GET /sewage_farms/new
  def new
    @sewage_farm = SewageFarm.new
  end

  # GET /sewage_farms/1/edit
  def edit
  end

  # POST /sewage_farms
  # POST /sewage_farms.json
  def create
    @sewage_farm = SewageFarm.new(sewage_farm_params)

    respond_to do |format|
      if @sewage_farm.save
        format.html { redirect_to @sewage_farm, notice: 'Sewage farm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sewage_farm }
      else
        format.html { render action: 'new' }
        format.json { render json: @sewage_farm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sewage_farms/1
  # PATCH/PUT /sewage_farms/1.json
  def update
    respond_to do |format|
      if @sewage_farm.update(sewage_farm_params)
        format.html { redirect_to @sewage_farm, notice: 'Sewage farm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sewage_farm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sewage_farms/1
  # DELETE /sewage_farms/1.json
  def destroy
    @sewage_farm.destroy
    respond_to do |format|
      format.html { redirect_to sewage_farms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sewage_farm
      @sewage_farm = SewageFarm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sewage_farm_params
      params.require(:sewage_farm).permit(:name)
    end
end
