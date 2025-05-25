# My Dotfiles
一応設定ファイルなどの競合がある場合はバックアップを取るが，基本的に**Dockerfileでの使用を前提としている**．

## Dockerfile
サンプル
```Dockerfile
# ベースイメージ(好きなイメージに変更)
FROM rust:slim

# 作業ディレクトリを変更
# dotfilesを置く場所になる
WORKDIR /root

# クローンするために，gitだけインストール
RUN apt update && apt -y upgrade &&\
    apt install -y bash git

# Dotfilesをクローンし，セットアップを実行
RUN git clone https://github.com/nnna1224/dotfiles.git &&\
    cd dotfiles &&\
    chmod u+x install.sh &&\
    ./install.sh

# 作業ディレクトリを変更
# ここでコンテナ実行時の場所を指定する
WORKDIR /workspace

# デフォルトのコマンドを設定
CMD ["bash"]
```
## Dockerコンテナ内で行うこと
デフォルトではlspサーバをインストールしない．  
そのため，nvimのコマンドモードで`Mason`を実行して，好きなlspサーバをインストールする．  
(あるいは他の方法でも良い．)
### lspサーバメモ
- rust: rust-analyzer
- python: pylsp
    - pyrightを使う場合はnodejsとnpmをインストールする．
    - transformersライブラリの都合上，研究室ではpylspを使うことが多い．
- c/cpp: clang
    - unzipをインストールする．
