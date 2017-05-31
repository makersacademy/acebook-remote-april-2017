require 'rails_helper'

RSpec.feature "photos", type: :feature do
  xscenario 'user uploads an image' do
    visit '/photos/new'
    fill_in 'photo_title', with: 'Riot in Brighton'
    page.attach_file('photo_image', Rails.root + 'app/assets/images/brighton.jpg')
    click_on 'Submit'
    expect(page).to have_content 'Riot in Brighton'
  end
end
