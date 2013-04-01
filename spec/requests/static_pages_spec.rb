require 'spec_helper'
	
	describe "Static pages" do
  	
  	describe "Home page" do
    	it "should have the content 'Welcome to Dish.me'" do
      	visit '/static_pages/home'
      	page.should have_content('Welcome to Dish.me')
    	end 
  	end
  	
  	describe "Help page" do
  		it "should have the content 'Help'" do
  			visit '/static_pages/help'
  				page.should have_content('Help')
			end
		end  

		describe "About page" do
			it "should have the content 'About Dish.me'" do
				visit '/static_pages/about'
					page.should have_content('About Dish.me')
			end	  	
		end
		
		describe "Contact page" do
			it "should have the content 'hello@dish.me'" do
				visit '/static_pages/contact'
					page.should have_content('hello@dish.me')
			end
			it "should have h1 of 'Contact Us'" do
				visit '/static_pages/contact'
					page.should have_selector('h1', :text => 'Contact Us')
			end
		end

	end