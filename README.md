# _jarvis

> **Centralny mózg systemu** — metodologia, wiedza, pamięć, narzędzia.
> Mini-Jarvis, bo od razu wiadomo o co chodzi.

---

## Status

| Element | Wartość |
|---------|---------|
| **Faza** | 1 - LITE (MVP) |
| **Rola** | Centrum operacyjne dla wszystkich projektów |
| **Utworzono** | 16.01.2026 |
| **Ostatnia aktualizacja** | 17.01.2026 |

---

## Co to jest _jarvis?

_jarvis to **centralny asystent** integrujący:
- Zarządzanie notatkami i wiedzą
- Listy TODO i zadania
- Konsultacje IT i troubleshooting
- Przetwarzanie dokumentów (OCR, tłumaczenia, analizy)
- Metodologię i dobre praktyki
- Pamięć między sesjami Claude

### Problem który rozwiązuje

- Claude wpisuje rzeczy w złe miejsca
- Wiedza rozproszona między projektami
- Brak pamięci kontekstu między sesjami
- Powtarzające się problemy IT bez dokumentacji

---

## Architektura

### Diagram struktury

```
_JARVIS (centrum)
    │
    ├── IN/                     ← Pliki do przetworzenia
    ├── OUT/YYYY-MM/            ← Gotowe wyniki
    ├── TEMP/                   ← Pliki tymczasowe (nie commitowane)
    │
    ├── docs/
    │   ├── central/            ← Centralne dokumenty (opisane niżej)
    │   ├── CONCEPT.md          ← Koncepcja projektu
    │   └── DECISIONS.md        ← Rejestr decyzji architektonicznych
    │
    ├── modules/
    │   ├── consultations/      ← Konsultacje IT
    │   ├── docs/               ← Przetwarzanie dokumentów
    │   └── troubleshooting/    ← Baza rozwiązań IT
    │
    ├── skills/                 ← Skill'e Claude Code (lokalne kopie)
    └── prompts/                ← Biblioteka promptów LLM
```

---

### Metodologia: Przepływ pracy (IN → OUT)

```
┌─────────────────────────────────────────────────────────────────┐
│                    PRZEPŁYW PLIKÓW                              │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   IN/                    PRZETWARZANIE              OUT/        │
│   ┌─────┐                                          ┌─────┐     │
│   │ .pdf│  ─────────────────────────────────────►  │ .md │     │
│   │ .jpg│        OCR / Tłumaczenie /               │.docx│     │
│   │ .doc│        Streszczenie / Analiza            │ .pdf│     │
│   └─────┘                                          └─────┘     │
│                                                                 │
│   TEMP/                                                         │
│   ┌─────┐                                                       │
│   │ ... │  Pliki robocze (nie commitowane)                     │
│   └─────┘                                                       │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

### Metodologia: Centralizacja wiedzy

Wszystkie projekty używają wspólnych dokumentów z tagowaniem `@projekt`:

```
docs/central/
│
├── CLAUDE_RULES.md         ← Zasady dla Claude (datownik, hierarchia)
├── GIT_STRATEGY.md         ← Format commitów, strategia push
├── STYLE_GUIDE.md          ← Formatowanie dokumentów
│
├── TODO.md                 ← Zadania (tagowane @projekt)
├── NOTES.md                ← Notatki (tagowane @projekt)
├── JOURNAL.md              ← Dziennik (tagowane @projekt)
├── KNOWLEDGE.md            ← Baza wiedzy
│
├── MEMORY.md               ← Pamięć między sesjami Claude
├── WEEKLY_REVIEW.md        ← Przeglądy tygodniowe
│
├── WORKFLOW_LIFECYCLE.md   ← Metodologia Stage-Gate
├── PROJECT_REGISTRY.md     ← Status wszystkich pomysłów/projektów
├── PORTFOLIO.md            ← Szczegóły projektów operacyjnych
├── RESOURCES.md            ← Zasoby i infrastruktura
│
├── METHODOLOGY.md          ← Techniki kreatywnego myślenia
├── SKILLS.md               ← Nabyte umiejętności
├── SYSTEM_MAP.md           ← Mapa powiązań systemu
├── BEST_PRACTICES.md       ← Dobre praktyki (12 domen)
│
└── PITFALLS/               ← Pułapki narzędzi (n8n, API...)
    ├── n8n.md
    └── ...
```

**Zasada tagowania:**
```markdown
## 17.01.2026 — Tytuł wpisu @_jarvis @_meta

Treść wpisu...
```

---

### Metodologia: Stage-Gate (WORKFLOW_LIFECYCLE)

```
┌──────────────────────────────────────────────────────────────────────┐
│                        STAGE-GATE WORKFLOW                           │
├──────────────────────────────────────────────────────────────────────┤
│                                                                      │
│   POMYSŁ          KONCEPCJA         PROJEKT           OPERACJE      │
│   ┌─────┐         ┌─────┐          ┌─────┐           ┌─────┐        │
│   │idea-│ ──GATE──│work-│ ──GATE── │proj-│ ──GATE──  │ ops │        │
│   │ NNN │    1    │space│    2     │ NNN │    3      │     │        │
│   └─────┘         └─────┘          └─────┘           └─────┘        │
│   _lab/ideas/     _lab/workspace/  C:\WORK\projects\ Utrzymanie     │
│                                                                      │
│   GATE 1: Czy warto eksplorować?                                    │
│   GATE 2: Czy warto budować?                                        │
│   GATE 3: Czy działa w produkcji?                                   │
│                                                                      │
└──────────────────────────────────────────────────────────────────────┘
```

---

### Metodologia: Moduły funkcjonalne

```
modules/
│
├── consultations/              ← KONSULTACJE IT
│   ├── CONSULTATION_REGISTRY.md   ← Rejestr wszystkich konsultacji
│   ├── knowledge-base/            ← Wyciągnięta wiedza z konsultacji
│   │   ├── subiekt-nexo/
│   │   ├── wordpress/
│   │   └── [produkt]/
│   └── YYYY-MM/                   ← Konsultacje pogrupowane miesięcznie
│       └── YYYY-MM-DD_[klient]-[temat]/
│           ├── NOTATKI.md         ← Główne notatki
│           ├── files/             ← Pliki od klienta
│           ├── screenshots/       ← Zrzuty ekranu
│           └── workspace/         ← Pliki robocze, raporty
│
├── docs/                       ← PRZETWARZANIE DOKUMENTÓW
│   ├── templates/                 ← Szablony promptów
│   │   ├── PROMPT_OCR.md
│   │   ├── PROMPT_TLUMACZENIE.md
│   │   ├── PROMPT_STRESZCZENIE.md
│   │   └── PROMPT_ANALIZA.md
│   └── archive/                   ← Archiwum historycznych wyników
│       └── ocr/YYYY-MM/
│
└── troubleshooting/            ← BAZA ROZWIĄZAŃ IT
    ├── templates/                 ← Szablon problemu
    ├── windows/                   ← BSOD, sterowniki, uprawnienia
    ├── wordpress/                 ← Wtyczki, motywy, bazy danych
    ├── n8n/                       ← Workflow, credentials, node'y
    ├── hosting/                   ← cPanel, DNS, SSL, FTP, email
    ├── linux/                     ← Uprawnienia, procesy, cron
    ├── networking/                ← DNS, firewall, VPN, proxy
    ├── databases/                 ← MySQL, PostgreSQL, backup
    └── other/                     ← Wszystko inne
```

---

### Metodologia: Skills (Claude Code)

Skills to instrukcje dla Claude, które aktywują się automatycznie:

```
~/.claude/skills/               ← Globalne (działają wszędzie)
├── jarvis-docs/
│   └── skill.md               ← Instrukcje przetwarzania dokumentów
└── jarvis-troubleshoot/
    └── skill.md               ← Instrukcje troubleshooting IT

_jarvis/skills/                 ← Lokalne kopie (source of truth)
├── jarvis-docs/
└── jarvis-troubleshoot/
```

**Aktywacja automatyczna:**
| Fraza użytkownika | Aktywowany skill |
|-------------------|------------------|
| "OCR", "rozpoznaj tekst" | jarvis-docs |
| "przetłumacz", "tłumaczenie" | jarvis-docs |
| "streść", "podsumuj" | jarvis-docs |
| "problem z", "nie działa" | jarvis-troubleshoot |
| "konsultacja", "klient zgłosił" | jarvis-troubleshoot |

---

### Metodologia: Zasady YAGNI i DRY

**YAGNI (You Ain't Gonna Need It):**
- Nie tworzymy struktury "na zapas"
- Folder powstaje gdy jest potrzebny
- Dokument powstaje gdy ma >1 użycie

**DRY (Don't Repeat Yourself):**
- Jeden plik = jedno źródło prawdy
- Wiedza z konsultacji → knowledge-base
- Powtarzające się problemy → troubleshooting

---

### Metodologia: Rejestracja i śledzenie

| Rejestr | Plik | Zawartość |
|---------|------|-----------|
| Projekty | `PROJECT_REGISTRY.md` | Wszystkie pomysły i projekty |
| Konsultacje | `CONSULTATION_REGISTRY.md` | Wszystkie konsultacje IT |
| Decyzje | `DECISIONS.md` | Decyzje architektoniczne |

**Statusy:**
| Symbol | Znaczenie |
|--------|-----------|
| 🟡 | W trakcie |
| 🟢 | Zakończone/Rozwiązane |
| 🔴 | Zablokowane/Nierozwiązane |
| ⚪ | Przekazane/Odłożone |

---

## Skill'e (Claude Code)

_jarvis dostarcza globalne skill'e dla Claude Code:

| Skill | Aktywacja | Funkcja |
|-------|-----------|---------|
| **jarvis-docs** | "OCR", "przetłumacz", "streść" | Przetwarzanie dokumentów |
| **jarvis-troubleshoot** | "problem z", "nie działa", "konsultacja" | IT troubleshooting |

Skill'e są zainstalowane globalnie w `~/.claude/skills/` i działają we wszystkich projektach.

---

## Roadmapa

### Faza 1: LITE (MVP) — TERAZ
- [x] Struktura projektu
- [x] Centralne dokumenty (TODO, NOTES, JOURNAL, KNOWLEDGE)
- [x] Moduł konsultacji IT (z _tools-and-lab)
- [x] Moduł dokumentów (z _doc-assistant)
- [x] Skill'e globalne
- [x] Foldery IN/OUT/TEMP
- [ ] MCP jarvis-notes
- [ ] MCP jarvis-todo

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

## Dokumentacja

| Dokument | Opis |
|----------|------|
| [CLAUDE.md](CLAUDE.md) | Instrukcje dla Claude |
| [docs/CONCEPT.md](docs/CONCEPT.md) | Pełna koncepcja projektu |
| [docs/central/](docs/central/) | Centralne dokumenty |

---

## Powiązania

```
PROJEKTY NARZĘDZIOWE (_)
├── _jarvis     ← MÓZG (ten projekt)
├── _meta       ← portfolio, szablony
└── _lab        ← inkubator pomysłów
```

_jarvis wchłonął funkcjonalności z:
- ~~_doc-assistant~~ → `modules/docs/`
- ~~_tools-and-lab~~ → `modules/consultations/` + `modules/troubleshooting/`

---

## Quick Start

```bash
# Skill'e są już zainstalowane globalnie
# Claude automatycznie je aktywuje gdy:

# Dokumenty:
"Zrób OCR tego zdjęcia"
"Przetłumacz ten dokument"
"Streść ten artykuł"

# IT Troubleshooting:
"Mam problem z WordPress"
"Klient zgłosił błąd"
"Otwórz nową konsultację"
```

---

> **GitHub:** [SlawomirPost/_jarvis](https://github.com/SlawomirPost/_jarvis)
