require 'spec_helper'

describe "pit_types/show" do
  before(:each) do
    @pit_type = assign(:pit_type, stub_model(PitType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
