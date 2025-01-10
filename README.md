![analyze.yml](https://github.com/gurasan0110/search_github_repositories/actions/workflows/analyze.yml/badge.svg)
![test.yml](https://github.com/gurasan0110/search_github_repositories/actions/workflows/test.yml/badge.svg)
![dependabot.yml](https://github.com/gurasan0110/search_github_repositories/actions/workflows/dependabot/dependabot-updates/badge.svg)

# GitHubのリポジトリを検索するアプリ

Flutterの練習で作成しました。

改善案を見つけ次第、改善していく予定です。

## 実行手順

このプロジェクトで使用されているバージョンのFlutterを[FVM](https://fvm.app/)でインストールしてから実行してください。

```
fvm install
```

```
fvm flutter run
```

## 機能

### 検索

[API](https://docs.github.com/ja/rest/search/search?apiVersion=2022-11-28#search-repositories)を使用して[参考](https://github.com/search?q=flutter&type=repositories)のように実装しました。

#### フィルタリング

下の２つが複合された形で表示されます。

- ソート
  - best match
  - stars
  - forks
  - updated
- 並び順
  - 降順(desc)
  - 昇順(asc)

#### 再検索

検索後に表示されるリポジトリリストを一番上にスクロールすると１ページ目のリポジトリを再検索します。

#### 履歴

検索するとキーワードを保存します。

削除ボタンを押すと履歴を削除します。

入力中のキーワードを含む履歴だけを表示します。

履歴を押すとその履歴のキーワードが入力されます。

### ページネーション

#### 無限スクロール

リポジトリリストの9割を下にスクロールすると次のページのリポジトリが読み込まれます。

### 多言語対応

デバイスで設定されている言語が使用されます。

デフォルトは英語です。

- 英語
- 日本語

### プログラミング言語色

[github-colors](https://github.com/ozh/github-colors)から取得した色を表示します。

### アプリアイコン

GitHubのアイコンが表示されます。

### スプラッシュ画面

GitHubのアイコンが表示されます。
