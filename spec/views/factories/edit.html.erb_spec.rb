require 'spec_helper'

describe "factories/edit" do
  before(:each) do
    @factory = assign(:factory, stub_model(Factory,
      :name => "MyString",
      :corporate_id => 1
    ))
  end

  it "renders the edit factory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", factory_path(@factory), "post" do
      assert_select "input#factory_name[name=?]", "factory[name]"
      assert_select "input#factory_corporate_id[name=?]", "factory[corporate_id]"
    end
  end
end
