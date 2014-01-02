class FactoriesController < ApplicationController
  before_action :set_factory, only: [:show, :edit, :update, :destroy]

  # GET /factories
  # GET /factories.json
  def index
    @factories = Factory.all
  end

  # GET /factories/1
  # GET /factories/1.json
  def show
  end

  # GET /factories/new
  def new
    @factory = Factory.new
  end

  # GET /factories/1/edit
  def edit
  end

  # POST /factories
  # POST /factories.json
  def create
    @factory = Factory.new(factory_params)
    @factory.corporate_id = 1

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
    # Use callbacks to share common setup or constraints between actions.
    def set_factory
      @factory = Factory.find(params[:id])
      @contacts = @factory.contacts.paginate(page: params[:page])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factory_params
        #params.require(:factory).permit(:name, {contacts_attributes: :firstName}, :corporate_id, :clientNumber, :address, :cityId, :sectorId, :physicalNumber, :sewageFarmId, :arrangement, :waterSupplierId, :isActive)
        params.require(:factory).permit!
    end
end
