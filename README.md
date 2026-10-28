# 🧰 最小 Harness 工具包

> 《harness 工程手册》随刊资料 · 微信公众号「AI深思智汇」· 持续更新

给 AI 编程助手（Claude Code / Codex / Cursor 等）配一套「驾驭框架」。
十件套，抄进项目就能用，翻车率立刻不一样。

## 📦 文件清单（v2 · 十件套）

| 文件 | 作用 | 对应子系统 | 配套文章 |
|---|---|---|---|
| [`AGENTS.md`](./AGENTS.md) | 给 Agent 的章程：规矩、铁律、「完成的定义」 | 指令 | 05 |
| [`init.sh`](./init.sh) | 一键起环境：装依赖 → 验证 → 打印启动命令 | 环境 | 06 |
| [`new-task.sh`](./new-task.sh) | git worktree 任务工作区：并行不打架 | 环境 | 06 |
| [`feature_list.json`](./feature_list.json) | 功能清单原语：行为＋验证＋状态，WIP=1 | 状态 | 07 |
| [`settings.example.json`](./settings.example.json) | 三档权限：allow / ask / deny | 范围 | 08 |
| [`lint-ratchet.sh`](./lint-ratchet.sh) | lint 棘轮：存量违规只许减，不许增 | 验证 | 08 |
| [`check.sh`](./check.sh) | 验证闸门：lint → test → build，一步失败即停 | 验证 | 06/08 |
| [`tasks/TEMPLATE.md`](./tasks/TEMPLATE.md) | 任务状态文件：长任务的存盘点 | 状态 | 07 |
| [`PROGRESS.md`](./PROGRESS.md) | 进度唯一真相来源 + 会话记录 | 状态 | 09 |
| [`session-handoff.md`](./session-handoff.md) | 会话交接：新会话 5 分钟接上活 | 状态 | 09 |
| [`sprint-contract.md`](./sprint-contract.md) | 冲刺合同：开工前把「完成」写清楚 | 反馈 | 10 |
| [`evaluator-rubric.md`](./evaluator-rubric.md) | 评分表：Accept / Revise / Block | 反馈 | 10 |
| [`CHECKLIST.md`](./CHECKLIST.md) | 五大子系统自查表（0–2 分打分卡） | 全部 | 03 |

## 🚀 三分钟上手

```bash
# 1. 把工具包放进你的项目根目录
git clone https://github.com/liu183/harness-toolkit.git
cp harness-toolkit/AGENTS.md harness-toolkit/check.sh harness-toolkit/init.sh your-project/
cp -r harness-toolkit/tasks your-project/
cp harness-toolkit/settings.example.json your-project/settings.json

# 2. 按项目实际情况改 AGENTS.md 的「项目速览」、init.sh / check.sh 里的命令

# 3. 每个新会话第一步跑 init.sh；Agent 每完成一个子任务跑一次 check.sh
bash init.sh
```

**推荐顺序**（对应第二季 6 篇，周更中）：
05 放 `AGENTS.md` 立规矩 → 06 上 `init.sh` + `check.sh` 起环境拦错误 → 07 用 `feature_list.json` 排任务（WIP=1）→ 08 配 `settings.json` 三档权限 + `lint-ratchet.sh` 棘轮 → 09 用 `PROGRESS.md` + `session-handoff.md` 管交接 → 10 用 `sprint-contract.md` + `evaluator-rubric.md` 验收。

## 🧠 为什么这能行

单步成功率 90% 的 Agent，跑 10 步任务的整体成功率只有 0.9¹⁰ ≈ **35%**。
失败不是相加，是相乘。这套工具干的就是两件事：

1. **压低单步错误率**（章程 + 权限 + 验证闸门）
2. **把长链切成短链**（功能清单 + 状态存盘 + 会话交接）

原理详解见公众号专栏《harness 工程手册》第一季认知篇 + 第二季实战篇（回复 `harness` 可获取阅读路径与最新版工具包）。

## 🔄 更新计划

- [x] v1：五件套基础版
- [x] v2：十件套（init.sh / feature_list / PROGRESS / 交接 / 冲刺合同 / 评分表 / lint 棘轮 / worktree）
- [ ] v3：多 Agent 编排模板（第三季进阶篇）

每周三、周五专栏更新，工具包随刊迭代。觉得有用就点个 ⭐
