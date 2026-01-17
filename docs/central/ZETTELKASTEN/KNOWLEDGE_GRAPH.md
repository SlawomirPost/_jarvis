# KNOWLEDGE_GRAPH.md — Mapa wiedzy Jarvis

> **Utworzono:** 17.01.2026
> **Ostatnia aktualizacja:** 17.01.2026
> **Format:** YAML-like structure z metadanymi

---

## Domeny wiedzy (Nodes)

```yaml
jarvis-core:
  - architecture
  - roadmap
  - fazy
  - knowledge
  - transcripts

anthropic-api:
  models:
    - claude-opus-4-5
    - claude-sonnet-4-5
    - claude-haiku-4-5
  features:
    - tool-use
    - streaming
    - batching
    - prompt-caching
  integrations:
    - mcp
    - agent-sdk

n8n:
  - nodes
  - workflows
  - webhooks

methodology:
  - zettelkasten
  - adr
  - para
  - knowledge-management

tools:
  - pandoc
  - typst
  - pdf-generation

sources:
  youtube-transcripts:
    - experts
    - interviews
  documentation:
    - anthropic
    - n8n
    - mcp
```

---

## Powiązania (Edges)

```yaml
# Format: source --"relacja"--> target

# Research Anthropic 2026-01-17
202601-001 --"foundational"--> anthropic-api
202601-002 --"extends"--> 202601-001
202601-003 --"enables"--> jarvis-core.architecture
202601-004 --"optimizes"--> anthropic-api.features.prompt-caching
202601-005 --"architecture"--> jarvis-core.fazy

# Knowledge Sources 2026-01-17
202601-006 --"defines"--> jarvis-core.knowledge
202601-006 --"parent_of"--> 202601-007
202601-007 --"implements"--> sources.youtube-transcripts

# Tools 2026-01-17
202601-010 --"implements"--> tools.pdf-generation
202601-010 --"uses"--> tools.pandoc
202601-010 --"uses"--> tools.typst
```

---

## Matryca pewności źródeł

| Źródło | Avg Confidence | Count | Last Updated |
|--------|----------------|-------|--------------|
| platform.claude.com | 0.95 | 5 | 2026-01-17 |
| modelcontextprotocol.io | 0.92 | 3 | 2026-01-17 |
| user-discussion | 0.78 | 2 | 2026-01-17 |
| youtube-transcript | 0.65 | 0 | — |

---

## Index Zettels

| ID | Tytuł | Confidence | Domain | Deprecated |
|----|-------|------------|--------|------------|
| 202601-001 | FastMCP jako fundament Fazy 1 | 0.92 | anthropic-api.mcp | false |
| 202601-002 | Tool Runner (beta) automatyzuje tool use | 0.90 | anthropic-api.tool-use | false |
| 202601-003 | Architektura Orchestrator + Subagents | 0.88 | jarvis-core.architecture | false |
| 202601-004 | Prompt Caching — 90% oszczędności | 0.95 | anthropic-api.prompt-caching | false |
| 202601-005 | Poziomy autonomii L1-L4 | 0.85 | jarvis-core.fazy | false |
| 202601-006 | Źródła wiedzy — architektura podłączania | 0.80 | jarvis-core.knowledge | false |
| 202601-007 | Proces budowy bazy transkrypcji YT | 0.75 | jarvis-core.transcripts | false |
| 202601-008 | Tryby dostępu FULL/DEMO/LITE | 0.85 | jarvis-core.security | false |
| 202601-009 | ADAPT Framework | 0.70 | methodology | false |
| 202601-010 | Pipeline MD → PDF (Pandoc + Typst) | 0.95 | tools.pdf-generation | false |

---

## Clusters (tematyczne grupowania)

### Cluster: Anthropic Technology Stack
- 202601-001 (MCP)
- 202601-002 (Tool Use)
- 202601-004 (Caching)

### Cluster: Jarvis Architecture
- 202601-003 (Orchestrator)
- 202601-005 (Autonomy levels)

### Cluster: Knowledge Sources
- 202601-006 (Architecture)
- 202601-007 (YT Transcripts)

### Cluster: Tools & Automation
- 202601-010 (PDF Pipeline)

---

> **Koniec KNOWLEDGE_GRAPH.md**
