require 'rails_helper'
require 'web_helpers'

RSpec.feature "Friends",  type: :feature do

  scenario "sees a list of friends", :type => :feature do
    sign_up_and_add_friend
    click_on("Profile")
    page.should have_content("friend@example.com")
  end

end
