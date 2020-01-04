class Hand
  attr_accessor :handvalue
  # グーを表す
  HANDVALUE_GUU = 0
  # チョキを表す
  HANDVALUE_CHO = 1
  # パーを表す
  HANDVALUE_PAA = 2


  def initialize(value)
    @handvalue = value
    @name = ['グー', 'チョキ', 'パー']
  end

  def self.hand(handvalue)
    Hand.new(handvalue)
  end

  def is_strong_than(h)
    fight(h) == 1
  end

  def is_week_than(h)
    fight(h) == -1
  end

  def fight(h)
    if self == h
      return 0
    elsif (@handvalue + 1) % 3 == h.handvalue
      return 1
    else
      return -1
    end
  end

  def to_string
    @name[@handvalue]
  end
end