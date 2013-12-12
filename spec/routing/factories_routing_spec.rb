require "spec_helper"

describe FactoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/factories").should route_to("factories#index")
    end

    it "routes to #new" do
      get("/factories/new").should route_to("factories#new")
    end

    it "routes to #show" do
      get("/factories/1").should route_to("factories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/factories/1/edit").should route_to("factories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/factories").should route_to("factories#create")
    end

    it "routes to #update" do
      put("/factories/1").should route_to("factories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/factories/1").should route_to("factories#destroy", :id => "1")
    end

  end
end
