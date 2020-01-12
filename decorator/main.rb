require './string_display'
require './side_border'
require './full_border'

d1 = StringDisplay.new('Hello World.')
d2 = SideBorder.new(d1, '#')
d3 = FullBorder.new(d2)

d1.show
d2.show
d3.show

d4 = SideBorder.new(
  FullBorder.new(
    FullBorder.new(
      SideBorder.new(
        FullBorder.new(
          StringDisplay.new('こんにちは')
        ),
        '*'
      )
    )
  ),
  '/'
)
d4.show
