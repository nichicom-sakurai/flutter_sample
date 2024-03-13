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