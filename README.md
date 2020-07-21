# Windows 10 プリインストールアプリ削除バッチ

## 使用方法
`DeleteApps.ps1` を管理者権限で実行

## 削除対象アプリの選択
削除しないアプリの行頭に `#` を付けてコメントアウトする

``` powershell
$Apps = @(
    ...
    # "Microsoft.MicrosoftStickyNotes",    # 削除されない
    "Microsoft.MSPaint",                   # 削除される
    ...
)
```
