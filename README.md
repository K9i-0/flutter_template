# Flutter Template

Flutterアプリを作るときに使えるテンプレートリポジトリです。

## 使ってるライブラリ等
### 状態管理
[riverpod](https://riverpod.dev/)

### 遷移
[go_router](https://zenn.dev/inari_sushio/scraps/01ef7604a4b934)

### フレーバー対応
[FlutterでDart-defineのみを使って開発環境と本番環境を分ける
](https://zenn.dev/riscait/articles/separating-environments-in-flutter)

### Flutterバージョン管理
settings.jsonにasdf前提の設定があります。
## 使い方

1. 「Use this template」ボタンを押してこのこのリポジトリを複製します。
2. （オプション）Grinderを設定します。
   1. grinderでよく使うコマンドを実行できるようになっています。
   2. [導入方法](https://zenn.dev/k9i/articles/bcfa83b08e56d6)
3. エディタでアプリID等を置換します。
   1. 「com.k9i.flutterTemplate」で検索して、iOSのbundle identifierを置換します。
   2. 「com.k9i.flutter_template」で検索して、Androidのpackage名を置換します。
      1. Androidのpackage名
   3. 「flutter_template」を検索して、パッケージ名置換します。
   4. 「Flutter Template」を検索して、アプリ名を置換します。
4. アプリアイコンを置き換えます。
   1. assets/app_iconsディレクトリにあるapp_icon_{Flavor}.pngとapp_icon_background_{Flavor}.pngを使いたい画像に置き換えます。
   2. dev、stg、prodの3つのFlavorに対応しています。[この記事。](https://zenn.dev/riscait/articles/separating-environments-in-flutter)の方法を使っています
   3. grind gen-iconsでアイコンを生成します。
5. スプラッシュ画面を置き換えます。
   1. assets/imagesディレクトリにあるsplash_icon.pngを使いたい画像に置き換えます。
   2. grind gen-splashでスプラッシュ画像を生成します。

## Flutter sdk path
```
asdf install
ln -nfs $HOME/.asdf/installs/flutter/3.0.3-stable flutter_sdk
```