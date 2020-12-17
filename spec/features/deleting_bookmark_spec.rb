feature "deleting bookmarks" do
  scenario "deletes one bookmark from the list" do
    Bookmark.create('Test1', "http://www.test1.com")
    Bookmark.create('Test2', "http://www.test2.com")
    visit('/')
    click_button("Delete")
    fill_in('title', with: 'Test2')
    fill_in('url', with: "http://www.test2.com")
    click_button("Delete")
    expect(page).to have_content('Test1')
    expect(page).not_to have_content('Test2')
  end

end
