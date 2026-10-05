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
| topics | array | `{product, important, status, title, what?, impact?, url, source, updated?}`。`important: true` は「重要トピック」にカード表示。status は出典の表記（GA / Launched / Preview / 開発中 / GA予定 / 廃止予告 / 未確認 など） |
| diffs | array | `{page, url, added: [string], removed: [string]}` |
| fetch | array | `{site, ok, note?}` |
