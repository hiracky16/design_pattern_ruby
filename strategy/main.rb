require './player'
require './hand'
require './winning_strategy'
require './prob_strategy'

if ARGV.size != 2
  exit
end

seed1 = ARGV[0].to_i
seed2 = ARGV[1].to_i

player1 = Player.new('Taro', WinningStrategy.new(seed1))
player2 = Player.new('Hana', ProbStrategy.new(seed2))

for i in 1..100
  next_hand1 = player1.next_hand
  next_hand2 = player2.next_hand
  if next_hand1.is_strong_than(next_hand2)
    puts "Winner #{player1.name}"
    puts "Hand is #{next_hand1.to_string}."
    player1.win
    player2.lose
  elsif next_hand2.is_strong_than(next_hand1)
    puts "Winner #{player2.name}"
    puts "Hand is #{next_hand2.to_string}."
    player1.lose
    player2.win
  else
    puts "Even ..."
    player1.even
    player2.even
  end

  puts "Total Result:"
  puts "#{player1.to_string}"
  puts "#{player2.to_string}"
end