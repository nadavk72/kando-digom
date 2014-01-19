require 'spec_helper'

describe "water_counter_types/new" do
  before(:each) do
    assign(:water_counter_type, stub_model(WaterCounterType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new water_counter_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", water_counter_types_path, "post" do
      assert_select "input#water_counter_type_name[name=?]", "water_counter_type[name]"
    end
  end
end
