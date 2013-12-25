require 'spec_helper'

describe "water_suppliers/edit" do
  before(:each) do
    @water_supplier = assign(:water_supplier, stub_model(WaterSupplier,
      :name => "MyString"
    ))
  end

  it "renders the edit water_supplier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", water_supplier_path(@water_supplier), "post" do
      assert_select "input#water_supplier_name[name=?]", "water_supplier[name]"
    end
  end
end
