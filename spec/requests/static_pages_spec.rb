# **Old RSpec Test Driven Development 
# it "should have content 'About us'" do
#       visit about_path
#       page.should have_content('About Us')
#     end
#     
#     it "should have the right title" do
#       visit about_path
#       page.should have_selector('title', 
#                                 :text => "Ruby on Rails Tutorial Sample App | About Us")
#     end

require 'spec_helper'

describe "StaticPages" do
  
  subject { page }

  describe "Home page" do
    before { visit root_path }
    
    it { should have_content('Sample App') }
    it { should have_selector('title', text: full_title("Home")) }
  end
  
  describe "Help Page" do
    before { visit help_path }
    
    it { should have_content('Help') }
    it { should have_selector('title', text: full_title("Help")) }
  end
  
  describe "About Page" do
    before { visit about_path }
    
    it { should have_content('About Us') }
    it { should have_selector('title', text: full_title("About Us")) }
  end
  
  describe "Contact Page" do
    before { visit contact_path }
    
    it { should have_content('Contact') }
    it { should have_selector('title', text: full_title("Contact")) }
  end
  
end
