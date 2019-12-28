require './banner'
require '../print'

class PrintBanner < Print
  include Banner

  def print_banner(string)
    super(string)
  end

  def print_week
    show_with_paren
  end

  def print_strong
    show_with_aster
  end
end