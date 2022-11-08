#!/bin/sh

# カレントディレクトリを取得
FILE_PATH=$(
  cd "$(dirname "$0")" || exit
  pwd
)

# アプリケーションディレクトリに移動
cd "$FILE_PATH/../app" || exit

# melos run feature:build_runner:build を実行
melos run feature:build_runner:build
