require 'spec_helper'

describe "pit_types/new" do
  before(:each) do
    assign(:pit_type, stub_model(PitType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new pit_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pit_types_path, "post" do
      assert_select "input#pit_type_name[name=?]", "pit_type[name]"
    end
  end
end
