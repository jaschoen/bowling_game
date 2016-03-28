class Game

  FRAMES = 10
  
  def initialize
    @throws = []
  end

  def roll(pins)
    @throws << pins
  end

  def score
    score = 0
    i     = 0
    FRAMES.times do
      if strike?(i)
        score += strike_score(i)
        i += 1
      elsif spare?(i)
        score += spare_score(i)
        i += 2
      else
        score += regular_score(i)
        i += 2
      end
    end
    score
  end

  def spare?(i)
    (@throws[i] + @throws[i + 1]) == 10
  end

  def strike?(i)
    @throws[i]== 10
  end

  def regular_score(i)
    @throws[i] + @throws[i+1]
  end

  def spare_score(i)
    10 + @throws[i+2]
  end

  def strike_score(i)
    10 + @throws[i+1] + @throws[i+2]
  end

end





