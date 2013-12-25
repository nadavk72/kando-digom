require "spec_helper"

describe SewageFarmsController do
  describe "routing" do

    it "routes to #index" do
      get("/sewage_farms").should route_to("sewage_farms#index")
    end

    it "routes to #new" do
      get("/sewage_farms/new").should route_to("sewage_farms#new")
    end

    it "routes to #show" do
      get("/sewage_farms/1").should route_to("sewage_farms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sewage_farms/1/edit").should route_to("sewage_farms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sewage_farms").should route_to("sewage_farms#create")
    end

    it "routes to #update" do
      put("/sewage_farms/1").should route_to("sewage_farms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sewage_farms/1").should route_to("sewage_farms#destroy", :id => "1")
    end

  end
end
