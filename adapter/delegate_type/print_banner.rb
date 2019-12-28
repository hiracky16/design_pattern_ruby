require '../print'
require './banner'

# delegate を使うために必要
require 'forwardable'

class PrintBanner < Print
  extend Forwardable
  def_delegators :@banner , :show_with_paren, :show_with_aster

  def initialize(string)
    @banner = Banner.new(string)
  end

  def print_week
    show_with_paren
  end

  def print_strong
    show_with_aster
  end
end