require 'rails_helper'

RSpec.feature "Newsfeed", type: :feature do
  scenario "User can see posts from friends in their newsfeed" do 
    sign_up('person_1')
    person_1_post("test_post")
    log_out
    sign_up('person_2')
    person_2_add_person_1_as_friend
    visit "/posts"
    expect(page).to have_content("test_post")
  end

  xscenario "User can't see post from non-friend in their newsfeed" do 
    sign_up_person_1
    person_1_post("test_post")
    log_out
    sign_up_person_2
    visit "/posts"
    expect(page).not.to have_content("test_post")
  end
end