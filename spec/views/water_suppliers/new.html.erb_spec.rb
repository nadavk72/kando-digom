require 'spec_helper'

describe "water_suppliers/new" do
  before(:each) do
    assign(:water_supplier, stub_model(WaterSupplier,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new water_supplier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", water_suppliers_path, "post" do
      assert_select "input#water_supplier_name[name=?]", "water_supplier[name]"
    end
  end
end
