# Current Antigravity conventions used in this kit

This kit was aligned with Google's current Antigravity documentation checked on 2026-08-26.

- Custom workspace agents can live under `.agents/agents/<name>/agent.md` and may set `subagent: true` for invocation by a primary agent.
- Workspace skills live under `.agents/skills/<skill-folder>/SKILL.md`.
- Workspace rules live under `.agents/rules/`.
- Workflows are Markdown sequences invokable as `/workflow-name`; Google documents them as repeatable task trajectories.
- Antigravity 2.0 supports asynchronous/synchronous orchestration, web tools, file operations, browser interaction, skills, MCP, subagents, and artifacts.

Source pages:
- https://www.antigravity.google/docs/overview
- https://antigravity.google/blog/introducing-custom-agents
- https://antigravity.google/docs/skills/
- https://antigravity.google/docs/ide/rules/
- https://antigravity.google/docs/ide/workflows/
- https://antigravity.google/docs/cli/subagents/
