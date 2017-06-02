require 'rails_helper'
require 'web_helpers'

RSpec.feature "Friends",  type: :feature do

  scenario "User cannot add self", :type => :feature do
    sign_up
    click_on('Users')
    click_on('Add Friend')
    page.should have_content("can't add yourself")
  end

end
