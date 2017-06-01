require 'rails_helper'
require './app/models/photo_album'

feature 'photoalbums' do
  scenario 'can have attributes name, location, date' do
    visit "/photo_albums"
    click_on("New Photo Album")
    fill_in "photo_album_title", with: "Test Album Name"
    fill_in "photo_album_location", with: "Test Location"
    fill_in "photo_album_date", with: "01/01/1970"
    click_on("Create album")
    expect(page).to have_content("Name: Test Album Name")
    expect(page).to have_content("Location: Test Location")
    expect(page).to have_content("Date: 01/01/1970")
  end
end
