class Game
  def initialize
    @score        = 0
    @rolls        = []
    @shot         = 1
    @spare        = false

  end

  def roll(pins)
    @rolls << pins
  end

  def score
    @rolls.each do |roll|
      @score += roll
      
    end

    @score
  end
end




