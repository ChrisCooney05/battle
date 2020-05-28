class Player
  DEFAULT_HP = 50
  DAMAGE = 10
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_damage
    @hp -= DAMAGE
  end

end
