require 'spec_helper'

describe "Titles" do

  describe "Home page" do
	  it "should have the right title" do
	  	visit '/static_pages/home'
	  		page.should have_selector('title', :text => 'Dish.me')
		end
	end
	
	describe "Help page" do
		it "should have the right title" do
			visit '/static_pages/help'
				page.should have_selector('title', :text => 'Dish.me | Help')
		end
	end
	
	describe "About page" do
		it "should have the right title" do
			visit '/static_pages/about'
				page.should have_selector('title', :text => 'Dish.me | About')
		end
	end
	
	describe "Contact page" do
		it "should have the right title" do
			visit '/static_pages/contact'
				page.should have_selector('title', :text => 'Dish.me | Contact us')
		end
	end
																
end