require 'rspec'
require 'capybara/rspec'
require 'capybara'
require 'selenium-webdriver'
require 'capybara/cucumber'

Capybara.run_server = false
Capybara.default_driver = :selenium_chrome
Capybara.default_selector = :xpath
Capybara.default_max_wait_time = 10
#Capybara.app_host = 'https://google.com'
