# Windows 10 プリインストールアプリ削除PowerShellバッチ

## 使用方法
PowerShellで DeleteApps.ps1 をそのまま実行するだけ

## 削除対象アプリの選択
削除しないアプリの行頭に「#」を付けてコメントアウトする

`Get-AppxPackage Microsoft.MSPaint | Remove-AppxPackage` ←削除される  
`# Get-AppxPackage *soundrec* | Remove-AppxPackage` ←削除されない
