#!/usr/bin/env bash
# lint-ratchet.sh —— 棘轮：lint 违规只许减少，不许增加（第二季 08 篇配套）
# 场景：老项目接 Agent。存量违规一时清不完，但至少别让 AI 再添新的。
# 用法：首次跑生成基线；之后挂进 check.sh 或 pre-commit。
set -euo pipefail

BASELINE="lint-baseline.txt"
# 换成你自己的 lint 命令（eslint / biome / ruff / golangci-lint ...）
COUNT_CMD="npx eslint . --format compact"

CURRENT=$($COUNT_CMD 2>/dev/null | grep -c "Error" || true)

if [ ! -f "$BASELINE" ]; then
  echo "$CURRENT" > "$BASELINE"
  echo "✅ 首次运行，基线=$CURRENT（此后只许减，不许增）"
  exit 0
fi

BASE=$(cat "$BASELINE")
if [ "$CURRENT" -le "$BASE" ]; then
  if [ "$CURRENT" -lt "$BASE" ]; then
    echo "$CURRENT" > "$BASELINE"
    echo "✅ 违规降到 $CURRENT，基线同步下调"
  else
    echo "✅ 违规 $CURRENT ≤ 基线 $BASE"
  fi
  exit 0
else
  echo "❌ 违规 $CURRENT > 基线 $BASE"
  echo "   只许减，不许增。新违规修掉，或者跟老违规一起修。"
  exit 1
fi
