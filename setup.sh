#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
TASKS_DIR="${CLAUDE_CONFIG_DIR:-$HOME/.claude}/scheduled-tasks"

echo "=== ジョブカン自動打刻セットアップ ==="
echo ""

# ディレクトリ作成
mkdir -p "$TASKS_DIR/jobcan-clock-in"
mkdir -p "$TASKS_DIR/jobcan-clock-out"

# SKILL.md をコピー
cp "$REPO_DIR/jobcan-clock-in/SKILL.md" "$TASKS_DIR/jobcan-clock-in/SKILL.md"
cp "$REPO_DIR/jobcan-clock-out/SKILL.md" "$TASKS_DIR/jobcan-clock-out/SKILL.md"

echo "ファイルをコピーしました:"
echo "  $TASKS_DIR/jobcan-clock-in/SKILL.md"
echo "  $TASKS_DIR/jobcan-clock-out/SKILL.md"
echo ""
echo "=== 次のステップ ==="
echo ""
echo "Claude Code Desktop のセッションで以下を実行してスケジュールを設定してください:"
echo ""
echo "  出勤打刻（平日9時）:"
echo "  「jobcan-clock-in タスクを平日の9:00に実行するようスケジュールしてください」"
echo ""
echo "  退勤打刻（平日19時）:"
echo "  「jobcan-clock-out タスクを平日の19:00に実行するようスケジュールしてください」"
echo ""
echo "または Desktop アプリの Routines ページから手動で設定できます:"
echo "  1. Routines → New routine → Local を選択"
echo "  2. Name に jobcan-clock-in（または jobcan-clock-out）を入力"
echo "  3. Schedule を Weekdays に設定し、時刻を 9:00（または 19:00）に設定"
echo "  4. 保存後、Run now で動作確認"
echo ""
echo "前提条件:"
echo "  - Claude Code Desktop がインストール済みであること"
echo "  - Claude in Chrome 拡張機能 (v1.0.36+) がインストール済みであること"
echo "  - Chrome でジョブカンのパスワードが自動入力されていること"
