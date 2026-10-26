# tasks/TEMPLATE.md —— 任务状态文件模板
# 每个长任务一份，文件名 tasks/<编号>-<任务名>.md
# 作用：给长任务加「存盘点」。会话断了、上下文丢了，新会话读这个文件就能续上。
# 用法：复制本文件为 tasks/07-login-refactor.md 之类的名字，替换内容。

# tasks/07-login-refactor.md

## 状态
进行中（第 2/4 子任务）

## 已完成
- [x] 梳理现有登录流程
- [x] 抽出 AuthService 接口

## 下一步
- [ ] 替换 controller 中的旧调用（3 处）
- [ ] 补集成测试

## 已知风险
- legacy/oauth.py 有隐藏依赖，改动前先全量搜索引用
