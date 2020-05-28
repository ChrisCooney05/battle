
feature 'Infrastructure test' do
 scenario "Displays 'Hello Battle!' " do
  visit('/')
  expect(page).to have_content('Hello Battle!')
 end

 scenario "Displays both player names, entered into forms" do
   visit('/')
   fill_in('player1', with: 'Dave')
   fill_in('player2', with: 'John')
   click_button('Submit')
   expect(page).to have_content('Dave vs John')
 end
end
