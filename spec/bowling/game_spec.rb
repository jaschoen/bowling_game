require 'spec_helper'

describe Game do 
  let(:game) { Game.new }
  def roll_many(n, pins)
    n.times { game.roll(pins) }
  end


  it 'scores all gutters as 0' do
    roll_many(20, 0)
    expect(game.score).to eq(0)
  end

  it 'scores all 1 as 20' do
    roll_many(20, 1)
    expect(game.score).to eq(20)
  end

  it 'scores a spare' do 
    game.roll(5)
    game.roll(5)
    game.roll(3)
    roll_many(17, 0)
    expect(game.score).to eq(16)
  end

  it 'returns 24 for a strike, then 3 then 7' do
    game.roll(10)
    game.roll(3)
    game.roll(4)
    roll_many(17, 0)
    expect(game.score).to eq(24)
  end

  it 'scores a perfect game' do
    roll_many(22, 10)
    expect(game.score).to eq(300)
  end

end

