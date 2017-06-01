require 'rails_helper'

feature 'Newsfeed visible only to signed in users' do
  scenario 'user signes in and sees newsfeed' do
    sign_up
    click_on 'Sign Out'
    sign_in
    expect(current_path).to eq('/')
  end

  scenario 'user is not sign in and does not see the newsfeed' do
    visit ('/')
    expect(current_path).to eq('users/sign_up')
  end

end
