require 'spec_helper'

describe "corporates/new" do
  before(:each) do
    assign(:corporate, stub_model(Corporate,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new corporate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", corporates_path, "post" do
      assert_select "input#corporate_name[name=?]", "corporate[name]"
    end
  end
end
