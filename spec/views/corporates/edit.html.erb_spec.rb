require 'spec_helper'

describe "corporates/edit" do
  before(:each) do
    @corporate = assign(:corporate, stub_model(Corporate,
      :name => "MyString"
    ))
  end

  it "renders the edit corporate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", corporate_path(@corporate), "post" do
      assert_select "input#corporate_name[name=?]", "corporate[name]"
    end
  end
end
