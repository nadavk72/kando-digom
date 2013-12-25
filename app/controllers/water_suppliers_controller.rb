class WaterSuppliersController < ApplicationController
  before_action :set_water_supplier, only: [:show, :edit, :update, :destroy]

  # GET /water_suppliers
  # GET /water_suppliers.json
  def index
    @water_suppliers = WaterSupplier.all
  end

  # GET /water_suppliers/1
  # GET /water_suppliers/1.json
  def show
  end

  # GET /water_suppliers/new
  def new
    @water_supplier = WaterSupplier.new
  end

  # GET /water_suppliers/1/edit
  def edit
  end

  # POST /water_suppliers
  # POST /water_suppliers.json
  def create
    @water_supplier = WaterSupplier.new(water_supplier_params)

    respond_to do |format|
      if @water_supplier.save
        format.html { redirect_to @water_supplier, notice: 'Water supplier was successfully created.' }
        format.json { render action: 'show', status: :created, location: @water_supplier }
      else
        format.html { render action: 'new' }
        format.json { render json: @water_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_suppliers/1
  # PATCH/PUT /water_suppliers/1.json
  def update
    respond_to do |format|
      if @water_supplier.update(water_supplier_params)
        format.html { redirect_to @water_supplier, notice: 'Water supplier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @water_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_suppliers/1
  # DELETE /water_suppliers/1.json
  def destroy
    @water_supplier.destroy
    respond_to do |format|
      format.html { redirect_to water_suppliers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_supplier
      @water_supplier = WaterSupplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_supplier_params
      params.require(:water_supplier).permit(:name)
    end
end
