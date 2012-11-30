require 'spec_helper'

describe "things/show" do
  before(:each) do
    @thing = assign(:thing, stub_model(Thing,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
