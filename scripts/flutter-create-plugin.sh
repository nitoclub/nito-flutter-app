#!/bin/sh

# カレントディレクトリを取得
FILE_PATH=$(
  cd "$(dirname "$0")" || exit
  pwd
)

# アプリケーションディレクトリに移動
cd "$FILE_PATH/../apps" || exit

# 指定されたディレクトリに移動
PLUGIN_ROOT=$2
cd "$PLUGIN_ROOT" || exit

# Flutter のプラグインを作成
PLUGIN_NAME=$1
fvm flutter create --template=plugin --platforms=android,ios,linux,macos,windows -a kotlin -i swift "$PLUGIN_NAME"