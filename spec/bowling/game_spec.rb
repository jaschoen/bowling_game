require 'spec_helper'

describe Game do 
  let(:game) { Game.new }

  def roll_many(n, pins)
    n.times { game.roll(pins) }
  end

  it 'rolls' do 
    game.roll(0)
  end

  it 'scores' do 
    game.score
  end

  it 'scores all gutters as 0' do
    20.times { game.roll(0) }
    expect(game.score).to eq(0)
  end

  it 'scores all 1 pin as 20' do
    20.times {game.roll(1)}
    expect(game.score).to eq(20)
  end
  it 'scores a spare and then 3 as 16' do
    game.roll(5)
    game.roll(5)
    game.roll(3)
    expect(game.score).to eq(16)
  end
end

