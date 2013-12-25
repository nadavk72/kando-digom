require 'spec_helper'

describe "sewage_farms/show" do
  before(:each) do
    @sewage_farm = assign(:sewage_farm, stub_model(SewageFarm,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
