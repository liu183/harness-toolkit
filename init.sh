#!/usr/bin/env bash
# init.sh —— 一键起环境（第二季 06 篇配套）
# 原则：初始化独立成阶段，产出是基础设施。
# 用法：只改下面三个变量，其余不动。每个新会话的第一步就是跑它。
set -euo pipefail

INSTALL="npm install"        # 1) 装依赖（按你的栈改成 pip install -r / pnpm i ...）
VERIFY="bash check.sh"       # 2) 验证环境真的可用（失败就停，别带病开工）
START_CMD="npm run dev"      # 3) 标准启动命令（打印出来给 Agent 看）

echo "[init] 1/3 安装依赖"
$INSTALL

echo "[init] 2/3 验证环境"
$VERIFY

echo "[init] 3/3 就绪"
echo "----------------------------------------"
echo "标准启动命令：$START_CMD"
echo "把上面这行贴给 Agent：环境已就绪，可以开工。"
