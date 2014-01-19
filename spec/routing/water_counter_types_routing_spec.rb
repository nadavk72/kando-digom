require "spec_helper"

describe WaterCounterTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/water_counter_types").should route_to("water_counter_types#index")
    end

    it "routes to #new" do
      get("/water_counter_types/new").should route_to("water_counter_types#new")
    end

    it "routes to #show" do
      get("/water_counter_types/1").should route_to("water_counter_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/water_counter_types/1/edit").should route_to("water_counter_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/water_counter_types").should route_to("water_counter_types#create")
    end

    it "routes to #update" do
      put("/water_counter_types/1").should route_to("water_counter_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/water_counter_types/1").should route_to("water_counter_types#destroy", :id => "1")
    end

  end
end
