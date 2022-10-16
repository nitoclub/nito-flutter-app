#!/bin/sh

# カレントディレクトリを取得
FILE_PATH=$(
  cd "$(dirname "$0")" || exit
  pwd
)

# ルートディレクトリに移動
cd "$FILE_PATH/../" || exit

# Supabase にログイン
supabase login

# Supabase の環境とリンク
supabase link --project-ref hwxxihvcszfhaxlguajv
