class PitTypesController < ApplicationController
  before_action :set_pit_type, only: [:show, :edit, :update, :destroy]

  # GET /pit_types
  # GET /pit_types.json
  def index
    @pit_types = PitType.all
  end

  # GET /pit_types/1
  # GET /pit_types/1.json
  def show
  end

  # GET /pit_types/new
  def new
    @pit_type = PitType.new
  end

  # GET /pit_types/1/edit
  def edit
  end

  # POST /pit_types
  # POST /pit_types.json
  def create
    @pit_type = PitType.new(pit_type_params)

    respond_to do |format|
      if @pit_type.save
        format.html { redirect_to @pit_type, notice: 'Pit type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pit_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @pit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pit_types/1
  # PATCH/PUT /pit_types/1.json
  def update
    respond_to do |format|
      if @pit_type.update(pit_type_params)
        format.html { redirect_to @pit_type, notice: 'Pit type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pit_types/1
  # DELETE /pit_types/1.json
  def destroy
    @pit_type.destroy
    respond_to do |format|
      format.html { redirect_to pit_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pit_type
      @pit_type = PitType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pit_type_params
      params.require(:pit_type).permit(:name)
    end
end
