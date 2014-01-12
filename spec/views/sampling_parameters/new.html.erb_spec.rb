require 'spec_helper'

describe "sampling_parameters/new" do
  before(:each) do
    assign(:sampling_parameter, stub_model(SamplingParameter,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new sampling_parameter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sampling_parameters_path, "post" do
      assert_select "input#sampling_parameter_name[name=?]", "sampling_parameter[name]"
    end
  end
end
