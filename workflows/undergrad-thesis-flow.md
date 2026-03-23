# Undergraduate Thesis Workflow

> Status: Under Development

## Overview
End-to-end workflow guiding an undergraduate student from topic selection through thesis defense. Orchestrates literature research, writing guidance, and defense preparation agents.

## Workflow Stages

### Stage 1: Topic Selection (Week 1-2)
- **Agent**: `thesis-supervisor` + `literature-researcher`
- **Activities**: Brainstorm topics, assess feasibility, finalize research question
- **Deliverable**: Approved thesis topic and initial outline

### Stage 2: Literature Review (Week 3-5)
- **Agent**: `literature-researcher`
- **Activities**: Systematic search, paper reading, review synthesis
- **Deliverable**: Literature review chapter draft

### Stage 3: Methodology & Implementation (Week 6-12)
- **Agent**: `thesis-supervisor`
- **Activities**: Research design, implementation guidance, troubleshooting
- **Deliverable**: Methodology chapter, experimental results

### Stage 4: Writing (Week 13-16)
- **Agent**: `paper-coauthor` + `thesis-supervisor`
- **Activities**: Full thesis drafting, formatting, proofreading
- **Deliverable**: Complete thesis draft

### Stage 5: Defense Preparation (Week 17-18)
- **Agent**: `thesis-supervisor`
- **Activities**: Slide preparation, rehearsal, Q&A preparation
- **Deliverable**: Defense presentation, final thesis

## Agents Used
- `agents/thesis-supervisor.md`
- `agents/literature-researcher.md`
- `agents/paper-coauthor.md`

## Related Workflows
- [paper-publication-flow.md](paper-publication-flow.md) - If thesis results are publishable
- [phd-journey-flow.md](phd-journey-flow.md) - For continuing students
