require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    sign_up
    visit "/posts"
    click_button "New Post"
    fill_in "Message", with: "Hello, world!"
    click_button "Post"
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content("posted at #{Time.now.strftime('%H:%M')} on #{Time.now.strftime('%d/%m/%Y')}")
  end
end
