# Mattermost 引用スタイルプラグイン

Mattermostで Slack ライクな引用スタイルを実現するプラグインです。

## 機能

- `>` で始まる行を自動的にSlackライクな引用スタイルで表示
- Mattermostのテーマカラーに合わせた配色
- シンプルで使いやすいインターフェース

## インストール方法

1. [リリースページ](https://github.com/kuuumo/mattermost-quote-plugin/releases)から最新の `mattermost-quote-plugin-x.x.x.tar.gz` をダウンロード
2. Mattermostのシステムコンソールから **プラグイン管理 > プラグインのアップロード** を選択
3. ダウンロードしたプラグインファイルをアップロード
4. プラグインを有効化

## 開発者向け情報

### 必要な環境

- Node.js v16以上
- npm v7以上
- make

### ビルド方法

```bash
# 全ビルド（クリーン + ビルド + パッケージング）
make all

# 個別のビルドステップ
make clean   # ビルド成果物の削除
make webapp  # webappのビルドのみ
make dist    # パッケージングのみ
```

### プロジェクト構造

```
.
├── webapp/              # フロントエンド実装
│   ├── src/
│   │   ├── index.js    # プラグインのメインロジック
│   │   └── styles.css  # スタイル定義
│   └── package.json    # 依存関係の定義
├── plugin.json         # プラグイン設定
└── Makefile           # ビルドスクリプト
```

### リリース方法

リリースは GitHub Actions を使用して自動化されています。以下の手順で新しいリリースを作成できます：

1. リリース用のタグを作成
```bash
git tag v1.0.0  # バージョン番号は適宜変更
git push origin v1.0.0
```

2. GitHub Actions の実行
- タグをプッシュすると、自動的に以下が実行されます：
  1. プラグインのビルド
  2. ドラフトリリースの作成
  3. ビルド成果物のアップロード

3. リリースの確認と公開
- GitHub上で以下を実行：
  1. **Releases** ページを開く
  2. 作成されたドラフトリリースを確認
  3. 必要に応じて説明文を編集
  4. **Publish release** をクリック

### トラブルシューティング

#### ビルドエラー

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
