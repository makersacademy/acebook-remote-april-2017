require 'rails_helper'
require 'web_helpers'

RSpec.feature "Users",  type: :feature do

  scenario "sees a list of users", :type => :feature do
    sign_up("friend@example.com")
    click_on 'Sign Out'
    sign_up
    click_on("Users")
    page.should have_content("friend@example.com")
  end

  scenario "can add a friend", :type => :feature do
    sign_up("friend@example.com")
    click_on 'Sign Out'
    sign_up
    click_on("Users")
    first(:link, "Add Friend").click
    page.should have_content("Added friend")
  end

  scenario "cannot add a friend if not signed in", :type => :feature do
    sign_up("friend@example.com")
    click_on 'Sign Out'
    sign_up
    click_on 'Sign Out'
    click_on("Users")
    page.should_not have_content("Add Friend")
  end

end
