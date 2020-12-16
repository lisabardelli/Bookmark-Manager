feature 'viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create('Makers', 'http://www.makersacademy.com')
    Bookmark.create('DAS', 'http://www.destroyallsoftware.com')
    Bookmark.create('Google', 'http://www.google.com')

    visit('/bookmarks')

    expect(page).to have_content "Makers"
    expect(page).to have_content "DAS"
    expect(page).to have_content "Google"
  end
end
