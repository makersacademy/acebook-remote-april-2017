require 'rails_helper'

def sign_up(email = "example@example.com")
  visit "/users/sign_up"
  fill_in 'user_email', :with => email
  fill_in 'user_password', :with => "password"
  fill_in 'user_password_confirmation', :with => "password"
  click_button 'Sign up'
end

def log_in
  visit "/users/sign_in"
  email = "example@example.com"
  fill_in 'user_email', :with => email
  fill_in 'user_password', :with => "password"
  click_button 'Log in'
end

def create_a_post(text)
  visit "/posts"
  click_button "New Post"
  fill_in "Message", with: text
  click_button "Submit"
end

def sign_up_and_add_friend
  sign_up("friend@example.com")
  click_on 'Log Out'
  sign_up
  click_on("Users")
  first(:link, "Add Friend").click
end
