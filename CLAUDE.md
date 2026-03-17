# Claude Skills Repository

A production-ready skill collection for Claude following Anthropic's official skill format (Claude 4.x).

## Quick Start

```bash
# Install all skills and MCP servers
bash scripts/install.sh

# Validate skills locally
python3 scripts/update-check.py
```

## Organization

- **skills/** - Task-specific skills organized by domain (coding, research, content, automation)
- **agents/** - Specialized multi-skill agents for complex workflows
- **mcp-configs/** - MCP server configurations (core, development, communication)
- **commands/** - Custom slash commands for quick invocation
- **.github/workflows/** - Automated validation and update checking

## Skill Format

Each skill follows the Claude 4.x standard:

```yaml
---
name: Skill Name
description: Brief description
version: 1.0.0
---

<when_to_use>
When to invoke this skill...
</when_to_use>

<instructions>
Step-by-step instructions...
</instructions>

<examples>
Input/output demonstrations...
</examples>

<guidelines>
Best practices and constraints...
</guidelines>
```

## MCP Configuration Tiers

- **core.json** - Filesystem, Git, GitHub, Memory, Sequential Thinking
- **development.json** - Playwright, PostgreSQL, Terraform, Docker
- **communication.json** - Slack, Notion, Google Drive

## Skill Categories

### Coding (4 skills)
- code-review: Security, performance, best practices
- architecture-review: System design evaluation
- tdd-workflow: Test-driven development guidance

### Research (3 skills)
- deep-research: Multi-source analysis with evaluation
- competitive-analysis: Market and competitor research
- data-analysis: Statistical analysis and insights

### Content (3 skills)
- technical-writing: Documentation and guides
- blog-post: Engaging technical writing
- documentation: API docs, reference guides

### Automation (3 skills)
- ci-cd-setup: Pipeline configuration
- deployment: Release and deployment strategies
- monitoring: Observability and alerting

## Agents

- **security-reviewer** - Code security analysis
- **performance-analyzer** - Optimization recommendations
- **research-analyst** - Complex research workflows

## Updates

Skills sync automatically daily via `.github/workflows/scrape-updates.yml`. Manual check:

```bash
python3 scripts/update-check.py
```

## Contributing

All skills follow Anthropic's format. Validate before committing:

```bash
promptfoo validate skills/*/SKILL.md
```

## Version

Repository Format: v1.0.0 (Claude 4.x Compatible)
Last Updated: 2026-03-17