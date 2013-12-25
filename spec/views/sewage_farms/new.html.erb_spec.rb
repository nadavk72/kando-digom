require 'spec_helper'

describe "sewage_farms/new" do
  before(:each) do
    assign(:sewage_farm, stub_model(SewageFarm,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new sewage_farm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sewage_farms_path, "post" do
      assert_select "input#sewage_farm_name[name=?]", "sewage_farm[name]"
    end
  end
end
