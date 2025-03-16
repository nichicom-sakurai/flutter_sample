# flutter_sample

A new Flutter project.

## Getting Started

最初に実行する 3ステップ です。

1. [mise CLI](https://mise.jdx.dev/getting-started.html)インストール
2. ディレクトリにツール追加
3. [melos](https://melos.invertase.dev/getting-started) アクティベートと実行

### mise CLI インストール

```bash
brew install mise
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
echo 'export PATH="$HOME/.local/share/mise/shims:$PATH"' >> ~/.bash_profile
```

### ディレクトリにツール追加

```bash
# .tool-versions内のツールをインストール
mise install
```

### melos アクティベートと実行

```bash
dart pub global activate melos
melos bs
```

### アプリ実行

VSCodeであれば`F5`デバッグ実行してくださ。
または、コマンドで実行してください。

```bash
cd apps/flutter_sample_app && flutter run -d chrome
```

## Firebase

### プロジェクトの作成

- 準備
  - 事前準備として[Firebase CLI](https://firebase.google.com/docs/cli?hl=ja#sign-in-test-cli)がインストールされている必要があります。
- Firebase にプロジェクト作成: `firebase projects:create flutter-sample-dennys`

### 設定ファイルのダウンロード

- 準備
  - [FlutterFire CLI](https://firebase.flutter.dev/docs/cli/)を使って、Firebaseに接続するために必要な設定ファイルをダウンロードします。
    ```bash
    dart pub global activate flutterfire_cli
    ```
- コンフィグダウンロード
  ```bash
  # カレントディレクトリをFlutterアプリプロジェクトに移動する必要があります
  cd apps/flutter_sample_app/
  
  # firebase_options.dartを取得
  flutterfire configure -y -o lib/dev/firebase_options.dart -p flutter-sample-dennys
  ```
   💡[パラメータの詳細はこちら](https://firebase.flutter.dev/docs/cli/#configure)（`-a`,`-i`を指定してAndroidやiOSのバンドルIDを指定することも可能）
