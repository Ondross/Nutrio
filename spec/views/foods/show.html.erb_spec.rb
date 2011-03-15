require 'spec_helper'

describe "foods/show.html.erb" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :id => 1,
      :vitamina => 1,
      :vitaminb => 1,
      :fiber => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
