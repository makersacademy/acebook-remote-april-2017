require 'rails_helper'

RSpec.feature "Newsfeed", type: :feature do
  scenario "User can see posts from friends in their newsfeed" do
    sign_up('person_1@email.com')
    create_a_post("I'm person_1, I have a friend")
    click_on("Sign Out")
    sign_up('person_2@email.com')
    click_on("Users")
    first(:link, "Add Friend").click
    visit "/posts"
    expect(page).to have_content("I'm person_1, I have a friend")
  end

  scenario "User can't see post from non-friend in their newsfeed" do
    sign_up('person_1@email.com')
    create_a_post("I'm person_1, I have no friends")
    click_on("Sign Out")
    sign_up('person_2@email.com')
    visit "/posts"
    expect(page).not_to have_content("I'm person_1, I have no friends")
  end
end
