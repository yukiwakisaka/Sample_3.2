require 'spec_helper'

describe "Static pages" do

# let(:base_title) { "Ruby on Rails Tutorial Sample App | " }

	describe "Home page" do

  	it "should have the content 'Home'" do
    	visit root_path
    	expect(page).to have_content('Home')
  	end

  	it "should have the right title" do
  	visit root_path
  	expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end

    it "should not have the sub title" do
    visit root_path
    expect(page).not_to have_title("| Home")
    end
	end

	describe "Help page" do

  	it "should have the content 'Help'" do
    	visit help_path
    	expect(page).to have_content('Help')
  	end
	
	it "should have ther right title" do
  	visit help_path
  	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  	end
	end

	describe "About page" do

  	it "should have the content 'About'" do
    	visit about_path
    	expect(page).to have_content('About')
  	end

  	it "should have ther right title" do
  	visit about_path
  	expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
  	end
 	end

	describe "Contact page" do

  	it "should have the content 'Contact'" do
    	visit contact_path
    	expect(page).to have_content('Contact')
  	end

  	it "should have ther right title" do
  	visit contact_path
  	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
  	end
	end
end