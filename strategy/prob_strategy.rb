require './strategy'
require './hand'

# 確率で次の手を考える
# history フィールドで過去の勝敗を記録して確率計算する
# history[前回出した手][今回出す手]
# history[0][0] の場合、前回グーを出して今回もグーを出すと勝つ確率
class ProbStrategy < Strategy
  def initialize(seed)
    @random = Random.new(seed)
    @won = false
    @prev_handvalue = 0
    @current_handvalue = 0
    @history = ary = Array.new(3, Array.new(3, 1))
  end

  def next_hand
    bet = @random.rand(get_sum(@current_handvalue))
    handvalue = 0
    if (bet < @history[@current_handvalue][0])
      handvalue = 0
    elsif (bet < @history[@current_handvalue][0] + @history[@current_handvalue][1])
      handvalue = 1
    else
      handvalue = 2
    end
    @prev_handvalue = @current_handvalue
    @current_handvalue = handvalue
    Hand.hand(handvalue)
  end

  def study(win)
    if (win)
      @history[@prev_handvalue][@current_handvalue] += 1
    else
      @history[@prev_handvalue][(@current_handvalue + 1) % 3] += 1
      @history[@prev_handvalue][(@current_handvalue + 1) % 2] += 1
    end
  end

  private
  def get_sum(hv)
    sum = 0
    for i in 0..2
      sum = sum + @history[hv][i]
    end
    sum
  end
end