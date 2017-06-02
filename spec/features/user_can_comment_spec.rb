require 'rails_helper'

RSpec.feature "Comment", type: :feature do
  scenario "Can comment on posts" do
    visit "/posts"
    click_button "New Post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Add a comment:")
    fill_in "Commenter",with: "Daniel"
    fill_in "Body", with: "This is a comment"
    click_button "Create Comment"
    expect(page).to have_content("This is a comment")
  end

  scenario 'Can comment on photos' do
    visit "/photos"
    click_link "New photo"
    fill_in "Image title", with: "Test"
    click_button "Upload Photo"
    expect(page).to have_content("Test")
    fill_in "Commenter", with: "Paula"
  end
end
