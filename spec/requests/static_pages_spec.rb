require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Welcome to Sakshum" }
  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit 'home_path'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit 'home_path'
      page.should have_selector('title',
                                :text => "#{base_title} | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit 'help_path'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit 'help_path'
      page.should have_selector('title',
                                :text => "#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit 'about_path'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit 'about_path'
      page.should have_selector('title',
                                :text => "#{base_title} | About Us")
    end
  end

  describe "Contact Us" do

    it "should have the title 'Contact Us'" do
      visit 'contact_path'
      page.should have_selector('title',
                                :text => "#{base_title} | Contact Us")
    end

    it "should have the h1 'Contact Us'" do
      visit 'contact_path'
      page.should have_selector('h1', :text => 'Contact Us')
    end
    end
end