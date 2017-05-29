require 'rails_helper'
require './app/models/post'
require 'orderly'

feature 'posts are visible starting with the newest one' do
  scenario 'one can see a posts starting with the latest' do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "My first post!"
    click_button "Submit"
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "My second post!"
    click_button "Submit"
    visit "/posts"
    expect('My second post').to appear_before('My first post')
    end
end
