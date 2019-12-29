require './char_display'
require './string_display'

char = CharDisplay.new('H')
string1 = StringDisplay.new('Hello world.')
string2 = StringDisplay.new('こんにちは')

char.display
string1.display
string2.display