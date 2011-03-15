require 'spec_helper'

describe "purchases/edit.html.erb" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :user => "MyString",
      :bananas => 1,
      :peaches => 1,
      :kiwis => 1
    ))
  end

  it "renders the edit purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchases_path(@purchase), :method => "post" do
      assert_select "input#purchase_user", :name => "purchase[user]"
      assert_select "input#purchase_bananas", :name => "purchase[bananas]"
      assert_select "input#purchase_peaches", :name => "purchase[peaches]"
      assert_select "input#purchase_kiwis", :name => "purchase[kiwis]"
    end
  end
end
