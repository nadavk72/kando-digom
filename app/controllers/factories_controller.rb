  class FactoriesController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_factory, only: [:show, :edit, :update, :destroy]

  include FactoriesHelper

  # GET /factories
  # GET /factories.json
  def index
    @factories = Factory.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 20, :page => params[:page])
  end

  def sort_column
    Factory.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  # GET /factories/1
  # GET /factories/1.json
  def show
  end

  # GET /factories/new
  def new
    @factory = Factory.new
    create_addresses

  end

  # GET /factories/1/edit
  def edit
  end

  # POST /factories
  # POST /factories.json
  def create
    @factory = Factory.new(factory_params)
    @factory.corporate_id = 1
    if @factory.sampling_parameters blank?
      @factory.sampling_parameters = Sector.find(@factory.sectorId).sampling_parameters
    end

    respond_to do |format|
      if @factory.save
        format.html { redirect_to factories_url, notice: 'Factory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @factory }
      else
        format.html { render action: 'new' }
        format.json { render json: @factory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factories/1
  # PATCH/PUT /factories/1.json
  def update

    
    @factory.sampling_parameters.clear
    if !params[:sampling_parameters].blank? then
      params[:sampling_parameters].each do |param|
        if !param.empty?
          @factory.sampling_parameters << SamplingParameter.find(param)
        end    
      end     
    end

    #calc_physical

    respond_to do |format|
      if @factory.update(factory_params)
        format.html { redirect_to @factory, notice: 'Factory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @factory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factories/1
  # DELETE /factories/1.json
  def destroy
    @factory.destroy
    respond_to do |format|
      format.html { redirect_to factories_url }
      format.json { head :no_content }
    end
  end

  private
    
    def calc_physical
      ar = Array.new 
        factory_params[:water_counters_attributes].each { |id, cw| ar << cw[:physical_number] }
              if ar.blank?
                 @factory.physicalNumber = ''
               else
                 @factory.physicalNumber = ar.join ', '
              end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_factory
      @factory = Factory.find(params[:id])
      @contacts = @factory.contacts.paginate(page: params[:page])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factory_params
        params.require(:factory).permit(:name, :corporate_id, :clientNumber, :sectorId, :sewageFarmId, :waterSupplierId, :isActive, :photo,
         :address_attributes => [:id, :street, :streetNumber, :poBox, :zip, :city_id],
         :shipping_address_attributes => [:id, :street, :streetNumber, :poBox, :zip, :city_id],
         :sampling_parameters_attributes => [:id],
         :contacts_attributes => [:id, :firstName, :lastName, :role, :phone, :ext, :fax, :cellPhone, :email, :responsible, :_destroy],
         :pits_attributes => [:id, :name, :pit_type_id, :photo, :description, :coordinate, :scheduled_short_sampling, :scheduled_complex_sampling, :_destroy],
         :water_counters_attributes => [:id, :physical_number, :photo, :description, :coordinate, :water_counter_type_id, :pit_id, :_destroy]
        )
    #params.require(:factory).permit!
    end
end

