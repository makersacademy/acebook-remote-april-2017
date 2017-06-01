require 'rails_helper'

RSpec.feature "Newsfeed", type: :feature do
  scenario "Can submit posts and view them" do
    visit "/posts"
    click_button "New Post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content("posted at #{Time.now.strftime('%H:%M')} on #{Time.now.strftime('%d/%m/%Y')}")
  end
end
