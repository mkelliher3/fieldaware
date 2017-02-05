require 'selenium-webdriver'


Before('@Chrome') do
  puts "Creating a Chrome driver object"
  $driver = Selenium::WebDriver.for :chrome
  $driver.get "http://www.fieldaware.co.uk/"
end

#Before('@Firefox') do
#  puts "Creating a Firefox driver object"
#  $driver = Selenium::WebDriver.for :firefox
#  $driver.get "http://www.fieldaware.co.uk/"
#end

After do
  $driver.quit
end