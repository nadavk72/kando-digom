require "spec_helper"

describe PitTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/pit_types").should route_to("pit_types#index")
    end

    it "routes to #new" do
      get("/pit_types/new").should route_to("pit_types#new")
    end

    it "routes to #show" do
      get("/pit_types/1").should route_to("pit_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pit_types/1/edit").should route_to("pit_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pit_types").should route_to("pit_types#create")
    end

    it "routes to #update" do
      put("/pit_types/1").should route_to("pit_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pit_types/1").should route_to("pit_types#destroy", :id => "1")
    end

  end
end
