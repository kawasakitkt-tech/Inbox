# ジョブカン自動打刻

Claude in Chrome + Claude Code Desktop Scheduled Tasks によるジョブカン自動出退勤打刻ルーティン。

## 動作概要

| ルーティン | トリガー | 動作 |
|---|---|---|
| jobcan-clock-in | 平日 9:00 | ジョブカンにログイン → 勤怠 → PUSH（出勤） |
| jobcan-clock-out | 平日 19:00 | ジョブカンにログイン → 勤怠 → PUSH（退勤） |

## 前提条件

- [Claude Code Desktop](https://claude.ai/download) がインストール済み
- [Claude in Chrome 拡張機能](https://chromewebstore.google.com/detail/claude/fcoeoabgfenejglbffodgkkbkcdhcgfn) (v1.0.36 以上) がインストール済み
- Chrome のパスワードマネージャーにジョブカンのログイン情報が保存済み
- Claude Code Desktop と Chrome 拡張機能が接続済み（`/chrome` コマンドで確認）

## セットアップ手順

### 1. リポジトリをクローン

```bash
git clone <このリポジトリのURL>
cd Inbox
```

### 2. セットアップスクリプトを実行

```bash
chmod +x setup.sh
./setup.sh
```

SKILL.md が `~/.claude/scheduled-tasks/` にコピーされます。

### 3. スケジュールを設定

Claude Code Desktop のセッションを開き、以下を入力:

```
jobcan-clock-in タスクを平日の9:00に実行するようスケジュールしてください
```

```
jobcan-clock-out タスクを平日の19:00に実行するようスケジュールしてください
```

または Desktop アプリの **Routines** ページから手動設定:

1. Routines → **New routine** → **Local** を選択
2. Name に `jobcan-clock-in` を入力
3. Schedule を **Weekdays**、時刻を **9:00** に設定
4. 保存後 **Run now** で動作確認

`jobcan-clock-out` も同様に作成し、時刻を **19:00** に設定。

### 4. 動作確認

- **Run now** で即時実行し、打刻が完了することを確認
- タブが自動で閉じられることを確認

## 注意事項

- Desktop アプリが起動中かつ PC がスリープしていない場合のみ動作します
- スリープで実行が飛んだ場合、起動時に最新の未実行分が1回だけリカバリされます（意図しない二重打刻に注意）
- CAPTCHA や追加認証が発生した場合は自動停止し、通知が届きます
- Chrome 拡張機能が切断された場合は `/chrome` → Reconnect extension で再接続してください

## トラブルシューティング

**ブラウザが操作されない**
→ Claude Code Desktop で `/chrome` を実行し、接続状態を確認してください

**ログインできない**
→ Chrome でジョブカン (https://id.jobcan.jp) にアクセスし、パスワードの自動入力が有効か確認してください

**スケジュールが起動しない**
→ Desktop アプリが起動中か、PC がスリープしていないか確認してください。Settings → Desktop app → General の **Keep computer awake** を有効にすることを推奨します