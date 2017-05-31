# # require 'rails_helper'
# #
# # RSpec.feature "Sign Up ", type: :feature do
# #   scenario "User can sign up in his account" do
# #     visit "/users/sign_up"
# #     fill_in "Email", with: "email@gmail.com"
# #     fill_in "Password", with: "123456"
# #     fill_in "Password confirmation", with: "123456"
# #     click_button "Sign up"
# #     expect("/").to have_content("Welcome! You have signed up successfully.")
# #   end
# # end
require 'rails_helper'
#
RSpec.describe "Sessions" do

  it "signs user in and out", :type => :feature do
    visit "/users/sign_up"
  	email = "example@example.com"
  	fill_in 'user_email', :with => email
  	fill_in 'user_password', :with => "password"
  	fill_in 'user_password_confirmation', :with => "password"
  	click_button 'Sign up'
  	expect(page).to have_content "Welcome! You have signed up successfully."
  end

end
