require './singleton'

puts "start"
obj1 = SingletonClass.instance
obj2 = SingletonClass.instance

if obj1 == obj2
  puts 'obj1 と obj2 は同じインスタンスです。'
else
  puts 'obj1 と obj2 は違うインスタンスです。'
end

puts 'end'