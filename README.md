# Mattermost Quote Plugin

Mattermostで Slack ライクな引用スタイルを実現するプラグインです。

## 機能

- `>` で始まる行を自動的にSlackライクな引用スタイルで表示
- シンプルで使いやすいインターフェース

## インストール方法

1. [リリースページ](https://github.com/your-username/mattermost-quote-plugin/releases)から最新の `mattermost-quote-plugin-x.x.x.tar.gz` をダウンロード
2. Mattermostのシステムコンソールから **プラグイン管理 > プラグインのアップロード** を選択
3. ダウンロードしたプラグインファイルをアップロード
4. プラグインを有効化

## 開発環境のセットアップ

### 必要な環境

- Node.js v16以上
- npm v7以上
- make

### ビルド手順

Makefileを使用して簡単にビルドできます：

```bash
make all

# または個別のターゲットを実行
make clean   # ビルド成果物の削除
make webapp  # webappのビルドのみ
make dist   # パッケージングのみ
```

### Makefileのターゲット説明

| ターゲット | 説明 |
|------------|------|
| `all`      | 全てのビルドを実行（デフォルトターゲット） |
| `webapp`   | webappのビルド |
| `dist`     | プラグインのパッケージング |
| `clean`    | ビルド成果物の削除 |

## プロジェクト構造

- `webapp/`: フロントエンドの実装
  - `src/`: ソースコード
    - `index.js`: プラグインのメインロジック
    - `styles.css`: スタイル定義
  - `dist/`: ビルド成果物
- `dist/`: プラグインのパッケージング先

## トラブルシューティング

ビルド時のよくある問題：

1. `webapp/dist` ディレクトリが見つからない
   ```bash
   make clean  # ビルド成果物をクリーンアップ
   make all    # 全てのビルドを再実行
   ```

2. 依存関係のエラー
   ```bash
   rm -rf webapp/node_modules  # node_modulesを削除
   make all                    # 依存関係の再インストールとビルドを実行
   ```

## ライセンス

MIT License
