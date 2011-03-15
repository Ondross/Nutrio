require 'spec_helper'

describe "foods/index.html.erb" do
  before(:each) do
    assign(:foods, [
      stub_model(Food,
        :id => 1,
        :vitamina => 1,
        :vitaminb => 1,
        :fiber => 1
      ),
      stub_model(Food,
        :id => 1,
        :vitamina => 1,
        :vitaminb => 1,
        :fiber => 1
      )
    ])
  end

  it "renders a list of foods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
