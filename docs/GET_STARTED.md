# 🔰はじめに

## 💻ローカルセットアップ

以降の作業はOSに依存しない作業内容になります。
`make`コマンドを有効化している場合は、`make setup`コマンドを実行してください。

### ツールのインストール

- IDE をインストールしてください。
  - [Visual Studio Code]
    - `extension.json` に定義されている拡張機能をインストールしてください。
  - [Xcode]
- [fvm] コマンドを有効にしてください。
- [melos] コマンドを有効にしてください。
  - `pubspec.lock` ファイルを解析して melos コマンドのバージョンを取得するため、[yq] コマンドをインストールしてください。
  - 以下のコマンドを実行して melos コマンドをグローバルに有効にしてください。
- [cmder] を推奨

    ```shell
    MELOS_VERSION=$(cat pubspec.lock | yq ".packages.melos.version" -r)
    fvm dart pub global activate melos $MELOS_VERSION
    ```

- [mason_cli] コマンドを有効にしてください。
  - また、ローカルのbricksを有効にするため、以下のコマンドを実行してください。

    ```shell
    mason get
    ```

### Flutter SDKのセットアップ

```shell
fvm use --force
```

### FVM を使用するように IDE を設定

ウィンドウをリロードして SDK を再読み込みしてください。

### 依存関係のインストール

```shell
melos bs
```

## 🔥Firebase

Firebaseを利用する場合は下記の手順を実施してください。

### Firebase CLIツールのインストール

- [Firebase CLI] をインストールしてください。

    ```shell
    npm install -g firebase-tools
    firebase login
    ```

- [FlutterFire CLI] コマンドを有効にしてください。

    ```shell
    dart pub global activate flutterfire_cli
    ```
  
  - プロジェクト毎にコマンドを叩いて設定ファイルを作成してください。

    ```shell
    # 開発環境
    flutterfire configure --out=packages/infrastructure/firebase/lib/src/common/config/firebase_options_dev.dart -p [DevProjectID] --platforms=android,ios -i [BundleID].dev -a [AppID].dev

    # 本番環境
    flutterfire configure --out=packages/infrastructure/firebase/lib/src/common/config/firebase_options.dart -p [ProjectID] --platforms=android,ios -i [BundleID] -a [AppID]
    ```
  
  - 下記のファイルをそれぞれ環境別のディレクトリに配置する
    - `GoogleService-Info.plist`
      - 開発：`apps/app/ios/dev/GoogleService-Info.plist`
      - 本番：`apps/app/ios/prod/GoogleService-Info.plist`
    - `google-services.json`
      - 開発：`apps/app/android/app/src/dev/google-services.json`
      - 本番：`apps/app/android/app/src/prod/google-services.json`

## 📱動作確認

このアプリを実行するための実行構成が設定されています。

Please check:

- [Visual Studio Code] の場合、`.vscode/launch.json` を確認してください。
<!-- Links -->

[Visual Studio Code]: https://code.visualstudio.com/

[Xcode]: https://developer.apple.com/xcode/

[fvm]: https://fvm.app/

[melos]: https://melos.invertase.dev/

[mason_cli]: https://pub.dev/packages/mason_cli

[yq]: https://github.com/mikefarah/yq

[cmder]: https://github.com/cmderdev/cmder/wiki/Seamless-VS-Code-Integration

[Firebase CLI]: https://firebase.google.com/docs/cli?hl=ja

[FlutterFire CLI]: https://firebase.google.com/docs/flutter/setup?hl=ja
