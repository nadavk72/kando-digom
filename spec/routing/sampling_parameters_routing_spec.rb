require "spec_helper"

describe SamplingParametersController do
  describe "routing" do

    it "routes to #index" do
      get("/sampling_parameters").should route_to("sampling_parameters#index")
    end

    it "routes to #new" do
      get("/sampling_parameters/new").should route_to("sampling_parameters#new")
    end

    it "routes to #show" do
      get("/sampling_parameters/1").should route_to("sampling_parameters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sampling_parameters/1/edit").should route_to("sampling_parameters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sampling_parameters").should route_to("sampling_parameters#create")
    end

    it "routes to #update" do
      put("/sampling_parameters/1").should route_to("sampling_parameters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sampling_parameters/1").should route_to("sampling_parameters#destroy", :id => "1")
    end

  end
end
