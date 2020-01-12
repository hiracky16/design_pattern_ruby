class Visitor
  def visit(file: nil, directory: nil)
    raise NoImplementedError
  end
end