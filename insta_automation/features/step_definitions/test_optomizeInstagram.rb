# selector XPATHS
# rename these since they're not all actaully buttons
button_login_1 = "//a[contains(text(),'Log in')]"
button_login_2 = "//div[contains(text(),'Log In')]"
button_not_now = "//button[@class='aOOlW   HoLwm ']"

# step definitions
Given("I have gary credentials") do
  # define gary's account credentials
  @username = "meowgarythecat"
  @password = "Tintin1129!gary"
end

When("I login with gary credentials") do
  # visit homepage
  visit('https://www.instagram.com/')
  sleep 2
  # click on "log in" selector 
  find(button_login_1.click
  sleep 2

  # enter credentials and click "log in" button
  fill_in("Phone number, username, or email", with: @username)
  fill_in("Password", with: @password)

  # click final "log In" button
  find(button_login_2).click

  #dismiss notifications toast message
  begin 
    find(button_not_now).click
  rescue Capybara::ElementNotFound
  end
  sleep 5

end
