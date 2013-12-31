require 'spec_helper'

describe "Routing" do
  describe "Paths Generated by Custom Routes:" do
    it "should map {:controller => 'catalog', :id => '111', :action => 'librarian_view'} to /catalog/111/librarian_view" do
      { :get => "/catalog/111/librarian_view" }.should route_to(:controller => 'catalog', :action => 'librarian_view', :id => "111")
      { :get => librarian_view_catalog_path('111') }.should route_to(:controller => 'catalog', :action => 'librarian_view', :id => "111")
    end
  end
end

