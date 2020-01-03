require './string_display_impl'
require './display'
require './count_display'

d1 = Display.new(StringDisplayImpl.new('Hello Japan.'))
d2 = CountDisplay.new(StringDisplayImpl.new('Hello World.'))
d3 = CountDisplay.new(StringDisplayImpl.new('Hello Universe.'))

d1.display
d2.display
d3.display

d3.multi_display(5)