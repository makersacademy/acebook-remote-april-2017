require 'rails_helper'
require './app/models/post'
require 'orderly'

feature 'posts are visible starting with the newest one' do
  scenario 'one can see a posts starting with the latest' do
    create_a_post("My first post!")
    create_a_post('My second post!')
    visit "/posts"
    expect('My second post').to appear_before('My first post')
  end
end
