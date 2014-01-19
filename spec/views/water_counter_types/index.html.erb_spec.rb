require 'spec_helper'

describe "water_counter_types/index" do
  before(:each) do
    assign(:water_counter_types, [
      stub_model(WaterCounterType,
        :name => "Name"
      ),
      stub_model(WaterCounterType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of water_counter_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
