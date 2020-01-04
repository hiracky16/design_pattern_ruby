require './strategy'
require './hand'

# 前回の勝負で勝った手を出す
# 前回の勝負で負けたら乱数で決める
class WinningStrategy < Strategy
  def initialize(seed)
    @random = Random.new(seed)
    @won = false
  end

  def next_hand
    if (!@won)
      @prev_hand = Hand.hand(@random.rand(3))
    end
    @prev_hand
  end

  def study(win)
    @won = win
  end
end