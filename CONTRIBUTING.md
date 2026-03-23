# Contributing to Academic Research Claude Code Agents

Thank you for your interest in contributing to this project! This document provides guidelines for contributing new skills, agents, workflows, and improvements.

## How to Contribute

### 1. Adding a New Skill

Skills are atomic capabilities located in `skills/<category>/`. To add a new skill:

1. Identify the appropriate category directory (or propose a new one)
2. Create a markdown file following this template:

```markdown
# Skill Title

> Status: Under Development

## Overview
Brief description of what this skill does.

## Usage
When and how to use this skill.

## Related
Links to related skills and agents.
```

3. Update the README.md skill count table
4. Submit a pull request

### 2. Creating a New Agent

Agents combine multiple skills into composite capabilities. Located in `agents/`.

1. Define which skills the agent uses
2. Create the agent markdown file with capabilities, skills used, and usage instructions
3. Submit a pull request

### 3. Designing a Workflow

Workflows orchestrate multiple agents across stages. Located in `workflows/`.

1. Define the workflow stages and which agents handle each stage
2. Include timelines, deliverables, and decision points
3. Submit a pull request

### 4. Improving Existing Content

- Fix typos and improve descriptions
- Add more detailed usage examples
- Improve cross-references between skills, agents, and workflows

## Guidelines

- **Language**: Content can be in English or Chinese (bilingual is preferred)
- **Naming**: Use lowercase-kebab-case for filenames
- **Cross-references**: Always link to related skills/agents/workflows
- **Status**: Mark new contributions as "Under Development"
- **Prefix**: The `academic-` prefix is added automatically by the installer; do not include it in filenames

## Development Setup

```bash
git clone https://github.com/zyx312/academic-research-agents.git
cd academic-research-agents
# Make your changes
# Test by installing locally
bash install.sh
```

## Pull Request Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-skill-name`)
3. Commit your changes with clear messages
4. Push to your fork
5. Open a Pull Request with a description of what you added/changed

## Code of Conduct

Be respectful, constructive, and collaborative. We are building tools to help the academic community work more effectively.

## Questions?

Open an issue on GitHub or contact the maintainers.
