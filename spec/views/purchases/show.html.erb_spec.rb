require 'spec_helper'

describe "purchases/show.html.erb" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :user => "User",
      :bananas => 1,
      :peaches => 1,
      :kiwis => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
