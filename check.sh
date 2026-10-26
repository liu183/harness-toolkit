#!/usr/bin/env bash
# check.sh —— 验证闸门：任何一步失败立即退出（set -e）
# Agent 每完成一个子任务就必须跑一遍；配合 hooks 可做成自动触发。
# 使用前：按项目实际情况替换 lint / test / build 三条命令。

set -e

echo "[1/3] lint..."
ruff check .

echo "[2/3] test..."
pytest -q

echo "[3/3] build..."
npm run build

echo "ALL CHECKS PASSED"
