require 'rails_helper'

RSpec.feature "Sessions",  type: :feature do

  scenario "signs up the user", :type => :feature do
    visit "/users/sign_up"
  	email = "example@example.com"
  	fill_in 'user_email', :with => email
  	fill_in 'user_password', :with => "password"
  	fill_in 'user_password_confirmation', :with => "password"
    click_button 'Sign up'
    page.should have_content("Welcome! You have signed up successfully.")
  end

  scenario "signs in the user", :type => :feature do
    visit "/users/sign_up"
    email = "example@example.com"
  	fill_in 'user_email', :with => email
  	fill_in 'user_password', :with => "password"
  	fill_in 'user_password_confirmation', :with => "password"
    click_button 'Sign up'
    visit "/users/sign_out"
    visit "/users/sign_in"
    email = "example@example.com"
    fill_in 'user_email', :with => email
    fill_in 'user_password', :with => "password"
    click_button 'Log in'
    page.should have_content("Signed in successfully.")
  end

  scenario "signs in the user", :type => :feature do
    visit "/users/sign_up"
    email = "example@example.com"
  	fill_in 'user_email', :with => email
  	fill_in 'user_password', :with => "password"
  	fill_in 'user_password_confirmation', :with => "password"
    click_button 'Sign up'
    visit "/users/sign_out"
    page.should have_content("Signed out successfully.")
  end
end
