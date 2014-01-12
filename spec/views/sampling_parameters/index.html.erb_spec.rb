require 'spec_helper'

describe "sampling_parameters/index" do
  before(:each) do
    assign(:sampling_parameters, [
      stub_model(SamplingParameter,
        :name => "Name"
      ),
      stub_model(SamplingParameter,
        :name => "Name"
      )
    ])
  end

  it "renders a list of sampling_parameters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
