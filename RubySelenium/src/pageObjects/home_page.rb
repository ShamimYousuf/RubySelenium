require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/category_page'

class HomePage < AbstractPage

	def initialize(driver)
		super(driver)
	end

	def enterSearch(searchText)
		input_search = @@driver.find_element(:id,'txtSearch')
		input_search.send_keys(searchText)
		return HomePage.new(@@driver)
	end

	def clickSearch
		@@driver.find_element(:class, 'go').click
		return CategoryPage.new(@@driver)
	end

end