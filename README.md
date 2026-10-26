# 🧰 最小 Harness 工具包

> 《harness 工程手册》随刊资料 · 微信公众号「AI深思智汇」· 持续更新

给 AI 编程助手（Claude Code / Codex / Cursor 等）配一套最小的「驾驭框架」。
五个文件，抄进项目就能用，翻车率立刻不一样。

## 📦 文件清单

| 文件 | 作用 | 对应子系统 |
|---|---|---|
| [`AGENTS.md`](./AGENTS.md) | 给 Agent 的章程：规矩、铁律、「完成的定义」 | 指令 |
| [`check.sh`](./check.sh) | 验证闸门：lint → test → build，一步失败即停 | 验证 |
| [`tasks/TEMPLATE.md`](./tasks/TEMPLATE.md) | 任务状态文件：长任务的存盘点 | 状态 |
| [`settings.example.json`](./settings.example.json) | 三档权限：allow / ask / deny | 范围 |
| [`CHECKLIST.md`](./CHECKLIST.md) | 五大子系统自查表（0–2 分打分卡） | 全部 |

## 🚀 三分钟上手

```bash
# 1. 把工具包放进你的项目根目录
git clone https://github.com/liu183/harness-toolkit.git
cp -r harness-toolkit/AGENTS.md harness-toolkit/check.sh your-project/
cp -r harness-toolkit/tasks your-project/
cp harness-toolkit/settings.example.json your-project/settings.json

# 2. 按项目实际情况改 AGENTS.md 的「项目速览」和 check.sh 的命令

# 3. 让 Agent 每完成一个子任务就跑一次
bash check.sh
```

**推荐顺序**：先放 `AGENTS.md` 立规矩 → 再加 `check.sh` 拦错误 → 任务复杂就上 `tasks/` 状态文件 → 最后用 `settings.json` 收紧权限。

## 🧠 为什么是这五件

单步成功率 90% 的 Agent，跑 10 步任务的整体成功率只有 0.9¹⁰ ≈ **35%**。
失败不是相加，是相乘。这五件工具干的就是两件事：

1. **压低单步错误率**（章程 + 权限）
2. **把长链切成短链**（验证闸门 + 状态存盘）

原理详解见公众号专栏《harness 工程手册》第一季认知篇（回复 `harness` 可获取阅读路径）。

## 🔄 更新计划

- [x] v1：五件套基础版
- [ ] v2：hooks 硬门禁示例（第二季实战篇）
- [ ] v2：git worktree 并行任务模板（第二季实战篇）

每周三、周五专栏更新，工具包随刊迭代。觉得有用就点个 ⭐
