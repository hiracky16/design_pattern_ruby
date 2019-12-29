# Factory Method

## とは

- template method はスーパークラスで骨組みを作りサブクラス側で具体的な処理を肉付けするパターン
- このパターンをインスタンス生成に応用したもの
- インスタンスの作り方をスーパークラスで決めるがクラス名までは決めない

## framework

- factory（工場）の流れを書く場所
- 違う製品を扱う場合でも television_factory, television を実装すればできる
- framework 内のソースで idcard パッケージを require していないため使い回すことができる

## パターン利用者と開発者間の意思疎通

- template, factory method はスーパークラスに実装の流れが記されているため少し煩雑
- パターンを使う際はパターン名や意図をコメントなどを忘れないこと
