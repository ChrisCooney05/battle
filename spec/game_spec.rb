require 'game'

describe Game do
  let(:player) {double(:player)}
  let(:game) {Game.new}
  it 'Should attack player' do
    expect(player).to receive(:receive_damage)
    game.attack(player)
  end
end
