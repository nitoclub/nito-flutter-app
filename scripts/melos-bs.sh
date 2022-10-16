#!/bin/sh

# カレントディレクトリを取得
FILE_PATH=$(
  cd "$(dirname "$0")" || exit
  pwd
)

# アプリケーションディレクトリに移動
cd "$FILE_PATH/../app" || exit

# melos bs を実行
fvm flutter pub global run melos bs
