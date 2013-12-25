require 'spec_helper'

describe "sewage_farms/edit" do
  before(:each) do
    @sewage_farm = assign(:sewage_farm, stub_model(SewageFarm,
      :name => "MyString"
    ))
  end

  it "renders the edit sewage_farm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sewage_farm_path(@sewage_farm), "post" do
      assert_select "input#sewage_farm_name[name=?]", "sewage_farm[name]"
    end
  end
end
