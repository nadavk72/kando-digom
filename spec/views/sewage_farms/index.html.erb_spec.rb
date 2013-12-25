require 'spec_helper'

describe "sewage_farms/index" do
  before(:each) do
    assign(:sewage_farms, [
      stub_model(SewageFarm,
        :name => "Name"
      ),
      stub_model(SewageFarm,
        :name => "Name"
      )
    ])
  end

  it "renders a list of sewage_farms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
