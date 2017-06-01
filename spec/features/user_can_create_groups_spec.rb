require 'rails_helper'

RSpec.feature "Groups",  type: :feature do
  feature "Create groups" do
    scenario "User can create a group" do
      visit '/groups/index'
      click_button 'New Group'
      fill_in "Group Name", with: "Group 1"
      click_button 'Submit'
      expect(page).to have_content 'New group created'
    end
  end
end 
