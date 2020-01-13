class Trouble
  attr_accessor :number
  def initialize(number)
    @number = number
  end

  def to_string
    "[Trouble #{@number}]"
  end
end