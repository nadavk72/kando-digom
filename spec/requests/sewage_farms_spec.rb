require 'spec_helper'

describe "SewageFarms" do
  describe "GET /sewage_farms" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sewage_farms_path
      response.status.should be(200)
    end
  end
end
