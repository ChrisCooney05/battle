
feature 'Infrastructure test' do
 scenario "Displays 'Hello Battle!' " do
  visit('/')
  expect(page).to have_content('Hello Battle!')
 end
end