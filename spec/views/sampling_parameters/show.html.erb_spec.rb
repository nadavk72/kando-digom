require 'spec_helper'

describe "sampling_parameters/show" do
  before(:each) do
    @sampling_parameter = assign(:sampling_parameter, stub_model(SamplingParameter,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
