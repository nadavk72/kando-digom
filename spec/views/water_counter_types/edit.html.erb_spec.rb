require 'spec_helper'

describe "water_counter_types/edit" do
  before(:each) do
    @water_counter_type = assign(:water_counter_type, stub_model(WaterCounterType,
      :name => "MyString"
    ))
  end

  it "renders the edit water_counter_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", water_counter_type_path(@water_counter_type), "post" do
      assert_select "input#water_counter_type_name[name=?]", "water_counter_type[name]"
    end
  end
end
