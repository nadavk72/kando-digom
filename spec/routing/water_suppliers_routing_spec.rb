require "spec_helper"

describe WaterSuppliersController do
  describe "routing" do

    it "routes to #index" do
      get("/water_suppliers").should route_to("water_suppliers#index")
    end

    it "routes to #new" do
      get("/water_suppliers/new").should route_to("water_suppliers#new")
    end

    it "routes to #show" do
      get("/water_suppliers/1").should route_to("water_suppliers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/water_suppliers/1/edit").should route_to("water_suppliers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/water_suppliers").should route_to("water_suppliers#create")
    end

    it "routes to #update" do
      put("/water_suppliers/1").should route_to("water_suppliers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/water_suppliers/1").should route_to("water_suppliers#destroy", :id => "1")
    end

  end
end
