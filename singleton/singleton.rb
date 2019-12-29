require 'singleton'

class SingletonClass
  include Singleton

  # single クラスを include するだけで ruby ではシングルトンが表現できる
  # def self.instance
  #   @@singleton
  # end

  # クラス変数にはアットマークを2つつける
  # @@singleton = SingletonClass.new

  private

  def initialize
    puts 'インスタンスを生成しました。'
  end
end