# 戦略のための抽象クラス
class Strategy
  def next_hand
    raise NoImplementedError
  end

  def study(win)
    raise NoImplementedError
  end
end