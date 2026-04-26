# Wezterm設定

Windowsの場合

適当な場所にクローン

Weztermをインストールすると、おそらく設定ファイルが`$HOME\.config\wezterm\wezterm.lua`にあるので、適当に移動させてバックアップしておく

Weztermの設定ファイルの場所にシンボリックリンクを貼る

```
# PowerShell (管理者権限)
New-Item -ItemType SymbolicLink -Path "$HOME\.config\wezterm\wezterm.lua" -Target "$HOME\path\to\wezterm.lua"
```

## フォントのインストール（Windows）

「白源」を使用。
https://github.com/yuru7/HackGen

上記のGitHubページからttfファイルをダウンロード（Nerd Fonts合成版を選ぶ）

`HackGen35ConsoleNF-Regular.ttf`を右クリックしてインストール

※フォントアップデートの際は上記ダウンロードページにあるように既存フォントファイルを削除してから新規インストールするとよい
