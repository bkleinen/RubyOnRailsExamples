require 'spec_helper'
# http://rubydoc.info/github/jnicklas/capybara/master/Capybara/Node/Matchers
# https://www.relishapp.com/rspec/rspec-expectations/docs
describe "Things" do
  subject { page }
  describe "index page" do
  	let!(:thing) {FactoryGirl.create(:thing)}
  	let!(:other_thing){FactoryGirl.create(:other_thing)}
  	before { visit things_path }
    it "should have a search button" do  	
    	page.should have_button "Search"
    end 
    it "lists all things" do
    	page.should have_content("Kabel")
  		page.should have_content("Computer")

    end
    it "finds things via name" do
    	fill_in "search", with: "Kabel"
    	click_button("Search")
    	page.should have_content("Kabel")
 		page.should_not have_content("Computer")
    end
   
  end
end
