class Support
  def initialize(name)
    @name = name
  end

  def next(next_support)
    @next_support = next_support
  end

  def support(trouble)
    if resolve(trouble)
      done(trouble)
    elsif !@next_support.nil?
      @next_support.support(trouble)
    else
      fail(trouble)
    end
  end

  def to_string
    "[#{@name}]"
  end

  def resolve
    raise NoImplementedError
  end

  def done(trouble)
    puts "#{trouble.to_string} is resolved by #{self.to_string}."
  end

  def fail(trouble)
    puts "#{trouble.to_string} cannot be resolved."
  end
end