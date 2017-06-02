require 'rails_helper'

RSpec.feature 'Like', type: :feature do
  scenario 'A post can be liked by different users' do
    sign_up
    create_a_post('Hello world')
    visit '/posts'
    click_button 'Like'
    click_on 'Log Out'
    sign_up('example2@example.com')
    click_on 'Posts'
    click_button 'Like'
    expect(page).to have_content 'Like 2'
  end
end
