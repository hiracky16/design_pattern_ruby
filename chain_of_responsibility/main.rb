require './no_support'
require './odd_support'
require './special_support'
require './limit_support'
require './trouble'

alice = NoSupport.new('Ajlice')
bob = LimitSupport.new('Bob', 100)
charlie = SpecialSupport.new('Charlie', 429)
diana = LimitSupport.new('Diana', 200)
elmo = OddSupport.new('Elmo')
fred = LimitSupport.new('Fred', 300)

alice.next(bob).next(charlie).next(diana).next(elmo).next(fred)

index  = 0
while index < 500 do
  alice.support(Trouble.new(index))
  index = index + 33
end