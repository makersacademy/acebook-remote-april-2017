require 'rails_helper'

RSpec.feature "Sessions",  type: :feature do

  scenario "signs up the user", :type => :feature do
    visit "/users/sign_up"
  	email = "example@example.com"
  	fill_in 'user_email', :with => email
  	fill_in 'user_password', :with => "password"
  	fill_in 'user_password_confirmation', :with => "password"
    save_and_open_page

  	click_button 'Sign up'
    save_and_open_page
    page.should have_content("Welcome! You have signed up successfully.")
  end
end
