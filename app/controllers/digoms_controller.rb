class DigomsController < ApplicationController
  before_action :set_digom, only: [:show, :edit, :update, :destroy]

  # GET /digoms
  # GET /digoms.json
  def index
    @digoms = Digom.all
  end

  # GET /digoms/1
  # GET /digoms/1.json
  def show
  end

  # GET /digoms/new
  def new
    @digom = Digom.new
  end

  # GET /digoms/1/edit
  def edit
  end

  # POST /digoms
  # POST /digoms.json
  def create
    @digom = Digom.new(digom_params)

    respond_to do |format|
      if @digom.save
        format.html { redirect_to digoms_url }
      else
        format.html { render action: 'new' }
        format.json { render json: @digom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /digoms/1
  # PATCH/PUT /digoms/1.json
  def update
    respond_to do |format|
      if @digom.update(digom_params)
        format.html { redirect_to @digom, notice: 'Digom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @digom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digoms/1
  # DELETE /digoms/1.json
  def destroy
    @digom.destroy
    respond_to do |format|
      format.html { redirect_to digoms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_digom
      @digom = Digom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def digom_params
      params.require(:digom).permit(:digomId, :corp, :factory, :persents, :numOfFlows, :flowType, :notes, :lab, :samplerName, :parameters, :executed)
    end
end
