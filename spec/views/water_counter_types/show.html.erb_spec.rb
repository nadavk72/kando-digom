require 'spec_helper'

describe "water_counter_types/show" do
  before(:each) do
    @water_counter_type = assign(:water_counter_type, stub_model(WaterCounterType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
