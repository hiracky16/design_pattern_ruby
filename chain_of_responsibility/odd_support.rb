require './support'

class OddSupport < Support
  def initialize(name)
    super(name)
  end

  def resolve(trouble)
    trouble.number % 2 == 1 ? true : false
  end
end