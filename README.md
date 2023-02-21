# NITO

NITO アプリです。

## GetStarted

以下の手順を踏んで開発に参加しましょう。

### 1. `git clone`

以下のコマンドを実行してクローンします。

```shell
git clone https://github.com/2rabs/nito.git
```

### 2. `make setup`

以下のコマンドを実行し、プロジェクトをセットアップします。

```shell
$ make setup
```

Supabase の セットアップ時に `Enter your database password:` と問われた場合は [こちらの Wiki](https://www.notion.so/2rabs/Supabase-5e6a3dcca45d4345839515eb7058c608) から取得してください。

### 3. `.env`

`/app/frontend` ディレクトリ配下にある `.env.example` を参考に `.env` ファイルを作成します。

```text
SUPABASE_URL=YOUR_SUPABASE_URL
SUPABASE_ANON_KEY=YOUR_SUPABASE_ANON_KEY
```

- Supabase の情報は [こちら](https://app.supabase.com/project/hwxxihvcszfhaxlguajv/settings/api) から取得できます。

## Others

- [Development](docs/Development.md)