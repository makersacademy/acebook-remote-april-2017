require 'rails_helper'
require 'web_helpers'

RSpec.feature "Post belong to Users", type: :feature do

  scenario "posts have their name on", :type => :feature do
    sign_up
    create_a_post("Expecting my credentials on this post")
    visit "/posts"
    expect(page).to have_content("example@example.com")
    expect(page).to have_content("Expecting my credentials on this post")
  end
end
