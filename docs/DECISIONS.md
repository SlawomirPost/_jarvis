# DECISIONS.md — Rejestr decyzji architektonicznych

> ADR (Architecture Decision Records) dla projektu _jarvis

---

## Format wpisu

```markdown
## ADR-XXX: Tytuł decyzji

**Data:** DD.MM.YYYY
**Status:** proposed | accepted | deprecated | superseded
**Kontekst:** [Dlaczego ta decyzja była potrzebna]
**Decyzja:** [Co postanowiliśmy]
**Konsekwencje:** [Jakie są skutki tej decyzji]
```

---

## ADR-001: Architektura fazowa (LITE → CORE → FULL)

**Data:** 16.01.2026
**Status:** accepted

**Kontekst:**
Pełna koncepcja asystenta AI (z _lab/personal-ai-assistant) jest obszerna (~36h pracy, $50-80/mies). Potrzebujemy czegoś użytecznego TERAZ.

**Decyzja:**
Dzielimy projekt na 3 fazy:
1. **LITE (MVP)** — MCP do notatek/TODO, local-first, zero kosztów
2. **CORE** — Telegram, kalendarz, email, PostgreSQL
3. **FULL** — RAG, Vector DB, Voice

**Konsekwencje:**
- Szybko mamy działające narzędzie
- Możemy iterować na podstawie realnego użycia
- Architektura musi być rozszerzalna

---

## ADR-002: MCP jako główna integracja z Claude Code

**Data:** 16.01.2026
**Status:** accepted

**Kontekst:**
Potrzebujemy sposobu na integrację z Claude Code. Opcje: MCP, custom skills, bezpośrednie API.

**Decyzja:**
Używamy MCP (Model Context Protocol) jako głównego mechanizmu integracji.

**Konsekwencje:**
- Standardowy protokół, dokumentacja Anthropic
- Działa lokalnie bez zewnętrznych serwisów
- Ograniczenie do Claude Code (nie działa z claude.ai web)

---

## ADR-003: Testowe wdrożenie Highlight Report i Exception Report

**Data:** 17.01.2026
**Status:** experimental

**Kontekst:**
Szukamy dobrych praktyk z Prince2 Agile i PKM, które mogą wspierać nasz system. Highlight Report (cotygodniowy status) i Exception Report (raport przy problemach) to standardowe narzędzia Prince2.

**Decyzja:**
Wdrażamy oba mechanizmy **testowo**:
1. **Highlight Report** — szablon w WEEKLY_REVIEW.md z kolorowym statusem 🟢🟡🔴
2. **Exception Report** — sekcja 12 w CLAUDE_RULES.md, wpisy trafiają do JOURNAL.md

**Warunki utrzymania:**
- Jeśli po 4 tygodniach mechanizmy nie są używane lub nie przynoszą wartości → rewaluacja
- Jeśli są zbyt formalne / uciążliwe → uproszczenie lub usunięcie
- Decyzja o kontynuacji: wpis ADR-004

**Konsekwencje:**
- Lepszy wgląd w status projektów (Highlight)
- Strukturalne podejście do problemów (Exception)
- Ryzyko: overhead jeśli zbyt formalne

---

> **Koniec DECISIONS.md**
