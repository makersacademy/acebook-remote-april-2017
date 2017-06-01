require 'rails_helper'

RSpec.feature 'Like', type: :feature do
  scenario'User can like posts' do
    sign_up
    create_a_post('Hello world')
    click_button 'Like'
    expect(page).to have_content('Like 1')
  end
end
