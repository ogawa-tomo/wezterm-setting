# Wezterm設定

## Weztermのインストール

適当にインストール

## 設定ファイルの配置

本リポジトリを適当な場所にクローン

```
cd ~/dotfiles
git clone https://github.com/ogawa-tomo/wezterm-setting.git
```

### Windowsの場合

Weztermをインストールすると、おそらく設定ファイルが`$HOME\.config\wezterm\wezterm.lua`にあるので、適当に移動させてバックアップしておく

Weztermの設定ファイルの場所にシンボリックリンクを貼る

```
# PowerShell (管理者権限)
New-Item -ItemType SymbolicLink -Path "$HOME\.config\wezterm\wezterm.lua" -Target "$HOME\path\to\wezterm.lua"
```

### Macの場合

既存の設定ファイルをバックアップ（存在する場合）

```
mkdir -p ~/.config/wezterm
if [ -f ~/.config/wezterm/wezterm.lua ] && [ ! -L ~/.config/wezterm/wezterm.lua ]; then
  mv ~/.config/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua.bak
fi
```

シンボリックリンクを貼る

```
ln -s ~/dotfiles/wezterm-setting/wezterm.lua ~/.config/wezterm/wezterm.lua
```

## フォントのインストール（Windows）

「白源」を使用。
<https://github.com/yuru7/HackGen>

上記のGitHubページからttfファイルをダウンロード（Nerd Fonts合成版を選ぶ）

Windowsの場合、`HackGenConsoleNF-Bold.ttf`を右クリックしてインストール

Macの場合、`HackGenConsoleNF-Bold.ttf`をダブルクリックしてインストール

※フォントアップデートの際は上記ダウンロードページにあるように既存フォントファイルを削除してから新規インストールするとよい
