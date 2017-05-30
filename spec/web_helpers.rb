
def create_a_post(text)
  visit "/posts"
  click_link "New post"
  fill_in "Message", with: text
  click_button "Submit"
end
