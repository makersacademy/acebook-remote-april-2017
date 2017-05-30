
def create_a_post(text)
  visit "/posts"
  click_link "New Post"
  fill_in "Message", with: text
  click_button "Submit"
end
