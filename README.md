# dotfiles

chezmoiで管理しているWindows向けの設定ファイル

## 内容

- Git
- Neovim
- lazygit

## 必要なもの

- [chezmoi](https://www.chezmoi.io/)
- [Git](https://git-scm.com/)
- [Neovim](https://neovim.io/) 0.11以降
- [difftastic](https://difftastic.wilfred.me.uk/)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

## セットアップ

```powershell
chezmoi init --apply nnna1224
```

初回実行時に、次の項目を設定する。

- Gitのユーザー名とメールアドレス
- [`presence.nvim`](https://github.com/andweeb/presence.nvim)の追加（既定は無効）

`presence.nvim`を有効にすると、Neovimでの作業状況がDiscordに表示される。

## 基本操作

```powershell
# リポジトリの変更を取得して適用
chezmoi update

# 差分を確認して適用
chezmoi diff
chezmoi apply
```

## Neovim

Leaderキーは`Space`。

| キー | 動作 |
| --- | --- |
| `jj` | Insert／Terminalモードを抜ける |
| `<C-h>` / `<C-l>` | 前／次のバッファ |
| `<Leader>e` | ファイラー |
| `<Leader>ff` | ファイル検索 |
| `<Leader>fg` | 全文検索 |
