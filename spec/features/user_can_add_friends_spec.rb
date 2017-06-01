require 'rails_helper'
require 'web_helpers'

RSpec.feature "Users",  type: :feature do

  scenario "sees a list of users", :type => :feature do
    sign_up_friend
    click_on 'Sign Out'
    sign_up
    click_on("Users")
    page.should have_content("friend@example.com")
  end

  scenario "signs out the user", :type => :feature do
    sign_up_friend
    click_on 'Sign Out'
    sign_up
    click_on("Users")
    click_on("Add Friend")
    page.should have_content("Friendship sent!")
  end
end
