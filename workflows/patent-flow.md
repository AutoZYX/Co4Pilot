# Patent Filing Workflow

> Status: Under Development

## Overview
End-to-end workflow from identifying patentable innovations to securing granted patents. Coordinates timing with paper publications and manages the patent prosecution process.

## Workflow Stages

### Stage 1: Innovation Mining
- **Agent**: `patent-strategist`
- **Activities**: Review research results, identify patentable ideas, assess novelty
- **Deliverable**: List of candidate innovations with novelty assessment

### Stage 2: Prior Art Search
- **Agent**: `patent-strategist` + `literature-researcher`
- **Activities**: Search patent databases (CNIPA, USPTO, EPO), analyze prior art
- **Deliverable**: Prior art report with freedom-to-operate analysis

### Stage 3: Invention Disclosure
- **Agent**: `patent-strategist`
- **Activities**: Draft disclosure for university TTO, document inventorship
- **Deliverable**: Completed invention disclosure form

### Stage 4: Patent Drafting
- **Agent**: `patent-strategist`
- **Activities**: Draft claims, specification, drawings descriptions, abstract
- **Deliverable**: Complete patent application draft

### Stage 5: Filing & Prosecution
- **Agent**: `patent-strategist`
- **Activities**: Respond to office actions, amend claims, argue patentability
- **Deliverable**: Office action responses, amended claims

### Stage 6: Grant & Maintenance
- **Agent**: `project-manager`
- **Activities**: Track grant status, manage maintenance fees, portfolio review
- **Deliverable**: Updated patent portfolio records

## Agents Used
- `agents/patent-strategist.md`
- `agents/literature-researcher.md`
- `agents/project-manager.md`

## Related Workflows
- [paper-publication-flow.md](paper-publication-flow.md) - Coordinate paper/patent timing
- [nsfc-flow.md](nsfc-flow.md) - Patents as project deliverables
