feature 'returning hello' do
  scenario 'print hello' do
    visit('/')
    expect(page).to have_content 'Hello'
  end
end
