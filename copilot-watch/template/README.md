# Copilot デイリー スライドテンプレート

`daily.html` はスマホ閲覧前提の固定テンプレート。ルーティンはデザインを書かず、データだけを差し込む。

## 使い方
```
python3 copilot-watch/template/build.py data.json copilot-watch/slides/YYYY-MM-DD.html
```
JSON のエスケープとプレースホルダ置換はスクリプトが行う。

## データ形式
| キー | 型 | 内容 |
|---|---|---|
| date | string | `YYYY-MM-DD`（JST） |
| generatedAt | string | 生成時刻（例 `2026-10-06 07:58 JST`） |
| baseline | bool | 初回ベースラインなら true |
| notice | string | 表紙の一言（空文字可） |
| counts | object | 製品名 → 件数。製品名は `M365 Copilot` / `Copilot Studio` / `Power Automate・AI Builder` / `管理・ライセンス` / `GitHub Copilot` |
| history | array | `state/history.json` の中身（`{date, counts}` の配列） |
| topics | array | 1件ごとのオブジェクト（下表） |
| diffs | array | `{page, url, added: [string], removed: [string]}` |
| fetch | array | `{site, ok, note?}` |

### topics の各項目
| キー | 必須 | 内容 |
|---|---|---|
| product | ○ | 製品名（counts と同じ表記） |
| important | ○ | true なら「重要トピック」にカード表示 |
| status | ○ | 出典の表記（GA / Launched / Preview / 開発中 / GA予定 / 廃止予告 / 未確認 など） |
| title | ○ | 見出し（何が変わるかが分かる1文） |
| what | ○ | リード文。何ができるようになるかを1〜2文で、専門用語は言い換える |
| summary | ○ | 要点の箇条書き 3〜5 個。①具体的に何が変わるか ②使い方・設定場所 ③前提条件（ライセンス・管理者設定・リージョン）④提供時期・提供範囲 ⑤制限・注意点。出典に書かれていることだけ |
| facts | 重要なら○ | `[{label, value}]`。ステータス / 対象ユーザー / 提供時期（Preview・GA）/ 提供範囲（Worldwide・GCC 等）/ ロードマップ ID / 最終更新 |
| why | 重要なら○ | 実務への影響。誰が何をすべきか、何が楽になるかを1〜2文 |
| url | ○ | 一次情報のURL |
| source | ○ | 検知元（ロードマップ / ページ監視 / ブログ / Web検索 など） |
| updated | | 出典側の更新日（MM/DD） |
