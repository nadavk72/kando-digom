require 'spec_helper'

describe "WaterSuppliers" do
  describe "GET /water_suppliers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get water_suppliers_path
      response.status.should be(200)
    end
  end
end
