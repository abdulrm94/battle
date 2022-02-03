feature 'Enter names' do
  scenario 'submit names' do
    visit('/')
    fill_in :player1, with: 'Sapna'
    fill_in :player2, with: 'Abdul'
    click_button 'Lets play'

    save_and_open_page

    expect(page).to have_content 'Sapna vs Abdul'
  end
end
