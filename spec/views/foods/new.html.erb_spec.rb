require 'spec_helper'

describe "foods/new.html.erb" do
  before(:each) do
    assign(:food, stub_model(Food,
      :id => 1,
      :vitamina => 1,
      :vitaminb => 1,
      :fiber => 1
    ).as_new_record)
  end

  it "renders new food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foods_path, :method => "post" do
      assert_select "input#food_id", :name => "food[id]"
      assert_select "input#food_vitamina", :name => "food[vitamina]"
      assert_select "input#food_vitaminb", :name => "food[vitaminb]"
      assert_select "input#food_fiber", :name => "food[fiber]"
    end
  end
end
