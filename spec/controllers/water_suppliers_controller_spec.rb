require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WaterSuppliersController do

  # This should return the minimal set of attributes required to create a valid
  # WaterSupplier. As you add validations to WaterSupplier, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WaterSuppliersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all water_suppliers as @water_suppliers" do
      water_supplier = WaterSupplier.create! valid_attributes
      get :index, {}, valid_session
      assigns(:water_suppliers).should eq([water_supplier])
    end
  end

  describe "GET show" do
    it "assigns the requested water_supplier as @water_supplier" do
      water_supplier = WaterSupplier.create! valid_attributes
      get :show, {:id => water_supplier.to_param}, valid_session
      assigns(:water_supplier).should eq(water_supplier)
    end
  end

  describe "GET new" do
    it "assigns a new water_supplier as @water_supplier" do
      get :new, {}, valid_session
      assigns(:water_supplier).should be_a_new(WaterSupplier)
    end
  end

  describe "GET edit" do
    it "assigns the requested water_supplier as @water_supplier" do
      water_supplier = WaterSupplier.create! valid_attributes
      get :edit, {:id => water_supplier.to_param}, valid_session
      assigns(:water_supplier).should eq(water_supplier)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new WaterSupplier" do
        expect {
          post :create, {:water_supplier => valid_attributes}, valid_session
        }.to change(WaterSupplier, :count).by(1)
      end

      it "assigns a newly created water_supplier as @water_supplier" do
        post :create, {:water_supplier => valid_attributes}, valid_session
        assigns(:water_supplier).should be_a(WaterSupplier)
        assigns(:water_supplier).should be_persisted
      end

      it "redirects to the created water_supplier" do
        post :create, {:water_supplier => valid_attributes}, valid_session
        response.should redirect_to(WaterSupplier.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved water_supplier as @water_supplier" do
        # Trigger the behavior that occurs when invalid params are submitted
        WaterSupplier.any_instance.stub(:save).and_return(false)
        post :create, {:water_supplier => { "name" => "invalid value" }}, valid_session
        assigns(:water_supplier).should be_a_new(WaterSupplier)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        WaterSupplier.any_instance.stub(:save).and_return(false)
        post :create, {:water_supplier => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested water_supplier" do
        water_supplier = WaterSupplier.create! valid_attributes
        # Assuming there are no other water_suppliers in the database, this
        # specifies that the WaterSupplier created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        WaterSupplier.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => water_supplier.to_param, :water_supplier => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested water_supplier as @water_supplier" do
        water_supplier = WaterSupplier.create! valid_attributes
        put :update, {:id => water_supplier.to_param, :water_supplier => valid_attributes}, valid_session
        assigns(:water_supplier).should eq(water_supplier)
      end

      it "redirects to the water_supplier" do
        water_supplier = WaterSupplier.create! valid_attributes
        put :update, {:id => water_supplier.to_param, :water_supplier => valid_attributes}, valid_session
        response.should redirect_to(water_supplier)
      end
    end

    describe "with invalid params" do
      it "assigns the water_supplier as @water_supplier" do
        water_supplier = WaterSupplier.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WaterSupplier.any_instance.stub(:save).and_return(false)
        put :update, {:id => water_supplier.to_param, :water_supplier => { "name" => "invalid value" }}, valid_session
        assigns(:water_supplier).should eq(water_supplier)
      end

      it "re-renders the 'edit' template" do
        water_supplier = WaterSupplier.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WaterSupplier.any_instance.stub(:save).and_return(false)
        put :update, {:id => water_supplier.to_param, :water_supplier => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested water_supplier" do
      water_supplier = WaterSupplier.create! valid_attributes
      expect {
        delete :destroy, {:id => water_supplier.to_param}, valid_session
      }.to change(WaterSupplier, :count).by(-1)
    end

    it "redirects to the water_suppliers list" do
      water_supplier = WaterSupplier.create! valid_attributes
      delete :destroy, {:id => water_supplier.to_param}, valid_session
      response.should redirect_to(water_suppliers_url)
    end
  end

end
