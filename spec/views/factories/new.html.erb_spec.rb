require 'spec_helper'

describe "factories/new" do
  before(:each) do
    assign(:factory, stub_model(Factory,
      :name => "MyString",
      :corporate_id => 1
    ).as_new_record)
  end

  it "renders new factory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", factories_path, "post" do
      assert_select "input#factory_name[name=?]", "factory[name]"
      assert_select "input#factory_corporate_id[name=?]", "factory[corporate_id]"
    end
  end
end
