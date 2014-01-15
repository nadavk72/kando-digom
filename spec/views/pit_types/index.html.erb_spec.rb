require 'spec_helper'

describe "pit_types/index" do
  before(:each) do
    assign(:pit_types, [
      stub_model(PitType,
        :name => "Name"
      ),
      stub_model(PitType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of pit_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
