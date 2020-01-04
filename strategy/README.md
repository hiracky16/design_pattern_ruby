# Strategy

## とは

- プログラミングにおける戦略はアルゴリズムである
- Strategy パターンではアルゴリズムをごっそり交換できるように実装する

## Sttategy クラスを作る理由

- Strategy のインターフェースさえ使えばロジックを変更することが可能
- 移譲すると緩やかな結びつきになるため main や player の内容を変える必要がない
- アルゴリズム間の性能比較なども容易に行える

## 実行中に切り替えることも可能

- プログラム中である条件のとき別のアルゴリズムを使うといった切り替えができる
- 検算に使うこともできる
- 例えば「高速だがバグがあるかもしれないアルゴリズム」と「低速だが確実なアルゴリズム」を用意して前者の検算を後者に行わせる