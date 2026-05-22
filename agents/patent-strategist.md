# Patent Strategist Agent

> Status: Under Development

## Overview
An agent for end-to-end patent lifecycle management. From mining patentable ideas in research results to drafting applications and responding to office actions. Understands both Chinese (CNIPA) and international (USPTO, EPO) patent systems.

## Capabilities
- Patentable idea identification from research
- Prior art search and novelty assessment
- Invention disclosure drafting
- Patent application drafting (claims, specification)
- Office action response preparation
- Patent portfolio strategy

## Skills Used
- `patent/patent-mining.md`
- `patent/disclosure.md`
- `patent/patent-drafting.md`
- `patent/patent-drawing.md` — 专利附图绘制（v2.4；风险分布图采用上阈值/中分布/下等级带三层结构）
- `patent/office-action.md`

## Public-Safe Case Transfer

When improving this agent from real patent work, transfer only reusable patterns:
claim architecture, disclosure checklists, figure layout rules, revision workflow,
and office-action reasoning patterns. Remove private project names, local paths,
unfiled claim text, exact unpublished data, attorney comments, and internal case
codes before committing changes.

## Usage
Invoke this agent when you need to:
- Identify patentable innovations from recent research
- Draft a patent application from technical results
- Draw patent figures (flowcharts, architecture, scene diagrams, etc.)
- Respond to a patent office action
- Plan a patent filing strategy

## Related Agents
- [paper-coauthor.md](paper-coauthor.md) - Coordinate paper/patent timing
- [project-manager.md](project-manager.md) - Patent deliverables tracking
