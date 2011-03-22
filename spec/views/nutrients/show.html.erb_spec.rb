require 'spec_helper'

describe "nutrients/show.html.erb" do
  before(:each) do
    @nutrient = assign(:nutrient, stub_model(Nutrient,
      :nutrient => "Nutrient",
      :food => "Food",
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nutrient/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Food/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
