require './display'

class CountDisplay < Display
  def initialize(impl)
    super(impl)
  end

  def multi_display(times)
    open
    for i in 1..times
      print
    end
    close
  end
end