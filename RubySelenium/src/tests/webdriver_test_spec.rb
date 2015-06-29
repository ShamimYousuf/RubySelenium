require 'rspec'
require 'selenium-webdriver'
require_relative '../../src/pageObjects/home_page'

describe 'Testing asos pages' do |variable|

	app = nil

	before(:each) do
		app = AbstractPage.new(Selenium::WebDriver.for(:firefox))
	end

	after(:each) do
		app.quit
	end

	it 'to enter valid form data and submit it' do

		category = app
			.navigateToAppRoot
			.enterSearch('dress')
			.clickSearch
		expect(category.getPageTitle).to be == 'Search: dress - Page 1 of 315 | ASOS'

	end


	it 'to sort the product by Price high to low' do
		sortText = app
			.navigateToAppRoot
			.enterSearch('dress')
			.clickSearch
			.sortBy('Price high to low')
		expect(sortText).to eql 'Price high to low'	
		
	end

end

