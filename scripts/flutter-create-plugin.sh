#!/bin/sh

# カレントディレクトリを取得
FILE_PATH=$(
  cd "$(dirname "$0")" || exit
  pwd
)

# アプリケーションディレクトリに移動
cd "$FILE_PATH/../app" || exit

# 指定されたディレクトリに移動
PLUGIN_ROOT=$2
cd "$PLUGIN_ROOT" || exit

# Flutter のプラグインを作成
PLUGIN_NAME=$1
fvm flutter create --template=plugin "$PLUGIN_NAME"
