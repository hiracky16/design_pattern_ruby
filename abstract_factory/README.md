# Abstract Factory

## とは

- 直訳すると抽象的な工場
- 部品の具体的な実装には注目せずにインターフェースに注目する
- インターフェースだけを使って文品を組み立てて製品にする

## 具体的な工場を追加するのが簡単

- 抽象化してあるパッケージ factory を実装すればどんな工場でも簡単に作れる
- main を変更する必要がない

## 新しい部品を追加するのが難しい

- 新たに picture を追加するとなると listfactory に create_picture を追加することや ListPicture を実装しなくてはならなくなる