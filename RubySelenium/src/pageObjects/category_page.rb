require_relative '../../src/pageObjects/abstract_page'

class CategoryPage < AbstractPage

	def initialize (driver)
		@@driver = driver
	end

	def sortBy(sortByText)

		sort =  @@driver.find_element(:id, 'sortBy')
		select_list = Selenium::WebDriver::Support::Select.new(sort)
		select_list.select_by(:text, sortByText)
		selected_option = select_list.selected_options[0].text
		return selected_option
		
	end

end