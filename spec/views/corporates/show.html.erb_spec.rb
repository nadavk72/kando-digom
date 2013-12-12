require 'spec_helper'

describe "corporates/show" do
  before(:each) do
    @corporate = assign(:corporate, stub_model(Corporate,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
