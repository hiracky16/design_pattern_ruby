# visitor

## とは

- データ構造中にデータを使った処理を別クラスにインスタンスに任せること
- visitor クラスでは visitor（訪問者）のインスタンスを作ってそのクラスが処理を担う

## ダブルディスパッチ

- サンプルプログラム中でいうと element は visitor を accept し visitor は elemtn を visit する
- element と visitor の組によって処理が決定される

## なぜ複雑なことをするのか

- visitor パターンの目的は処理をデータ構造から分離すること
- データ構造は要素を集合としてまとめたりと嘘感をつなぐのに重要だが構造を保持しておくことと構造を基礎とした処理を書くことは別物j
- 今回の場合でいうと File や Directory に一覧表示の処理を書くと各々の構造を保持しておかなくてならなくなる
- ListVisitor を作って処理を外だしすることによって部品としての独立性を高めることができる

## The open-closed principle 拡張については開き、修正については閉じる

- クラス設計では将来の拡張を許すような設計が必要
- 拡張すると既存のクラスを修正しなければならない場合がある
- 拡張は出来ても修正については閉じられているべきという意味

