feature "Photo's only visible to signed in users" do
  scenario "users must be logged in to see photos" do
    visit "/photos"
    expect(page).to have_content('You need to sign in or sign up before continuing.')
  end
end
