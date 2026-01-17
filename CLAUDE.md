# CLAUDE.md — _jarvis

> **Projekt:** Centralny asystent do notatek, TODO, kalendarza, email
> **Alias:** mini-Jarvis — bo od razu wiadomo o co chodzi

---

## 0. CENTRALNE ZASADY

> **Claude na starcie sesji MUSI przeczytać:**
> - `C:\WORK\projects\_jarvis\docs\central\CLAUDE_RULES.md` — datownik, profil, rola, hierarchia, zabronione
> - `C:\WORK\projects\_jarvis\docs\central\GIT_STRATEGY.md` — format commitów, strategia push
> - `C:\WORK\projects\_jarvis\docs\central\STYLE_GUIDE.md` — formatowanie dokumentów

### Centralne pliki — notatki i pamięć

| Plik | Cel | Tag dla tego projektu |
|------|-----|-----------------------|
| `docs/central/TODO.md` | Lista zadań | `@_jarvis` |
| `docs/central/NOTES.md` | Notatki | `@_jarvis` |
| `docs/central/JOURNAL.md` | Dziennik | `@_jarvis` |
| `docs/central/KNOWLEDGE.md` | Baza wiedzy | `@_jarvis` |
| `docs/central/MEMORY.md` | Pamięć między sesjami | — |
| `docs/central/WEEKLY_REVIEW.md` | Przeglądy tygodniowe | — |

### Centralne pliki — metodologia i zarządzanie

| Plik | Cel |
|------|-----|
| `docs/central/WORKFLOW_LIFECYCLE.md` | Metodologia: pomysł → projekt |
| `docs/central/PROJECT_REGISTRY.md` | Status wszystkich pomysłów i projektów |
| `docs/central/PORTFOLIO.md` | Szczegóły projektów operacyjnych |
| `docs/central/RESOURCES.md` | Zasoby i infrastruktura |

### Centralne pliki — wiedza i narzędzia

| Plik | Cel |
|------|-----|
| `docs/central/METHODOLOGY.md` | Techniki kreatywnego myślenia |
| `docs/central/SKILLS.md` | Nabyte umiejętności |
| `docs/central/SYSTEM_MAP.md` | Mapa powiązań systemu |
| `docs/central/PITFALLS/` | Pułapki narzędzi — prewencja |
| `docs/central/ZETTELKASTEN/` | Głęboka wiedza (atomowe notatki) |
| `modules/troubleshooting/` | Rozwiązane problemy — reakcja |
| `prompts/` | Biblioteka promptów LLM |

### Manifest i weryfikacja

| Plik | Cel |
|------|-----|
| `docs/central/JARVIS_MANIFEST.md` | Źródło prawdy o strukturze Jarvisa |

> **Health Check:** Raz w tygodniu porównaj manifest z rzeczywistością.
> **Trigger:** "sprawdź Jarvisa", "audyt", "czy wszystko OK"

### Trójwarstwowy model wiedzy

> Ustalono: 17.01.2026

| Warstwa | Plik | Cel |
|---------|------|-----|
| **Quick Reference** | `KNOWLEDGE.md` | Tipy, ustawienia, szybki lookup |
| **Deep Knowledge** | `ZETTELKASTEN/` | Atomowe notatki z confidence |
| **Meta/Graf** | `ZETTELKASTEN/KNOWLEDGE_GRAPH.md` | Powiązania, clusters |

---

## 0.1 ZASADA NADRZĘDNA: SPRAWCZOŚĆ SŁOWA

> **Jarvis ≠ narzędzie do budowania workflow**
> **Jarvis = rozmowa → efekt w realnym świecie**

### Filozofia

Użytkownik mówi "od teraz Kowalski dostaje kody rabatowe" — i Kowalski dostaje kody.
Nie "zbuduj mi workflow w n8n". Słowo ma moc sprawczą.

### Miernik sukcesu

| Test | Zdany gdy |
|------|-----------|
| "Od teraz X dostaje Y" | X dostaje Y |
| "Informuj mnie o Z" | Dostajesz informacje o Z |
| "Przestań" | Przestaje |

### Dwuetapowy model wdrożenia

1. **"W sobie"** — najpierw działa (nawet suboptymalne)
2. **Optymalizacja** — przeniesienie do n8n/innego narzędzia (opcjonalne)

### Co to oznacza dla Claude

- Nie pytaj "gdzie to zapisać?" — zdecyduj sam
- Nie raportuj "zbudowałem workflow" — raportuj "Kowalski dostał email"
- Priorytet: EFEKT > narzędzie

---

## 0.2 TRIGGERY → ZASOBY

> **Zasada:** Gdy napotkasz trigger — NAJPIERW przeczytaj zasób, POTEM działaj.
> **Cel:** Eliminacja "zapomniałem" / "nie wiedziałem"

| Trigger (słyszysz) | → Przeczytaj NAJPIERW | Działanie |
|--------------------|----------------------|-----------|
| Word, DOCX, dokument | `skills/jarvis-docs/skill.md` | Użyj pandoc + reference.docx |
| PDF, zrób PDF, eksport PDF | `skills/jarvis-docs/skill.md` | Użyj pandoc + Typst |
| OCR, skan, rozpoznaj tekst | `skills/jarvis-docs/skill.md` | Użyj PROMPT_OCR.md |
| tłumacz, translate | `skills/jarvis-docs/skill.md` | Użyj PROMPT_TLUMACZENIE.md |
| streść, podsumuj | `skills/jarvis-docs/skill.md` | Użyj PROMPT_STRESZCZENIE.md |
| n8n, workflow, automatyzacja | `docs/central/PITFALLS/n8n.md` | Sprawdź znane pułapki |
| nowy projekt, nowy pomysł | `docs/central/WORKFLOW_LIFECYCLE.md` | Użyj Stage-Gate |
| troubleshoot, problem, debug | `skills/jarvis-troubleshoot/skill.md` | Użyj szablonu PROBLEM |
| burza mózgów, kreatywnie | `docs/central/METHODOLOGY.md` | Użyj technik myślenia |
| sprawdź Jarvisa, audyt, health check | `docs/central/JARVIS_MANIFEST.md` | Wykonaj Health Check |

### Jak to działa

```
UŻYTKOWNIK: "zrób mi Word z tego"
     ↓
CLAUDE: [STOP] → Trigger "Word" wykryty
     ↓
CLAUDE: [PRZECZYTAJ] → skills/jarvis-docs/skill.md
     ↓
CLAUDE: [DZIAŁAJ] → pandoc + reference.docx
     ↓
EFEKT: Plik .docx w OUT/
```

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

## 3. ARCHITEKTURA DOCELOWA

> **Szczegółowa roadmapa:** [Sekcja 9](#9-roadmapa--jarvis-20) | [docs/ROADMAP.md](docs/ROADMAP.md)

```
┌─────────────────────────────────────────────────────────────────────────┐
│                     _JARVIS 2.0 — ARCHITEKTURA DOCELOWA                 │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  INTERFEJSY               CORE                    BAZA WIEDZY           │
│  ──────────               ────                    ───────────           │
│  ┌─────────────┐         ┌──────────────────┐    ┌──────────────┐      │
│  │ Claude Code │◄───────►│                  │    │ Markdown     │      │
│  │ (MCP)       │         │   ORCHESTRATOR   │───►│ (local)      │      │
│  ├─────────────┤         │                  │    ├──────────────┤      │
│  │ Telegram    │◄───────►│  - Routing       │    │ Vector DB    │      │
│  ├─────────────┤         │  - Memory        │───►│ (RAG)        │      │
│  │ Voice       │◄───────►│  - Tools exec    │    ├──────────────┤      │
│  │ (Whisper)   │         │                  │    │ PostgreSQL   │      │
│  └─────────────┘         └────────┬─────────┘    │ (pamięć)     │      │
│                                   │              └──────────────┘      │
│                          ┌────────┴────────┐                           │
│                          │   MULTI-AI      │                           │
│                          │ Claude│GPT│Gemini│                          │
│                          └────────┬────────┘                           │
│                                   │                                     │
│  ┌────────────────────────────────┴────────────────────────────────┐   │
│  │                         INTEGRACJE                               │   │
│  │  Google (6+ kont)  │  n8n  │  Fakturownia  │  GDrive  │  ...    │   │
│  └──────────────────────────────────────────────────────────────────┘   │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### Ewolucja autonomii

```
Human-in-the-loop → Human-on-the-loop → Human-out-of-loop
     (Faza 1-2)           (Faza 3)            (Faza 4)
```

---

## 4. FAZA 1: MVP (szczegóły)

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
| [docs/central/MEMORY.md](docs/central/MEMORY.md)       | Pamięć między sesjami (pkt 8, 12) |
| [docs/central/WEEKLY_REVIEW.md](docs/central/WEEKLY_REVIEW.md) | Przeglądy tygodniowe (pkt 11) |

### Rola _jarvis w systemie

_jarvis jest **mózgiem systemu** — centralnym miejscem dla metodologii, wiedzy i pamięci:

```
_JARVIS (centrum)
    ↑
    ├── _meta (portfolio, szablony, koncepcje)
    ├── _lab (inkubator pomysłów)
    └── _tools (narzędzia)

Projekty "_" → PEŁNY DOSTĘP do dokumentów centralnych
Projekty operacyjne → OGRANICZONY + ZASILAJĄ Jarvisa wiedzą
```

### Dokumenty w _meta (portfolio)

| Dokument | Lokalizacja | Opis |
|----------|-------------|------|
| CONCEPT/ | `_meta/CONCEPT/` | Koncepcje projektów |
| CLAUDE_TEMPLATE.md | `_meta/` | Szablon dla nowych projektów |

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

> **Pełna roadmapa:** [docs/ROADMAP.md](docs/ROADMAP.md)
> **Kierunek:** CONVERSATIONAL AGENCY — sprawczość słowa
> **Status:** Faza 1 (FUNDAMENT) w realizacji

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
| 17.01.2026 | 3.0    | **WIELKA MIGRACJA:** _jarvis jako mózg systemu        |
|            |        | - Przeniesienie WORKFLOW_LIFECYCLE, PORTFOLIO, SKILLS |
|            |        | - Przeniesienie PITFALLS, SYSTEM_MAP, prompts         |
|            |        | - Utworzenie PROJECT_REGISTRY (połączony rejestr)     |
|            |        | - Utworzenie RESOURCES (wydzielone zasoby)            |
| 17.01.2026 | 3.1    | Dodanie sekcji 0.1 ZASADA NADRZĘDNA: SPRAWCZOŚĆ SŁOWA |
| 17.01.2026 | 3.2    | Sekcja 9: tylko referencja do ROADMAP.md (DRY) |
| 17.01.2026 | 3.3    | Sekcja 0.2 TRIGGERY → ZASOBY (wariant B) |

---

> **Koniec CLAUDE.md**
