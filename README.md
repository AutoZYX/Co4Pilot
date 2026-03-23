# Academic Research Claude Code Agents

> AI-powered toolkit for the complete academic research lifecycle

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude-Code-blueviolet)](https://claude.ai)

## Overview

**Academic Research Claude Code Agents** is a comprehensive collection of AI-powered skills, agents, and workflows designed for academic researchers. Built on [Claude Code](https://claude.ai), this system covers the entire research lifecycle -- from literature review to publication, from patent filing to grant proposals, from student mentoring to academic impact management.

Whether you are writing an NSFC proposal, drafting a patent application, mentoring PhD students, or preparing a conference rebuttal, this toolkit provides specialized agents that understand the nuances of academic work in both Chinese and international contexts.

## Skill Categories

| Category | Skills | Description |
|----------|--------|-------------|
| **Literature** | 4 | Search, review, paper reading, reference management |
| **Paper Writing** | 6 | Research papers, reviews, conference papers, cover letters, rebuttals, revisions |
| **Peer Review** | 2 | Review writing, editor communication |
| **Patent** | 4 | Patent mining, disclosure, drafting, office action response |
| **Proposal** | 5 | NSFC, provincial funds, industry projects, general writing, defense prep |
| **Student Mentoring** | 5 | Undergrad thesis, master's, PhD, research direction, progress tracking |
| **Project Execution** | 4 | Midterm/final reports, budget management, audit preparation |
| **Data Management** | 4 | Collection plans, annotation guides, dataset release, data agreements |
| **Teaching** | 4 | Course design, syllabus, exam design, teaching reform |
| **Academic Impact** | 4 | WeChat articles, LinkedIn posts, invited talks, media interviews |
| **Career** | 3 | CV maintenance, citation tracking, talent program applications |
| **Total** | **45 skills** | |

## Architecture

```
academic-research-agents/
|
|-- skills/           # Atomic capabilities (45 skills across 11 categories)
|   |-- literature/        # Search, review, reading, references
|   |-- paper-writing/     # Papers, rebuttals, revisions
|   |-- peer-review/       # Review writing, editor communication
|   |-- patent/            # Mining, disclosure, drafting, OA response
|   |-- proposal/          # NSFC, provincial, industry, defense
|   |-- student-mentoring/ # Undergrad, master, PhD, tracking
|   |-- project-execution/ # Reports, budget, audit
|   |-- data-management/   # Collection, annotation, release, agreements
|   |-- teaching/          # Course, syllabus, exams, reform
|   |-- academic-impact/   # WeChat, LinkedIn, talks, media
|   |-- career/            # CV, citations, talent programs
|
|-- agents/           # Composite agents combining multiple skills (11 agents)
|   |-- literature-researcher    # End-to-end literature research
|   |-- paper-coauthor           # Full paper writing lifecycle
|   |-- peer-reviewer            # Manuscript review and feedback
|   |-- patent-strategist        # Patent lifecycle management
|   |-- proposal-advisor         # Grant proposal development
|   |-- thesis-supervisor        # Student mentoring across levels
|   |-- data-steward             # Research data management
|   |-- project-manager          # Funded project tracking
|   |-- academic-writer          # General academic writing
|   |-- teaching-assistant       # Course and teaching support
|   |-- impact-strategist        # Visibility and career impact
|
|-- workflows/        # Multi-stage orchestrated processes (5 workflows)
|   |-- paper-publication-flow   # From results to published paper
|   |-- patent-flow              # From innovation to granted patent
|   |-- nsfc-flow                # NSFC proposal development cycle
|   |-- undergrad-thesis-flow    # Undergraduate thesis lifecycle
|   |-- phd-journey-flow         # Multi-year PhD program
|
|-- commands/         # Custom slash commands (extensible)
|-- hooks/            # Event-driven automation hooks
|-- knowledge/        # Domain knowledge base
```

## Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/zyx312/academic-research-agents.git
cd academic-research-agents

# Install into your Claude Code environment
bash install.sh
```

The installer uses an **append-only** pattern -- it adds skills, agents, and workflows to your Claude Code configuration without overwriting existing content. All installed items use the `academic-` prefix to avoid conflicts with other agent packages.

### Uninstallation

```bash
bash uninstall.sh
```

### Usage with Claude Code

Once installed, you can invoke agents and skills directly in Claude Code:

- Ask Claude to use a specific agent: "Use the paper-coauthor agent to help me draft the introduction section"
- Invoke a workflow: "Start the paper-publication-flow for my new autonomous driving safety paper"
- Use individual skills: "Use the rebuttal skill to draft responses to these reviewer comments"

## Roadmap

### Phase 1: Core Research (Current)
- Paper writing, rebuttal, and revision skills
- NSFC proposal writing
- Literature research agent
- Paper publication workflow

### Phase 2: Extended Capabilities
- Student mentoring agents (undergrad, master, PhD)
- Patent lifecycle management
- Project execution and reporting
- Data management skills

### Phase 3: Community & Ecosystem
- Community-contributed skills and agents
- Domain-specific knowledge bases
- Integration with reference managers (Zotero, EndNote)
- Integration with LaTeX editors (Overleaf)
- Multilingual support expansion

## Contributing

We welcome contributions from the academic community! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:
- Adding new skills
- Creating new agents
- Designing workflows
- Improving documentation

## Credits

This project is inspired by and builds upon the architecture of [automotive-claude-code-agents](https://github.com/zyx312/automotive-claude-code-agents), extending the Claude Code agent pattern from automotive engineering to the broader academic research domain.

## Author

**Yuxin Zhang** (张玉新)
Professor, Jilin University
Research interests: Autonomous driving safety, SOTIF, AI-powered research tools

## License

This project is licensed under the MIT License -- see the [LICENSE](LICENSE) file for details.
