require "spec_helper"

describe NutrientsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/nutrients" }.should route_to(:controller => "nutrients", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/nutrients/new" }.should route_to(:controller => "nutrients", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/nutrients/1" }.should route_to(:controller => "nutrients", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/nutrients/1/edit" }.should route_to(:controller => "nutrients", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/nutrients" }.should route_to(:controller => "nutrients", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/nutrients/1" }.should route_to(:controller => "nutrients", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/nutrients/1" }.should route_to(:controller => "nutrients", :action => "destroy", :id => "1")
    end

  end
end
