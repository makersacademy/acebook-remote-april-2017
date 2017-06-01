require 'rails_helper'

RSpec.feature "Groups",  type: :feature do
  feature "Create groups" do
    scenario "User can create a group" do
      visit '/groups'
      click_on 'new-group'
      fill_in 'group_title', with: 'Group 1'
      click_button 'Submit'
      expect(current_path).to eq '/groups'
      expect(page).to have_content 'Group 1'
    end
  end
end
