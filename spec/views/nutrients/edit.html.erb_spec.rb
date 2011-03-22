require 'spec_helper'

describe "nutrients/edit.html.erb" do
  before(:each) do
    @nutrient = assign(:nutrient, stub_model(Nutrient,
      :nutrient => "MyString",
      :food => "MyString",
      :quantity => 1
    ))
  end

  it "renders the edit nutrient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nutrients_path(@nutrient), :method => "post" do
      assert_select "input#nutrient_nutrient", :name => "nutrient[nutrient]"
      assert_select "input#nutrient_food", :name => "nutrient[food]"
      assert_select "input#nutrient_quantity", :name => "nutrient[quantity]"
    end
  end
end
