# KNOWLEDGE.md — Centralna baza wiedzy

> **Lokalizacja:** `C:\WORK\projects\_jarvis\docs\`
> **Cel:** Sprawdzone rozwiązania, źródła, ustawienia, tipy
> **Tagowanie:** `@projekt` lub `@ogólne` dla uniwersalnych
> **Ostatnia aktualizacja:** 17.01.2026

---

## @ogólne — MCP Servery

### n8n-mcp

| Element | Wartość |
|---------|---------|
| **Źródło** | [github.com/czlonkowski/n8n-mcp](https://github.com/czlonkowski/n8n-mcp) |
| **npm** | `n8n-mcp` (v2.33.2) |
| **Architektura** | TypeScript + SQLite (FTS5), JSON-RPC 2.0 via stdio |
| **Nodes** | 1,084 zaindeksowanych (537 core + 547 community) |
| **Tools** | 20 narzędzi (7 docs + 13 management) |
| **Response time** | ~12ms |
| **Instalacja** | `claude mcp add n8n-mcp -e MCP_MODE=stdio -- npx n8n-mcp` |
| **Data zbadania** | 16.01.2026 |

**Uwagi:**
- Wymaga `N8N_API_URL` i `N8N_API_KEY` dla narzędzi management
- Bez API działa tylko dokumentacja (search_nodes, get_node, etc.)

---

## @ogólne — Integracje

| System | Status | Metoda | Uwagi |
|--------|--------|--------|-------|
| **n8n** | ✅ Działa | MCP (n8n-mcp) | Pełna integracja |
| **WordPress** | ⏸️ Odpuszczone | REST API możliwe | Nie priorytet |
| **Rewizor GT** | ⚠️ Możliwe | Firebird SQL / custom MCP | InsERT nie ma API |
| **MSSQL** | ❓ Do zbadania | MCP? Driver? | TODO |
| **Google Drive** | ❓ Do zbadania | MCP do przygotowania | TODO |

---

## @ogólne — Claude Code tipy

### Chrome Integration

```bash
claude --chrome
```

- Sterowanie przeglądarką (klikanie, pisanie, czytanie DOM)
- Dostęp do zalogowanych aplikacji (ChatGPT, Gemini, Gmail, etc.)
- Alternatywa dla MCP gdy aplikacja nie ma API

### Skills

Lokalizacje:
- Globalne: `~/.claude/skills/`
- Projektowe: `.claude/skills/`

Format: `SKILL.md` z YAML metadata + instrukcje Markdown.

---

## @ogólne — Ważne ustawienia

| Ustawienie | Wartość | Gdzie | Data |
|------------|---------|-------|------|
| n8n wersja | 2.1.5 | Hostinger | 13.01.2026 |
| Python | 3.11+ | Lokalne skrypty | - |

---

## @ogólne — Infrastruktura VPS (Contabo)

> Źródło: emaile od Contabo, stan na 16.01.2026

| Adres IP | Data uruchomienia | Lokalizacja | Zdarzenia / Migracje | Status |
|----------|-------------------|-------------|----------------------|--------|
| 38.242.150.45 | Przed 2025 | Hub Europe | 31.07.2025: Migracja z Dusseldorf | ✅ Aktywny |
| 62.146.233.104 | 10.07.2024 | Singapur | — | ✅ Aktywny |
| 5.104.80.58 | 09.07.2024 | Tokio (Japonia) | — | ✅ Aktywny |
| 62.146.232.196 | 05.07.2024 | Singapur 3 | — | ✅ Aktywny |
| 184.174.37.142 | 13.03.2023 | Dusseldorf (Niemcy) | Brak info o migracji | ✅ Aktywny |
| 207.244.238.51 | 20.06.2022 | St. Louis (USA) | — | ✅ Aktywny |
| 207.244.251.85 | 03.07.2020 | St. Louis (USA) | — | ✅ Aktywny |
| 95.111.231.135 | 03.07.2020 | Europa (S) | — | ✅ Aktywny |
| 194.61.31.89 | Lipiec 2024 | Mumbaj (Indie) | Transfer z Singapuru | ⚠️ Problemy z OS |
| 194.163.155.255 | 12.07.2024 | — | 14.04.2025: Migracja do Hub Europe | ❌ Utracony |
| 144.91.118.44 | 10.08.2025 | — | Uruchomiony w Hub Europe | ❌ Utracony |

**Podsumowanie:** 8 aktywnych, 1 problematyczny, 2 utracone

---

## @ogólne — Źródła dokumentacji

| Temat | Link |
|-------|------|
| Claude Code MCP | https://code.claude.com/docs/en/mcp.md |
| Claude Code Skills | https://code.claude.com/docs/en/skills.md |
| Claude Code Chrome | https://code.claude.com/docs/en/chrome.md |
| n8n docs | https://docs.n8n.io |
| Fakturownia API | https://github.com/fakturownia/api |
| MCP Protocol | https://modelcontextprotocol.io |

---

## @_jarvis — Specyficzne

### Architektura centralizacji

```
_jarvis/docs/
├── central/
│   ├── CLAUDE_RULES.md   ← uniwersalne zasady
│   ├── GIT_STRATEGY.md   ← strategie git
│   └── STYLE_GUIDE.md    ← formatowanie
│
├── TODO.md       ← centralne z @projekt
├── NOTES.md      ← centralne z @projekt
├── JOURNAL.md    ← centralne z @projekt
├── KNOWLEDGE.md  ← centralne z @projekt
├── MEMORY.md     ← pamięć między sesjami
└── WEEKLY_REVIEW.md
```

---

## @allegro (HorizonMarket_PL) — Logistyka

### ORLEN Paczka — Węgry

| Element | Wartość |
|---------|---------|
| **Kierunek** | Węgry (HU) |
| **Przewoźnik** | ORLEN Paczka |
| **Jedyna forma nadania** | Kurier z podjazdem |
| **Uwagi** | Brak opcji nadania w punkcie — tylko zamówienie kuriera |
| **Data dodania** | 17.01.2026 |

---

> **Koniec pliku KNOWLEDGE.md**
