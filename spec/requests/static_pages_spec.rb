
require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Welcome Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Welcome Home')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "Hartless | Home")
    end
  end
  
  describe "Help page" do

    it "should have the content 'Need help?'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Need help?')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                    :text => "Hartless | Help")
    end
  end
  
    describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Hartless | About")
    end
  end

  
  
end