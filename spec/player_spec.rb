require 'player'

describe Player do
  let(:player) { Player.new('Dave') }

  it 'Should return the players name' do
    expect(player.get_name).to eq("Dave")
  end
end
