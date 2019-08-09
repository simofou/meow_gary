# selector XPATHS
# rename these since they're not all actaully buttons
button_login_1 = "//a[contains(text(),'Log in')]"
button_login_2 = "//div[contains(text(),'Log In')]"
button_not_now = "//button[@class='aOOlW   HoLwm ']"
button_like_first_post = "//article[1]//div[2]//section[1]//span[1]//button[1]"
button_like_n_post_start ="//article["
button_like_n_post_end = "]//div[2]//section[1]//span[1]//button[1]"

# step definitions
Given("I have gary credentials") do
  # define gary's account credentials
  @username = "meowgarythecat"
  @password = "Tintin1129!gary"
end

When("I login with gary credentials") do
  # visit homepage
  visit('https://www.instagram.com/')
  sleep 1
  # click on "log in" selector 
  find(button_login_1).click
  sleep 1

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
  sleep 1
end

Then("I like {string} post on feed") do |number_of_posts|
  range = (1..number_of_posts.to_i)

  # like number_of_posts posts
  range.each do |post_index|
    like_button = button_like_n_post_start + post_index.to_s + button_like_n_post_end
    begin
      find(like_button).click
    rescue Capybara::ElementNotFound
      return "Already liked this post, done for now!"
    end
    sleep 1
  end
  # instead of setting a range, we could like until we hit 2 posts that where already
  # liked, and that would show we've caught up
end
