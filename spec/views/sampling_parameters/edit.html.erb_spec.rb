require 'spec_helper'

describe "sampling_parameters/edit" do
  before(:each) do
    @sampling_parameter = assign(:sampling_parameter, stub_model(SamplingParameter,
      :name => "MyString"
    ))
  end

  it "renders the edit sampling_parameter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sampling_parameter_path(@sampling_parameter), "post" do
      assert_select "input#sampling_parameter_name[name=?]", "sampling_parameter[name]"
    end
  end
end
