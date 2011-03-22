require 'spec_helper'

describe "nutrients/new.html.erb" do
  before(:each) do
    assign(:nutrient, stub_model(Nutrient,
      :nutrient => "MyString",
      :food => "MyString",
      :quantity => 1
    ).as_new_record)
  end

  it "renders new nutrient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nutrients_path, :method => "post" do
      assert_select "input#nutrient_nutrient", :name => "nutrient[nutrient]"
      assert_select "input#nutrient_food", :name => "nutrient[food]"
      assert_select "input#nutrient_quantity", :name => "nutrient[quantity]"
    end
  end
end
