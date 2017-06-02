require 'rails_helper'

RSpec.feature 'Like Photos', type: :feature do
  scenario 'User can like photos' do
    sign_up
    create_a_post('Hello world')
    click_on 'View Posts'
    click_button 'Like'
    expect(page).to have_content('Like 1')
  end

  scenario 'User can like a photo only once' do
    sign_up
    create_a_post('Hello world')
    click_on 'View Posts'
    click_button 'Like'
    click_button 'Like'
    expect(page).not_to have_content('Like 2')
  end
end
