require 'spec_helper'

describe "water_suppliers/index" do
  before(:each) do
    assign(:water_suppliers, [
      stub_model(WaterSupplier,
        :name => "Name"
      ),
      stub_model(WaterSupplier,
        :name => "Name"
      )
    ])
  end

  it "renders a list of water_suppliers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
