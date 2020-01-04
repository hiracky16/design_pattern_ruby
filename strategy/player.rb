class Player
  attr_accessor :name

  def initialize(name, strategy)
    @name = name
    @strategy = strategy
    @gamecount = 0
    @wincount = 0
    @losecount = 0
  end

  def next_hand
    @strategy.next_hand
  end

  def win
    @strategy.study(true)
    @wincount += 1
    @gamecount += 1
  end

  def lose
    @strategy.study(false)
    @losecount += 1
    @gamecount += 1
  end

  def even
    @gamecount += 1
  end

  def to_string
    "[#{@name}: #{@gamecount} games, #{@wincount} wins, #{@losecount} lose]"
  end
end