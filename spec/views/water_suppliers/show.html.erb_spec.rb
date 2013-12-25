require 'spec_helper'

describe "water_suppliers/show" do
  before(:each) do
    @water_supplier = assign(:water_supplier, stub_model(WaterSupplier,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
