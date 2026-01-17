# CLAUDE.md — _jarvis

> **Projekt:** Centralny asystent do notatek, TODO, kalendarza, email
> **Alias:** mini-Jarvis — bo od razu wiadomo o co chodzi

---

## 0. CENTRALNE ZASADY

> **Claude na starcie sesji MUSI przeczytać:**
> - `C:\WORK\projects\_jarvis\docs\central\CLAUDE_RULES.md` — datownik, profil, rola, hierarchia, zabronione
> - `C:\WORK\projects\_jarvis\docs\central\GIT_STRATEGY.md` — format commitów, strategia push
> - `C:\WORK\projects\_jarvis\docs\central\STYLE_GUIDE.md` — formatowanie dokumentów

### Centralne pliki z tagowaniem

| Plik | Cel | Tag dla tego projektu |
|------|-----|-----------------------|
| `docs/central/TODO.md` | Lista zadań | `@_jarvis` |
| `docs/central/NOTES.md` | Notatki | `@_jarvis` |
| `docs/central/JOURNAL.md` | Dziennik | `@_jarvis` |
| `docs/central/KNOWLEDGE.md` | Baza wiedzy | `@_jarvis` |
| `docs/MEMORY.md` | Pamięć między sesjami | — |
| `docs/WEEKLY_REVIEW.md` | Przeglądy tygodniowe | — |

---

## 1. KONTEKST PROJEKTU

| Element              | Wartość                                                              |
|----------------------|----------------------------------------------------------------------|
| **Nazwa projektu**   | _jarvis                                                              |
| **Cel biznesowy**    | Centralny asystent integrujący notatki, TODO, kalendarz, email       |
| **Problem**          | Claude wpisuje rzeczy w złe miejsca, brak pamięci między sesjami     |
| **Zakres MVP**       | MCP do zarządzania notatkami i TODO w projektach                     |
| **Docelowo**         | Pełny asystent z RAG, Telegramem, kalendarzem, emailem               |
| **Użytkownicy**      | Ja (właściciel wielu projektów, nie-programista)                     |
| **Repo GitHub**      | https://github.com/SlawomirPost/_jarvis                              |

---

## 2. WERSJE NARZĘDZI

> **WAŻNE:** Claude generuje kod zgodny z zadeklarowanymi wersjami.

| Narzędzie         | Wersja      | Dokumentacja                        |
|-------------------|-------------|-------------------------------------|
| n8n (Hostinger)   | 2.1.5       | https://docs.n8n.io                 |
| Python            | 3.11+       | https://docs.python.org/3/          |
| Claude API        | 2024-01     | https://docs.anthropic.com/         |
| MCP SDK           | latest      | https://modelcontextprotocol.io/    |
| Node.js           | 20.x LTS    | https://nodejs.org/docs/            |

**Zasada aktualizacji:** Gdy narzędzie się aktualizuje, zaktualizuj tę tabelę.

---

## 3. ARCHITEKTURA FAZOWA

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         _JARVIS — ARCHITEKTURA                          │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  FAZA 1: LITE (MVP)              FAZA 2: CORE           FAZA 3: FULL   │
│  ─────────────────               ──────────             ──────────      │
│  MCP do notatek/TODO             + Telegram Bot         + RAG/Vector DB │
│  Integracja z _meta              + Kalendarz Google     + Voice         │
│  Podstawowe skill'e              + Gmail search         + Multi-model   │
│  ↓                               + Pamięć PostgreSQL    + Proaktywne    │
│  TERAZ                           ↓                      ↓               │
│                                  ~2 tyg                 ~1 mies         │
│                                                                         │
├─────────────────────────────────────────────────────────────────────────┤
│  WSPÓLNE KOMPONENTY                                                     │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐                  │
│  │ Notatki      │  │ TODO         │  │ Kalendarz    │                  │
│  │ JOURNAL.md   │  │ TODO.md      │  │ Google Cal   │                  │
│  │ NOTES.md     │  │ + projekty   │  │ + reminders  │                  │
│  │ KNOWLEDGE.md │  │              │  │              │                  │
│  └──────────────┘  └──────────────┘  └──────────────┘                  │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 4. MVP — FAZA 1 (LITE)

### Zakres MVP

| Element                      | Opis                                               |
|------------------------------|----------------------------------------------------|
| **MCP jarvis-notes**         | Zarządzanie JOURNAL.md, NOTES.md, KNOWLEDGE.md     |
| **MCP jarvis-todo**          | Zarządzanie TODO.md w projektach                   |
| **Skill /j**                 | Szybki dostęp do funkcji Jarvisa z Claude Code     |
| **Integracja z _meta**       | Czytanie/pisanie w docs/ projektu _meta            |

### Definition of Done (MVP)

- [ ] MCP działa lokalnie z Claude Code
- [ ] Można dodać notatkę: "zanotuj: ..." → trafia do NOTES.md
- [ ] Można dodać TODO: "do zrobienia: ..." → trafia do TODO.md
- [ ] Można przeszukać bazę wiedzy: "co wiemy o X?"
- [ ] Nie wymaga żadnych zewnętrznych serwisów (local-first)

### Czego NIE ma w MVP

- Telegram bot
- Kalendarz Google
- Email
- RAG / Vector DB
- Voice interface

---

## 5. PROCES PRACY

### 5.1 ETAP: CONCEPT (koncepcja)
> Pełna koncepcja w [docs/CONCEPT.md](docs/CONCEPT.md)

### 5.2 ETAP: PLAN
> **Kiedy:** Po zatwierdzeniu CONCEPT.
> **Format:** Szczegółowy plan z krokami w docs/PLAN.md

### 5.3 ETAP: WYKONANIE
> **Kiedy:** Po zatwierdzeniu PLAN.
> **Zasada:** Iteracyjnie — buduj i używaj jednocześnie

### 5.4 PĘTLA WERYFIKACJI
```
CLAUDE GENERUJE → UŻYTKOWNIK TESTUJE → Działa?
    TAK → COMMIT + następny krok
    NIE → CLAUDE POPRAWIA → [powrót do testowania]
```

---

## 6. KOMENDY

| Komenda      | Działanie                                          |
|--------------|----------------------------------------------------|
| `/concept`   | Pokaż/edytuj koncepcję projektu                    |
| `/plan`      | Pokaż plan przed wykonaniem                        |
| `/execute`   | Przejdź do wykonania (po zatwierdzeniu planu)      |
| `/status`    | Pokaż aktualny stan projektu i roadmapę            |
| `/j note`    | Szybka notatka przez Jarvisa                       |
| `/j todo`    | Szybkie TODO przez Jarvisa                         |
| `/j find`    | Szukaj w bazie wiedzy                              |

### Globalny skill jarvis-notes

Skill `jarvis-notes` jest zainstalowany globalnie i działa we **wszystkich projektach**:

```
~/.claude/skills/jarvis-notes/skill.md
```

**Aktywacja:** Claude automatycznie używa skilla gdy słyszy:
- "zanotuj:", "zapisz:", "notatka:"
- "do zrobienia:", "TODO:", "task:"
- "co wiesz o...", "znajdź...", "przypomnij..."
- "refleksja:", "przemyślenie:"

**Działanie:** Wszystkie notatki trafiają do centralnych plików z tagiem `@projekt`.

---

## 7. ZARZĄDZANIE WIEDZĄ

### Powiązane dokumenty

| Dokument                         | Opis                                    |
|----------------------------------|-----------------------------------------|
| [docs/CONCEPT.md](docs/CONCEPT.md)     | Pełna koncepcja projektu          |
| [docs/DECISIONS.md](docs/DECISIONS.md) | Rejestr decyzji architektonicznych|
| [docs/RUNBOOK.md](docs/RUNBOOK.md)     | Instrukcje operacyjne             |
| [docs/NOTES.md](docs/NOTES.md)         | Notatki projektowe                |
| [docs/JOURNAL.md](docs/JOURNAL.md)     | Dziennik projektu                 |
| [docs/MEMORY.md](docs/MEMORY.md)       | Pamięć między sesjami (pkt 8, 12) |
| [docs/WEEKLY_REVIEW.md](docs/WEEKLY_REVIEW.md) | Przeglądy tygodniowe (pkt 11) |

### Powiązanie z _meta-operating-system

_jarvis jest narzędziem pomocniczym dla całego portfolio projektów:
- Lokalizacja: `C:\WORK\projects\_jarvis\`
- Integruje się z: `C:\WORK\projects\_meta-operating-system\docs\`
- Docelowo: zarządza notatkami we WSZYSTKICH projektach

### Dokumenty centralne (_meta)

| Dokument | Lokalizacja | Opis |
|----------|-------------|------|
| **WORKFLOW_LIFECYCLE.md** | `_meta/docs/` | Cykl życia projektu: pomysł → projekt |
| PORTFOLIO.md | `_meta/` | Lista projektów operacyjnych |
| CLAUDE_TEMPLATE.md | `_meta/` | Szablon CLAUDE.md |

> **Ścieżka względna:** `../_meta-operating-system/`

---

## 8. ŹRÓDŁA I DOKUMENTACJA

| Zasób                | Link                                         |
|----------------------|----------------------------------------------|
| Repo projektu        | https://github.com/SlawomirPost/_jarvis      |
| MCP Protocol         | https://modelcontextprotocol.io/             |
| Claude Code docs     | https://docs.anthropic.com/claude-code       |
| n8n docs             | https://docs.n8n.io                          |
| LangChain            | https://python.langchain.com/docs/           |

---

## 9. ROADMAPA

### Faza 1: LITE (MVP) — TERAZ
- [ ] Struktura projektu ✅
- [ ] MCP jarvis-notes (CRUD na markdown files)
- [ ] MCP jarvis-todo (zarządzanie TODO.md)
- [ ] Testowanie z Claude Code
- [ ] Dokumentacja użycia

### Faza 2: CORE
- [ ] Telegram bot jako interfejs mobilny
- [ ] Google Calendar integration
- [ ] Gmail search
- [ ] PostgreSQL dla pamięci długoterminowej

### Faza 3: FULL
- [ ] RAG na dokumentach (GDrive, Notion)
- [ ] Vector DB (Chroma → Pinecone)
- [ ] Voice interface (Whisper + TTS)
- [ ] Proaktywne powiadomienia

---

## 10. UWAGI AI

> Sekcja wypełniana przez Claude przy każdej odpowiedzi, jeśli dotyczy:

```
### Uwagi AI
- Założenia: [lista przyjętych założeń]
- Uproszczenia: [co zostało uproszczone i dlaczego]
- Do wyjaśnienia: [pytania do użytkownika]
```

---

## HISTORIA ZMIAN

| Data       | Wersja | Opis zmiany                                           |
|------------|--------|-------------------------------------------------------|
| 16.01.2026 | 1.0    | Inicjalizacja projektu _jarvis                        |
| 16.01.2026 | 1.1    | Dodanie referencji do WORKFLOW_LIFECYCLE.md           |
| 17.01.2026 | 1.2    | Dodanie sekcji ZASADY WSPÓŁPRACY (punkty 1-12)        |
| 17.01.2026 | 1.2    | Utworzenie MEMORY.md i WEEKLY_REVIEW.md               |
| 17.01.2026 | 2.0    | Centralizacja: sekcja 0 z referencjami do central/    |

---

> **Koniec CLAUDE.md**
