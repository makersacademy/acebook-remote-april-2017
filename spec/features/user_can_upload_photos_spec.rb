require 'rails_helper'

RSpec.feature "photos", type: :feature do
  scenario 'user uploads an image' do
    sign_up
    visit '/photos'
    click_on 'new-photo'
    fill_in 'photo_title', with: 'Riot in Brighton'
    page.attach_file('photo_image', Rails.root + 'app/assets/images/brighton.jpg')
    click_on 'Upload Photo'
    expect(page).to have_content 'Riot in Brighton'
  end
end
