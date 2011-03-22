require 'spec_helper'

describe "nutrients/index.html.erb" do
  before(:each) do
    assign(:nutrients, [
      stub_model(Nutrient,
        :nutrient => "Nutrient",
        :food => "Food",
        :quantity => 1
      ),
      stub_model(Nutrient,
        :nutrient => "Nutrient",
        :food => "Food",
        :quantity => 1
      )
    ])
  end

  it "renders a list of nutrients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nutrient".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Food".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
