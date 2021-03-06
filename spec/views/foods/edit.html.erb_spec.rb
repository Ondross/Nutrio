require 'spec_helper'

describe "foods/edit.html.erb" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :id => 1,
      :vitamina => 1,
      :vitaminb => 1,
      :fiber => 1
    ))
  end

  it "renders the edit food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foods_path(@food), :method => "post" do
      assert_select "input#food_id", :name => "food[id]"
      assert_select "input#food_vitamina", :name => "food[vitamina]"
      assert_select "input#food_vitaminb", :name => "food[vitaminb]"
      assert_select "input#food_fiber", :name => "food[fiber]"
    end
  end
end
