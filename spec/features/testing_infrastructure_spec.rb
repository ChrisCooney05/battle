# frozen_string_literal: true

feature 'Infrastructure test' do
  scenario "Displays 'Hello Battle!' " do
    visit('/')
    expect(page).to have_content('Hello Battle!')
  end

  scenario 'Displays both player names, entered into forms' do
    sign_in_and_play
    expect(page).to have_content('Dave vs John')
  end

  scenario "Be able to see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content('Dave vs John 50')
  end

  scenario "Player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_button('Player 1 Attack')
    expect(page).to have_content('Player 1 Hit')
  end

  scenario "Player 1 attacks player 2 looses HP" do
    sign_in_and_play
    click_button('Player 1 Attack')
    expect(page).to have_content('40')
  end


end
