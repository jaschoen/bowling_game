class Game
  
  def initialize
    @throws = []
  end

  def roll(pins)
    @throws << pins
  end

  def score
    score = 0
    i     = 0
    10.times do
      if spare?(i)
        score += (10 + @throws[i+2])
        i += 2
      else
        score += (@throws[i] + @throws[i + 1])
        i += 2
      end
      # puts "score: #{score}"
      # score
    end
    score
  end

  def spare?(i)
    (@throws[i] + @throws[i + 1]) == 10
  end

  

end

# g = Game.new
# g.roll(5)
# g.roll(5)
# g.roll(3)
# 17.times {g.roll(0)}
# puts "score: #{g.score}"




