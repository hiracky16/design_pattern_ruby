require_relative './framework/manager'
require './message_box'
require './under_line_pen'

manager = Manager.new

upen = UnderLinePen.new('~')
mbox = MessageBox.new('*')
sbox = MessageBox.new('/')

manager.register('strong message', upen)
manager.register('warning box', mbox)
manager.register('slash box', sbox)

p1 = manager.create('strong message')
p1.use('hello world')
p2 = manager.create('warning box')
p2.use('hello world')
p3 = manager.create('slash box')
p3.use('hello world')
