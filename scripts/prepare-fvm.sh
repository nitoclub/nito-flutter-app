#!/bin/sh

# カレントディレクトリを取得
FILE_PATH=$(
  cd "$(dirname "$0")" || exit
  pwd
)

# アプリケーションディレクトリに移動
cd "$FILE_PATH/../apps" || exit

# Flutter SDK をインストール
fvm install
