# SYSTEM_MAP.md — Mapa systemu zarządzania projektami

> Jak wszystko jest połączone i jak to działa.
> **Lokalizacja centralna:** `_jarvis/docs/central/`

---

## 1. STRUKTURA FIZYCZNA

```
C:\WORK\projects\
│
├── _jarvis/                         ← MÓZG SYSTEMU (centrum wiedzy)
│   ├── CLAUDE.md                    ← Instrukcje dla Claude
│   ├── docs/central/                ← DOKUMENTY CENTRALNE
│   │   ├── WORKFLOW_LIFECYCLE.md    ← ⭐ METODOLOGIA
│   │   ├── PROJECT_REGISTRY.md      ← ⭐ STATUS WSZYSTKICH
│   │   ├── PORTFOLIO.md             ← Szczegóły projektów
│   │   ├── RESOURCES.md             ← Zasoby i infrastruktura
│   │   ├── SKILLS.md                ← Nabyte umiejętności
│   │   ├── PITFALLS/                ← Pułapki narzędzi
│   │   ├── TODO.md                  ← Centralne zadania
│   │   ├── NOTES.md                 ← Centralne notatki
│   │   ├── JOURNAL.md               ← Dziennik
│   │   ├── KNOWLEDGE.md             ← Baza wiedzy
│   │   └── MEMORY.md                ← Pamięć między sesjami
│   └── prompts/                     ← Biblioteka promptów
│
├── _meta-operating-system/          ← PORTFOLIO I SZABLONY
│   ├── CLAUDE.md                    ← Instrukcje (ref do _jarvis)
│   ├── CLAUDE_TEMPLATE.md           ← Szablon dla nowych projektów
│   └── CONCEPT/                     ← Koncepcje projektów
│
├── _lab/                            ← LABORATORIUM POMYSŁÓW
│   ├── CLAUDE.md                    ← Instrukcje (ref do _jarvis)
│   ├── ideas/                       ← Surowe pomysły (🌱)
│   │   ├── tech/
│   │   ├── income/
│   │   ├── health/
│   │   └── wellbeing/
│   └── workspace/                   ← Prace koncepcyjne (🔬 → 📋)
│
├── _tools-and-lab/                  ← NARZĘDZIA WSPÓLNE
├── _doc-assistant/                  ← ASYSTENT DOKUMENTÓW
│
├── a001-fakturownia-batch/          ← PROJEKT OPERACYJNY
│   ├── CLAUDE.md                    ← Z szablonu (ref do _jarvis)
│   └── ...
│
├── b001-pc-status-monitor/          ← PROJEKT OPERACYJNY
└── [pozostałe projekty]/
```

---

## 2. HIERARCHIA DOSTĘPU

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         HIERARCHIA DOSTĘPU                                  │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│                         _JARVIS (MÓZG)                                      │
│                    ═══════════════════════                                  │
│                           │                                                 │
│         ┌─────────────────┼─────────────────┐                               │
│         │                 │                 │                               │
│         ▼                 ▼                 ▼                               │
│  PROJEKTY "_"       PROJEKTY "_"      PROJEKTY "_"                         │
│  (infrastrukturalne) (PEŁNY DOSTĘP)                                        │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐                         │
│  │ _meta       │  │ _lab        │  │ _tools      │                         │
│  │ _doc-asst   │  │             │  │             │                         │
│  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘                         │
│         │                │                │                                 │
│         └────────────────┼────────────────┘                                 │
│                          │                                                  │
│                          ▼                                                  │
│              PROJEKTY OPERACYJNE                                            │
│              (OGRANICZONY DOSTĘP)                                           │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐  ┌─────────┐                        │
│  │ a001    │  │ b001    │  │ c001    │  │ ...     │                        │
│  └────┬────┘  └────┬────┘  └────┬────┘  └────┬────┘                        │
│       │            │            │            │                              │
│       └────────────┴────────────┴────────────┘                              │
│                          │                                                  │
│                          ▼                                                  │
│                  ZASILAJĄ JARVISA                                           │
│            (wiedzą, skills, pitfalls)                                       │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 3. SIEĆ REFERENCJI

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           SIEĆ REFERENCJI                                   │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│                       _jarvis/docs/central/                                 │
│                    ═══════════════════════════                              │
│                           │                                                 │
│         ┌─────────────────┼─────────────────┐                               │
│         │                 │                 │                               │
│         ▼                 ▼                 ▼                               │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────┐                 │
│  │PROJECT_     │  │PORTFOLIO.md │  │WORKFLOW_            │                 │
│  │REGISTRY.md  │  │             │  │LIFECYCLE.md         │                 │
│  │             │  │ Szczegóły   │  │                     │                 │
│  │ Status      │  │ projektów   │  │ ⭐ METODOLOGIA      │                 │
│  │ wszystkich  │  │             │  │                     │                 │
│  └──────┬──────┘  └──────┬──────┘  └──────────┬──────────┘                 │
│         │                │                    │                             │
│         │         aktualizowane          referencja z                       │
│         │                │                    │                             │
│         ▼                ▼                    ▼                             │
│  ┌─────────────────────────────────────────────────────┐                   │
│  │              WSZYSTKIE PROJEKTY                     │                   │
│  │  ┌─────────┐  ┌─────────┐  ┌─────────┐  ┌────────┐ │                   │
│  │  │_meta    │  │_lab     │  │a001     │  │ ...    │ │                   │
│  │  │CLAUDE.md│  │CLAUDE.md│  │CLAUDE.md│  │CLAUDE.md│ │                   │
│  │  └────┬────┘  └────┬────┘  └────┬────┘  └────┬───┘ │                   │
│  │       │            │            │            │      │                   │
│  │       └────────────┴────────────┴────────────┘      │                   │
│  │                         │                           │                   │
│  │              Sekcja "Dokumenty centralne"           │                   │
│  │              wskazuje na _jarvis/docs/central/      │                   │
│  └─────────────────────────────────────────────────────┘                   │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 4. JAK TO DZIAŁA — PRZEPŁYW

### Scenariusz 1: Nowy pomysł

```
1. Użytkownik: "Mam pomysł na X"
   │
2. Claude sprawdza WORKFLOW_LIFECYCLE.md → Faza 0: ISKRA
   │
3. Claude tworzy plik w _lab/ideas/[kategoria]/YYYY-MM-DD_nazwa.md
   │
4. Claude aktualizuje _jarvis/docs/central/PROJECT_REGISTRY.md:
   │  - Dodaje wiersz ze statusem 🌱
   │  - Dodaje wpis do dziennika zmian
   │
5. Claude commituje i pushuje _lab oraz _jarvis
```

### Scenariusz 2: Rozkminięcie pomysłu

```
1. Użytkownik: "Rozkmińmy pomysł X"
   │
2. Claude sprawdza WORKFLOW_LIFECYCLE.md → Faza 1: ROZKMINIĘCIE
   │
3. Claude tworzy _lab/workspace/nazwa-pomyslu/:
   │  - CONCEPT.md (szablon)
   │  - NOTATKI.md
   │
4. Claude aktualizuje PROJECT_REGISTRY.md:
   │  - Zmienia status na 🔬
   │  - Dodaje ścieżkę workspace
   │  - Dodaje wpis do dziennika zmian
   │
5. [Praca nad koncepcją...]
   │
6. Gdy gotowe → status 📋
```

### Scenariusz 3: Promowanie do projektu

```
1. Użytkownik: "Zainicjuj projekt z pomysłu X"
   │
2. Claude sprawdza WORKFLOW_LIFECYCLE.md → Faza 3: INICJALIZACJA
   │
3. Claude wykonuje checklistę:
   │  ├── mkdir C:\WORK\projects\[nazwa]
   │  ├── Kopiuje CLAUDE_TEMPLATE.md → CLAUDE.md
   │  ├── Przenosi CONCEPT.md
   │  ├── git init && gh repo create
   │
4. Claude aktualizuje PROJECT_REGISTRY.md:
   │  ├── Przenosi do archiwum ze statusem ✅
   │  ├── Dodaje link do repo
   │  └── Wpis w dzienniku zmian
   │
5. Claude aktualizuje PORTFOLIO.md:
   │  ├── Dodaje projekt do listy
   │  └── Wpis w historii zmian
   │
6. Commituje i pushuje: _lab, _jarvis, nowy projekt
```

---

## 5. CO ZAPEWNIA DZIAŁANIE

### A) Claude zna kontekst

Gdy Claude pracuje w dowolnym projekcie:
1. Czyta CLAUDE.md tego projektu
2. Widzi sekcję "Dokumenty centralne" → wie gdzie jest metodologia
3. Może sięgnąć do `_jarvis/docs/central/WORKFLOW_LIFECYCLE.md`

### B) Checklisty wymuszają aktualizacje

W WORKFLOW_LIFECYCLE.md są checklisty z wymogiem aktualizacji:
```
- [ ] PORTFOLIO.md zaktualizowane
- [ ] PROJECT_REGISTRY.md → ✅ + archiwum
```

### C) Sekcja "ZASADA: Aktualizacja rejestrów"

Jasna tabela co aktualizować kiedy + przypomnienie:
> **Claude MUSI po każdej operacji na pomyśle/projekcie:**
> 1. Sprawdzić czy PROJECT_REGISTRY.md wymaga aktualizacji
> 2. Sprawdzić czy PORTFOLIO.md wymaga aktualizacji

### D) Antywzorce jako ostrzeżenie

| Antywzorzec | Rozwiązanie |
|-------------|-------------|
| **Brak aktualizacji rejestrów** | Po każdej zmianie aktualizuj |

---

## 6. PODSUMOWANIE

| Element | Lokalizacja | Rola |
|---------|-------------|------|
| **WORKFLOW_LIFECYCLE.md** | `_jarvis/docs/central/` | Źródło prawdy metodologii |
| **PROJECT_REGISTRY.md** | `_jarvis/docs/central/` | Status wszystkich pomysłów i projektów |
| **PORTFOLIO.md** | `_jarvis/docs/central/` | Szczegóły projektów operacyjnych |
| **RESOURCES.md** | `_jarvis/docs/central/` | Zasoby i infrastruktura |
| **SKILLS.md** | `_jarvis/docs/central/` | Nabyte umiejętności |
| **CLAUDE_TEMPLATE.md** | `_meta/` | Szablon z referencjami |
| **CLAUDE.md** | Każdy projekt | Referencja do _jarvis |

**Mechanizm działania:**
1. Szablon ma wbudowaną referencję → nowe projekty dziedziczą
2. Checklisty wymuszają aktualizacje rejestrów
3. Claude czyta CLAUDE.md → zna gdzie szukać metodologii
4. Antywzorce przypominają o konsekwencjach pomijania

---

## Historia zmian

| Data       | Opis |
|------------|------|
| 17.01.2026 | Migracja do _jarvis/docs/central/, aktualizacja struktury |
| 16.01.2026 | Utworzenie dokumentu |

---

> **Koniec SYSTEM_MAP.md**
