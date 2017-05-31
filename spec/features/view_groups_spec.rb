require 'rails_helper'

RSpec.feature "View groups", type: :feature do
	before(:each) { 
	}
  scenario "Can visit a page to view list of all groups" do
    visit "/groups"
    expect(page.body).to have_css("li", count: 2)
    expect(page.body).to have_content("Group name 1", "Group description 2")
    expect(page.body).to have_content("Group name 2", "Group description 2")
  end
end

