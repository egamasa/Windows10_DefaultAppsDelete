# Windows 10 pre-installed apps delete batch

$Apps = @(
    "Microsoft.MicrosoftStickyNotes",          # 付箋
    "Microsoft.MSPaint",                       # ペイント3D
    "Microsoft.ScreenSketch",                  # 切り取り＆スケッチ
    "Microsoft.Windows.Photos",                # フォト
    "Microsoft.WindowsAlarms",                 # アラーム＆クロック
    "Microsoft.WindowsCamera",                 # カメラ
    "Microsoft.WindowsMaps",                   # マップ

    "Microsoft.GetHelp",                       # 問い合わせ
    "Microsoft.Getstarted",                    # ヒント
    "Microsoft.WindowsFeedbackHub",            # フィードバックHub

    "*bing*",                                  # Bing（マネー/スポーツ/ニュース/天気）
    "Microsoft.5220175982889",                 # テレBing
    "Microsoft.OneConnect",                    # 有料Wi-Fi＆携帯ネットワーク
    "Microsoft.YourPhone",                     # モバイル コンパニオン

    # Microsoft Apps
    "Microsoft.Office.OneNote",                # OneNote
    "Microsoft.OfficeLens",                    # OfficeLens
    "Microsoft.MicrosoftOfficeHub",            # 新しいOfficeを始めよう

    # Communicate & SNS
    "Microsoft.People",                        # People
    "microsoft.windowscommunicationsapps",     # メール＆カレンダー
    "Microsoft.Messaging",                     # メッセージング
    "Microsoft.SkypeApp",                      # Skypeを始めよう
    "7EE7776C.LinkedInforWindows",             # LinkedIn
    "Facebook.Facebook",                       # Facebook
    "NAVER.LINE*",                             # LINE
    "*Twitter",                                # Twitter

    # Multimedia
    "Microsoft.WindowsSoundRecorder",          # ボイスレコーダー
    "Microsoft.ZuneMusic",                     # Groove ミュージック
    "Microsoft.ZuneVideo",                     # 映画＆テレビ
    "DolbyLaboratories.DolbyAccess",           # Dolby Access
    "SpotifyAB.SpotifyMusic",                  # Spotify
    "4DF9E0F8.Netflix",                        # Netflix

    # xR
    "Microsoft.Microsoft3DViewer",             # 3D ビューアー
    "Microsoft.3DBuilder",                     # 3D Builder
    "Microsoft.Print3D",                       # Print 3D
    "Microsoft.MixedReality.Portal",           # Mixed Reality ポータル

    # Game
    "Microsoft.MicrosoftSolitaireCollection",  # Microsoft Solitaire Collection
    "828B5831.HiddenCityMysteryofShadows",     # Hidden City アイテム探しアドベンチャー
    "A278AB0D.MarchofEmpires",                 # マーチ オブ エンパイア
    "Microsoft.MinecraftUWP",                  # Minecraft
    "flaregamesGmbH.RoyalRevolt2",             # RoyalRevolt 2
    "king.com.CandyCrushSaga",                 # Candy Crush Saga
    "king.com.CandyCrushSodaSaga",             # Candy Crush Soda Saga
    "king.com.CandyCrushFriends",              # Candy Crush Friends
    "king.com.FarmHeroesSaga",                 # Farm Heroes Saga
    "king.com.BubbleWitch3Saga",               # バブルウィッチ3

    # Xbox
    "Microsoft.Xbox.TCUI",                     # Xbox TCUI
    "Microsoft.XboxApp",                       # Xbox コンパニオン
    "Microsoft.XboxGameOverlay",               # Xbox ゲームバー
    "Microsoft.XboxIdentityProvider",          # Xbox IDプロバイダー
    "Microsoft.XboxSpeechToTextOverlay",

    # Third-Party Tools
    "89006A2E.AutodeskSketchBook",             # SketchBook
    "Fitbit.FitbitCoach",                      # フィットネス
    "KeeperSecurityInc.Keeper",                # Keeper
    "ThumbmunkeysLtd.PhototasticCollage"       # Phototastic Collage
)

$Apps | foreach {
    Get-AppxPackage $_ | remove-AppxPackage
    Get-AppxProvisionedPackage -Online | Where DisplayName -Like $_ | Remove-AppxProvisionedPackage -Online
}
