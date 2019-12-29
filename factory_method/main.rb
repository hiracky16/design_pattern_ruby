require './idcard/idcard_factory'

factory = IdCardFactory.new()

card1 = factory.create('てすと')
card2 = factory.create('テスト')
card3 = factory.create('test')

card1.use
card2.use
card3.use
