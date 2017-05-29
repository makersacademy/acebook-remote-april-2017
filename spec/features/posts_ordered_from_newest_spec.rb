# require 'rails_helper'
#
# feature 'posts are visible starting with the newest one' do
#   scenario 'one can see a posts starting with the latest' do
#     # Post.create, params { post: { message: 'My first post'} }
#     # Post.create('My second post')
#     post :create, params: { post: { message: 'My first post'} }
#     post :create, params: { post: { message: 'My second post'} }
#     expect(Post.first).to eq('My second post')
#   end
# end
