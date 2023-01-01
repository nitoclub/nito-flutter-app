#!/bin/sh

# カレントディレクトリを取得
FILE_PATH=$(
  cd "$(dirname "$0")" || exit
  pwd
)

# アプリケーションディレクトリに移動
cd "$FILE_PATH/../apps" || exit

# 指定されたディレクトリに移動
PACKAGE_ROOT=$2
cd "$PACKAGE_ROOT" || exit

# Flutter のパッケージを作成
PACKAGE_NAME=$1
fvm flutter create --template=package "$PACKAGE_NAME"
