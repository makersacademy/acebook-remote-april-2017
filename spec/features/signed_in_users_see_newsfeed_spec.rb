require 'rails_helper'

feature 'Newsfeed visible only to signed in users' do
  scenario 'user signs in and sees newsfeed' do
    sign_up
    click_on 'Log Out'
    log_in
    expect(current_path).to eq('/')
  end

  scenario 'user is not signed in and does not see the newsfeed' do
    visit ('/posts')
    expect(page).to have_content('You need to sign in or sign up before continuing.')
  end

end
