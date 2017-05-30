require 'rails_helper'

RSpec.feature "photos", type: :feature do
  scenario 'user uploads an image' do
    visit '/photos/new'
    #fill_in 'title', with: "Riot in Brighton"
    page.attach_file("post_image", Rails.root + 'app/assets/images/brighton.jpeg')
    click_on 'Submit'
    expect(page).to have_content 'brighton.jpeg'
  end
end
