#!/usr/bin/env bash
# new-task.sh —— 一个任务一个工作区（第二季 06 篇配套）
# 场景：想并行跑多个 Agent，又不让它们互相踩主分支。
# 用法：bash new-task.sh 任务名
set -euo pipefail

TASK=${1:?用法: bash new-task.sh 任务名}
DIR=".wt/$TASK"

git worktree add "$DIR" -b "task/$TASK"
echo "✅ 工作区就绪：cd $DIR"
echo "   在那里启动 Agent，互不干扰。"
echo "   干完收工：git merge task/$TASK && git worktree remove $DIR"
