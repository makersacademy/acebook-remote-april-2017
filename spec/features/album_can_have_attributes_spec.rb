require 'rails_helper'
require './app/models/photo_album'

feature 'photoalbums' do
  scenario 'can have attributes name, location, date' do
    visit "/albums"
    click_on("New album")
    fill_in "Name", with: "Test Album Name"
    fill_in "Location", with: "Test Location"
    fill_in "Date", with: "01/01/1970"
    click_on("Create album")
    expect(page).to have_content("Name: Test Album Name")
    expect(page).to have_content("Location: Test Location")
    expect(page).to have_content("Date: 01/01/1970")
  end
end

