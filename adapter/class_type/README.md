# Adapter

## 大事なこと

- main で print インターフェースのメソッドを使ってコミニケーションしていること
- show_with_paren, show_with_aster を使っていないこと
- ノートパソコンは直流 12 ボルトあれば正しく動作するがそれを支えているのがアダプターの向こうにある交流 100 ボルト
- PrintBanner がどういうふうに実現されているかは main から知らない = main を変更せずに PrintBanner を変更することができる
