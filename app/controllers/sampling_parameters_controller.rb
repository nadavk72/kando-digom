class SamplingParametersController < ApplicationController
  before_action :set_sampling_parameter, only: [:show, :edit, :update, :destroy]

  # GET /sampling_parameters
  # GET /sampling_parameters.json
  def index
    @sampling_parameters = SamplingParameter.all
  end

  # GET /sampling_parameters/1
  # GET /sampling_parameters/1.json
  def show
  end

  # GET /sampling_parameters/new
  def new
    @sampling_parameter = SamplingParameter.new
  end

  # GET /sampling_parameters/1/edit
  def edit
  end

  # POST /sampling_parameters
  # POST /sampling_parameters.json
  def create
    @sampling_parameter = SamplingParameter.new(sampling_parameter_params)

    respond_to do |format|
      if @sampling_parameter.save
        format.html { redirect_to @sampling_parameter, notice: 'Sampling parameter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sampling_parameter }
      else
        format.html { render action: 'new' }
        format.json { render json: @sampling_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sampling_parameters/1
  # PATCH/PUT /sampling_parameters/1.json
  def update
    respond_to do |format|
      if @sampling_parameter.update(sampling_parameter_params)
        format.html { redirect_to @sampling_parameter, notice: 'Sampling parameter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sampling_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sampling_parameters/1
  # DELETE /sampling_parameters/1.json
  def destroy
    @sampling_parameter.destroy
    respond_to do |format|
      format.html { redirect_to sampling_parameters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sampling_parameter
      @sampling_parameter = SamplingParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sampling_parameter_params
      params.require(:sampling_parameter).permit(:name)
    end
end
