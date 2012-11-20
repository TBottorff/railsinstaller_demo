require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'RailsInstaller_Demo'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('RailsInstaller_Demo')
    end
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
end
