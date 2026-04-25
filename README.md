# Wezterm設定
Windowsの場合

適当な場所にクローン

Weztermをインストールすると、おそらく設定ファイルが`$HOME\.config\wezterm\wezterm.lua`にあるので、適当に移動させてバックアップしておく

Weztermの設定ファイルの場所にシンボリックリンクを貼る
```
# PowerShell (管理者権限)
New-Item -ItemType SymbolicLink -Path "$HOME\.config\wezterm\wezterm.lua" -Target "$HOME\path\to\wezterm.lua"
```
