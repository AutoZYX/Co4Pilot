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
- **Activities**: Draft claims, specification, drawings descriptions, abstract.
  For AI, software, and autonomous-systems inventions, explicitly check whether
  each algorithmic step is coupled to a technical input, constraint, output, or
  effect. Keep the claim set compact when the filing strategy or fee schedule
  requires it.
- **Deliverable**: Complete patent application draft

### Stage 4.5: Public-Safe Knowledge Transfer
- **Agent**: `patent-strategist`
- **Activities**: If lessons from a real matter are being added back into
  Co4Pilot, remove private names, paths, unfiled claim text, attorney comments,
  exact unpublished data, and internal case codes. Keep only reusable workflows,
  checklists, templates, and generalized examples.
- **Deliverable**: Sanitized skill update or internal note

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
