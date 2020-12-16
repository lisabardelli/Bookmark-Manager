
feature 'adding bookmarks' do
scenario "access the new page" do
    visit('/addbookmark')
    expect(page).to have_content('Add a bookmark')
end

scenario "tests the form" do
    visit('/addbookmark')
    expect(page).to have_field("title")
    expect(page).to have_field("url")
    expect(page).to have_button("Submit")
end
end