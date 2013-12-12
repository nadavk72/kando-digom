require 'spec_helper'

describe "factories/show" do
  before(:each) do
    @factory = assign(:factory, stub_model(Factory,
      :name => "Name",
      :corporate_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
