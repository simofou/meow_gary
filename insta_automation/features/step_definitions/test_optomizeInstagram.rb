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
  xpath = "//a[contains(text(),'Log in')]"
  find(xpath).click
  sleep 2
  # enter credention and click "log in" button
  fill_in("Phone number, username, or email", with: @username)
  fill_in("Password", with: @password)
  click_button('Log in')
end
