require 'rails_helper'

RSpec.feature "View groups", type: :feature do
	before(:each) { 
		groups = double(:groups)
		group1 = double(:group1)
		group2 = double(:group2)
		allow(group1).to receive(:title) {
			"Group name 1"
		}
		allow(group2).to receive(:title) {
			"Group name 2"
		}
		allow(group2).to receive(:description) {
			"Group description 2"
		}
		allow(group2).to receive(:description) {
			"Group description 2"
		}
		allow(groups).to receive(:list) {
			[group1, group2]
		} 
	}

  scenario "Can visit a page to view list of all groups" do
    visit "/groups"
    expect(page.body).to have_css("li", count: 2)
    expect(page.body).to have_content("Group name 1", "Group description 1")
    expect(page.body).to have_content("Group name 2", "Group description 2")
  end
end