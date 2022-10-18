# NITO

NITO アプリです。

## GetStarted

以下の手順を踏んで開発に参加しましょう。

### 1. `git clone`

以下のコマンドを実行してクローンします。

```shell
git clone https://github.com/2rabs/nito.git
```

### 2. `make prepare`

プロジェクトのセットアップ処理を `/scripts` ディレクトリ配下に作成し `Makefile` 側でまとめて実行できるようにしています。

```shell
make prepare
```

Supabase の セットアップ時に `Enter your database password:` と問われた場合は [こちらの Wiki](https://www.notion.so/2rabs/Supabase-5e6a3dcca45d4345839515eb7058c608) から取得してください。

## Add Packages

### Package

以下のコマンドを実行してパッケージを作成します。

```shell
make flutter-create-package PACKAGE_NAME=package_name
# or
make flutter-create-package PACKAGE_ROOT=core PACKAGE_NAME=package_name
```

### Plugin

以下のコマンドを実行してプラグインを作成します。

```shell
make flutter-create-plugin PLUGIN_NAME=plugin_name
# or
make flutter-create-plugin PLUGIN_ROOT=feature PLUGIN_NAME=plugin_name
```
