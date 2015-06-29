require 'rspec'
require 'selenium-webdriver'
require_relative '../../src/pageObjects/home_page'

class AbstractPage

	@@driver = nil

	def initialize (driver)
		@@driver = driver
	end

	def navigateToAppRoot
		@@driver.navigate.to("http://www.asos.com")
		return HomePage.new(@@driver)
	end

	def quit
		@@driver.quit
	end

	def getPageTitle
		return @@driver.title
	end
end
