# iterator パターン

## 自走がどうであれ iterator が使える

もし仮に bookshelf の実装が array から別のものにかわっても iterator を修正すれば main は変更せずにすむ
これは while ループが bookshelf の実装に依存しないことを表す

## Aggregate と Iterator

aggregate と iterator は対になっている。
1 つの aggregate に対して複数の iterator を持つことができる
