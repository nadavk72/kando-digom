require 'spec_helper'

describe "pit_types/edit" do
  before(:each) do
    @pit_type = assign(:pit_type, stub_model(PitType,
      :name => "MyString"
    ))
  end

  it "renders the edit pit_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pit_type_path(@pit_type), "post" do
      assert_select "input#pit_type_name[name=?]", "pit_type[name]"
    end
  end
end
