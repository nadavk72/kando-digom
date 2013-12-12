require "spec_helper"

describe CorporatesController do
  describe "routing" do

    it "routes to #index" do
      get("/corporates").should route_to("corporates#index")
    end

    it "routes to #new" do
      get("/corporates/new").should route_to("corporates#new")
    end

    it "routes to #show" do
      get("/corporates/1").should route_to("corporates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/corporates/1/edit").should route_to("corporates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/corporates").should route_to("corporates#create")
    end

    it "routes to #update" do
      put("/corporates/1").should route_to("corporates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/corporates/1").should route_to("corporates#destroy", :id => "1")
    end

  end
end
