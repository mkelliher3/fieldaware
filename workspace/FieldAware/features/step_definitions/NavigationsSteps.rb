Given(/^User is on Home page$/) do
  header = $driver.find_element(:xpath,
  '//strong[contains(text(), "Field Service Management Software")]')
  header.displayed?
end

Then(/^User can see "([^"]*)" navigation bar$/) do |nav_name|
  locator = '//a[@title="{}"]'.sub('{}', nav_name)
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  wait.until { $driver.find_element(:xpath => locator) }
end

Then(/^User can see "([^"]*)" navigation button$/) do |nav_button|
  locator = '//strong[contains(text(), "{}")]'.sub!('{}', nav_button)
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  wait.until { $driver.find_element(:xpath => locator) }
end

When(/^User clicks on "([^"]*)" navigation bar$/) do |nav_name|
  locator = '//li/a[@title="{}"]'.sub('{}', nav_name)
  $driver.find_element(:xpath, locator).click
end

Then(/^User can see "([^"]*)" menu item$/) do |menu_item|
  locator = '//a[@title="{}"]'.sub!('{}', menu_item)
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  wait.until { $driver.find_element(:xpath => locator) }
end

When(/^User clicks on "([^"]*)" menu item$/) do |menu_item|
  locator = '//a[@title="{}"]'.sub!('{}', menu_item)
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  wait.until { $driver.find_element(:xpath => locator) }.click
end

Then(/^User is on the "([^"]*)" webpage$/) do |header|
  locator = '//h1[contains(text(), "{}")]'.sub!('{}', header)
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  wait.until { $driver.find_element(:xpath => locator) }
end
