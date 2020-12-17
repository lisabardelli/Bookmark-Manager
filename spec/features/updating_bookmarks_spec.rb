feature 'When I want to be able to update an existing bookmark' do
  scenario 'I want to find the bookmark by title' do
    Bookmark.create("Test", "www.test.com")
    visit('/bookmarks')
    click_button("Update")
    fill_in("title", with: 'Test')
    click_button("Find")
    expect(page).to have_button("Update")

  end

end
