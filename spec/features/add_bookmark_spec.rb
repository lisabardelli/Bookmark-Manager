feature 'add bookmark' do
  scenario 'allows user to add a bookmark to the list' do
    visit '/'
    click_button('Add')
    expect(page).to have_field("add_url")
    expect(page).to have_button("Submit")
  end

  scenario 'lists bookmark just added' do
    visit '/'
    click_button('Add')
    fill_in('add_url', with: 'http://www.bbc.co.uk')
    fill_in('add_title', with: 'BBC')
    click_button('Submit')
    expect(page).to have_content('http://www.bbc.co.uk')
  end
end
