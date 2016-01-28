# セットアップ

##### gemのインストール
`bundle istall`

##### gulpのコマンドを使えるようにグローバルインストール（既に入っているなら不要）
`npm istall -g gulp`

##### gulpのコマンドを使えるようにグローバルインストール（既に入っているなら不要）
`npm istall -g bower`

##### node_modulesのインストール
`npm istall`

##### JavaScriptライブラリのインストール
`bower istall`


# 開発用タスクランナー

`gulp server`

サーバが立ち上がるので、`localhost:8080`にアクセスしてください。
Chromeの拡張機能、LiveReloadを入れていると自動的に更新される（かも


# ビルド

`gulp build`

ビルドされます。詳細は`gulp/tasks/build`から追ってください。
jade, coffee, sassのコンパイルに、結合、圧縮。それからベンダーのコピー、圧縮、結合や、画像の最適化までしてくれます。

##### production用
`gulp build --production`


# 構成

`gulp/`

gulpの処理を登録します。

`source/`

作業用のディレクトリです。

`public/`

公開用のディレクトリです。

`vendor/`

BowerのリストにないJavaScriptライブラリを入れます。

# フレームワークについて
Google Material Design Liteを使っています。
[http://www.getmdl.io/index.html](http://www.getmdl.io/index.html)

