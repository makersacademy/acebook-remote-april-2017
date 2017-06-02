require 'rails_helper'

RSpec.feature 'Like Photos', type: :feature do
  scenario 'User can like photos' do
    sign_up
    upload_a_photo
    visit '/photos'
    click_button 'Like'
    save_and_open_page
    expect(page).to have_content('Like 1')
  end

  scenario 'User can like a photo only once' do
    sign_up
    upload_a_photo
    visit '/photos'
    click_button 'Like'
    click_button 'Like'
    expect(page).not_to have_content('Like 2')
  end
end
