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

def upload_a_photo
  visit "/photos"
  click_on "New photo"
  fill_in "title", with: "test_photo_title"
  page.attach_file('photo_image', Rails.root + 'app/assets/images/brighton.jpg')
  click_button "Upload Photo"
end

def sign_up_friend
  visit "/users/sign_up"
  email = "friend@example.com"
  fill_in 'user_email', :with => email
  fill_in 'user_password', :with => "password"
  fill_in 'user_password_confirmation', :with => "password"
  click_button 'Sign up'
end

def sign_up_and_add_friend
  sign_up_friend
  click_on 'Log Out'
  sign_up
  click_on("Users")
  first(:link, "Add Friend").click
end
