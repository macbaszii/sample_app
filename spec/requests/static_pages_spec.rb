require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end
    
    it "should have the right title" do
      visit root_path
      page.should have_selector('title', 
                                :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end
  
  describe "Help Page" do
    it "should have content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
    
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', 
                                :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  describe "About Page" do
    it "should have content 'About us'" do
      visit about_path
      page.should have_content('About Us')
    end
    
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', 
                                :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
  describe "Contact Page" do
    it "should have content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
    
    it "should have the right title" do
      visit contact_path
      page.should have_selector('title', 
                                :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
  
end
