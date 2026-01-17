# WORKFLOW_LIFECYCLE.md — Cykl życia projektu

> Od iskry pomysłu do działającego projektu.
> Metodologia zarządzania portfolio projektów.
> **Lokalizacja centralna:** `_jarvis/docs/central/`

---

## Inspiracje metodologiczne

| Metodologia | Źródło | Co wykorzystujemy |
|-------------|--------|-------------------|
| **Stage-Gate** | Robert Cooper | Bramy decyzyjne między fazami |
| **Lean Startup** | Eric Ries | Build-Measure-Learn, MVP |
| **Design Thinking** | IDEO | Empathize-Define-Ideate-Prototype-Test |
| **GTD** | David Allen | Capture → Process → Organize → Review |

---

## Architektura: 3 przestrzenie

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         ARCHITEKTURA PRZESTRZENI                            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  _LAB (laboratorium)              _JARVIS (centrum)        PROJEKTY        │
│  ─────────────────                ─────────────────        ────────         │
│  ideas/ → pomysły surowe          PROJECT_REGISTRY.md      a001-xxx/       │
│  workspace/ → prace koncepcyjne   PORTFOLIO.md             b001-xxx/       │
│                                   WORKFLOW_LIFECYCLE.md    c001-xxx/       │
│                                   RESOURCES.md                              │
│                                                                             │
│  ┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐                  │
│  │ POMYSŁ  │───►│WORKSPACE│───►│ CONCEPT │───►│ PROJEKT │                  │
│  │ (iskra) │    │ (praca) │    │ (gotowy)│    │(aktywny)│                  │
│  └─────────┘    └─────────┘    └─────────┘    └─────────┘                  │
│       │              │              │              │                        │
│    _lab/          _lab/          _meta/        C:\WORK\                     │
│    ideas/       workspace/      CONCEPT/       projects\                    │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## Fazy cyklu życia

### Faza 0: ISKRA (Capture)

> **Gdzie:** `_lab/ideas/[kategoria]/`
> **Status w PROJECT_REGISTRY:** 🌱 Surowy

**Co to jest:**
- Surowy pomysł, notatka, inspiracja
- Minimum 2-3 zdania opisujące "o co chodzi"
- Bez analizy, bez oceny

**Format pliku:** `YYYY-MM-DD_nazwa-pomyslu.md`

**Szablon:**
```markdown
# [Nazwa pomysłu]

## Iskra
[2-3 zdania: co to jest, skąd się wzięło]

## Pytania
- [Co chciałbym zbadać?]

## Powiązania
- [Inne pomysły, projekty, kontekst]
```

**Brama do Fazy 1:**
- [ ] Pomysł jest zapisany
- [ ] Dodany do PROJECT_REGISTRY.md
- [ ] Kategoria przypisana

---

### Faza 1: ROZKMINIĘCIE (Explore)

> **Gdzie:** `_lab/workspace/[nazwa]/`
> **Status w PROJECT_REGISTRY:** 🔬 W rozkminięciu

**Co to jest:**
- Aktywna praca nad pomysłem
- Badania, prototypy, eksperymenty
- Workspace z plikami roboczymi

**Kiedy tworzyć workspace:**
- Pomysł wymaga więcej niż 1 sesję pracy
- Chcesz zbierać materiały, notatki, prototypy
- Pomysł ma potencjał stać się projektem

**Struktura workspace:**
```
workspace/nazwa-pomyslu/
├── CONCEPT.md          ← główny dokument koncepcji
├── NOTATKI.md          ← notatki robocze
├── research/           ← materiały źródłowe
├── prototypes/         ← prototypy, POC
└── assets/             ← grafiki, diagramy
```

**Brama do Fazy 2:**
- [ ] CONCEPT.md wypełniony (min. sekcje 1-6)
- [ ] Problem zdefiniowany
- [ ] Rozwiązanie zarysowane
- [ ] MVP określone
- [ ] Ryzyka zidentyfikowane

---

### Faza 2: CONCEPT GOTOWY (Define)

> **Gdzie:** `_lab/workspace/[nazwa]/CONCEPT.md` lub `_meta/CONCEPT/`
> **Status w PROJECT_REGISTRY:** 📋 Concept gotowy

**Co to jest:**
- Pełna dokumentacja koncepcyjna
- Gotowy do oceny i decyzji
- Może być przeniesiony do _meta/CONCEPT/ jako kandydat

**Wymagana zawartość CONCEPT.md:**

| Sekcja | Zawartość | Wymagane |
|--------|-----------|----------|
| 1. Problem | Co rozwiązujemy, jaki ból | ✅ |
| 2. Użytkownik | Kto, jak często, kontekst | ✅ |
| 3. Rozwiązanie | Architektura, komponenty | ✅ |
| 4. Technologia | Stack, narzędzia, wersje | ✅ |
| 5. MVP | Minimum viable, Definition of Done | ✅ |
| 6. Ryzyka | Co może pójść nie tak | ✅ |
| 7. Koszty | Szacunkowe koszty | Opcjonalne |
| 8. Plan | Kroki realizacji | Opcjonalne |

**Brama do Fazy 3 (DECYZJA):**

```
┌─────────────────────────────────────────────────────────────────┐
│                    BRAMA DECYZYJNA                              │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  Pytania do podjęcia decyzji:                                   │
│                                                                 │
│  1. Czy problem jest wart rozwiązania?          TAK / NIE       │
│  2. Czy mam zasoby (czas, pieniądze, narzędzia)? TAK / NIE      │
│  3. Czy priorytet jest wystarczający?           TAK / NIE       │
│  4. Czy ryzyko jest akceptowalne?               TAK / NIE       │
│                                                                 │
│  DECYZJE:                                                       │
│  ├── 4x TAK → ✅ Promuj do projektu                             │
│  ├── 1+ NIE, ale warto → ⏸️ Wstrzymaj (z uzasadnieniem)         │
│  └── NIE warto → ❌ Odrzuć (z uzasadnieniem)                    │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

### Faza 3: INICJALIZACJA PROJEKTU (Build)

> **Gdzie:** `C:\WORK\projects\[nazwa-projektu]\`
> **Status w PROJECT_REGISTRY:** ✅ Promowany

**Co to jest:**
- Pełnoprawny projekt w portfolio
- Własne repozytorium GitHub
- Własny CLAUDE.md

**Proces inicjalizacji:**

```bash
# 1. Utwórz katalog projektu
mkdir C:\WORK\projects\[nazwa-projektu]

# 2. Utwórz strukturę
mkdir docs n8n/workflows n8n/fixtures scripts .claude

# 3. Skopiuj CLAUDE.md z szablonu
cp _meta/CLAUDE_TEMPLATE.md [projekt]/CLAUDE.md

# 4. Przenieś/adaptuj CONCEPT
cp _lab/workspace/[nazwa]/CONCEPT.md [projekt]/docs/CONCEPT.md

# 5. Zainicjuj Git
git init && git add . && git commit -m "feat: inicjalizacja projektu"

# 6. Utwórz repo GitHub
gh repo create [nazwa] --public --source=. --push
```

**Po inicjalizacji zaktualizuj:**
- [ ] `_jarvis/docs/central/PORTFOLIO.md` — dodaj projekt
- [ ] `_jarvis/docs/central/PROJECT_REGISTRY.md` — oznacz jako ✅ Promowany

**Brama do Fazy 4:**
- [ ] Repozytorium utworzone
- [ ] CLAUDE.md wypełniony
- [ ] CONCEPT.md przeniesiony
- [ ] Pierwszy commit

---

### Faza 4: REALIZACJA (Execute)

> **Gdzie:** projekt operacyjny
> **Status:** W TRAKCIE

**Cykl pracy (z CLAUDE_TEMPLATE.md):**

```
CONCEPT → PLAN → WYKONANIE → WERYFIKACJA → COMMIT
    ↑                              │
    └──────────────────────────────┘
```

**Definition of Done dla MVP:**
- Zdefiniowane w CONCEPT.md projektu
- Wszystkie checkboxy MVP zaznaczone
- Testy przechodzą
- Dokumentacja aktualna

---

### Faza 5: UTRZYMANIE (Maintain)

> **Status:** Aktywny / Stabilny

**Co to jest:**
- Projekt działa, spełnia cele
- Maintenance: bugfixy, drobne usprawnienia
- Może przejść do Archiwum jeśli przestanie być używany

---

## Diagram przepływu

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         PRZEPŁYW CYKLU ŻYCIA                                │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│   ISKRA                                                                     │
│     │                                                                       │
│     ▼                                                                       │
│  ┌──────┐     ┌────────────┐     ┌────────────┐     ┌──────────────┐       │
│  │ 🌱   │────►│ 🔬         │────►│ 📋         │────►│ ✅           │       │
│  │Surowy│     │Rozkminięcie│     │Concept     │     │Promowany     │       │
│  └──────┘     └────────────┘     │gotowy      │     └──────────────┘       │
│     │              │             └────────────┘            │                │
│     │              │                   │                   │                │
│     │              │                   │                   ▼                │
│     │              │                   │            ┌──────────────┐       │
│     │              │                   │            │ PROJEKT      │       │
│     │              │                   │            │ OPERACYJNY   │       │
│     │              │                   │            └──────────────┘       │
│     │              │                   │                   │                │
│     ▼              ▼                   ▼                   │                │
│  ┌──────────────────────────────────────────┐              │                │
│  │              DECYZJE                     │              │                │
│  │  ⏸️ Wstrzymany ← czeka na coś            │              │                │
│  │  ❌ Odrzucony  ← nie wart realizacji     │              │                │
│  └──────────────────────────────────────────┘              │                │
│                                                            │                │
│                                                            ▼                │
│                                                     ┌──────────────┐       │
│                                                     │ ARCHIWUM     │       │
│                                                     │ (zakończone) │       │
│                                                     └──────────────┘       │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## Statusy i ich znaczenie

| Symbol | Status | Lokalizacja | Następny krok |
|--------|--------|-------------|---------------|
| 🌱 | Surowy | `_lab/ideas/` | Rozkminięcie lub odrzucenie |
| 🔬 | W rozkminięciu | `_lab/workspace/` | Dokończ CONCEPT |
| 📋 | Concept gotowy | `_lab/workspace/` lub `_meta/CONCEPT/` | Decyzja: promuj/wstrzymaj/odrzuć |
| 🎯 | Do PLAN | `_lab/workspace/` | Przygotuj szczegółowy plan |
| ⏸️ | Wstrzymany | Dowolna | Czekaj na zmianę warunków |
| ❌ | Odrzucony | Archiwum | Koniec (z uzasadnieniem) |
| ✅ | Promowany | Projekt operacyjny | Realizacja |

---

## Komendy szybkiego dostępu

### W _lab

| Komenda | Działanie |
|---------|-----------|
| `/idea [nazwa]` | Utwórz nowy pomysł w ideas/ |
| `/workspace [nazwa]` | Utwórz workspace dla pomysłu |
| `/status [nazwa]` | Pokaż status pomysłu |
| `/promote [nazwa]` | Promuj do projektu operacyjnego |

### W _jarvis

| Komenda | Działanie |
|---------|-----------|
| `/new-project [nazwa]` | Zainicjuj projekt z CONCEPT |
| `/list-projects` | Lista projektów z priorytetami |
| `/portfolio` | Pokaż pełne portfolio |
| `/registry` | Pokaż PROJECT_REGISTRY |

---

## Checklisty

### Checklist: Nowy pomysł

- [ ] Zapisz iskrę w `_lab/ideas/[kategoria]/YYYY-MM-DD_nazwa.md`
- [ ] Dodaj do `_jarvis/docs/central/PROJECT_REGISTRY.md` ze statusem 🌱
- [ ] Przypisz kategorię (tech/income/health/wellbeing/other)

### Checklist: Tworzenie workspace

- [ ] Utwórz katalog `_lab/workspace/[nazwa]/`
- [ ] Utwórz CONCEPT.md (skopiuj szablon)
- [ ] Utwórz NOTATKI.md
- [ ] Zaktualizuj PROJECT_REGISTRY.md na 🔬

### Checklist: Concept gotowy

- [ ] Sekcje 1-6 CONCEPT.md wypełnione
- [ ] Problem jasno zdefiniowany
- [ ] MVP określone z checkboxami
- [ ] Ryzyka zidentyfikowane
- [ ] Zaktualizuj PROJECT_REGISTRY.md na 📋

### Checklist: Promowanie do projektu

- [ ] Decyzja podjęta (4x TAK w bramie)
- [ ] Katalog projektu utworzony
- [ ] CLAUDE.md z szablonu
- [ ] CONCEPT.md przeniesiony
- [ ] Git zainicjowany
- [ ] Repo GitHub utworzone
- [ ] PORTFOLIO.md zaktualizowane
- [ ] PROJECT_REGISTRY.md → ✅ + archiwum

---

## ZASADA: Aktualizacja rejestrów

> **KRYTYCZNE:** Po KAŻDEJ zmianie statusu pomysłu/projektu — zaktualizuj rejestry!

### Kiedy aktualizować co

| Zdarzenie | Aktualizuj | Co wpisać |
|-----------|------------|-----------|
| Nowy pomysł | `_jarvis/docs/central/PROJECT_REGISTRY.md` | Dodaj wiersz ze statusem 🌱 |
| Utworzenie workspace | `PROJECT_REGISTRY.md` | Zmień status na 🔬, dodaj ścieżkę workspace |
| Concept gotowy | `PROJECT_REGISTRY.md` | Zmień status na 📋 |
| Decyzja: wstrzymaj | `PROJECT_REGISTRY.md` | Zmień status na ⏸️ + uzasadnienie |
| Decyzja: odrzuć | `PROJECT_REGISTRY.md` | Przenieś do archiwum z ❌ + uzasadnienie |
| Promowanie do projektu | `PROJECT_REGISTRY.md` | Przenieś do archiwum z ✅ + link do repo |
| Promowanie do projektu | `PORTFOLIO.md` | Dodaj projekt do listy |

### Szablon wpisu do dziennika zmian (PROJECT_REGISTRY.md)

```markdown
| DD.MM.YYYY | nazwa-pomyslu | [status/zmiana] | [notatka] |
```

### Przypomnienie dla Claude

**Claude MUSI po każdej operacji na pomyśle/projekcie:**
1. Sprawdzić czy PROJECT_REGISTRY.md wymaga aktualizacji
2. Sprawdzić czy PORTFOLIO.md wymaga aktualizacji
3. Dodać wpis do dziennika zmian z datą

---

## Antywzorce (czego unikać)

| Antywzorzec | Problem | Rozwiązanie |
|-------------|---------|-------------|
| **Pomysł w głowie** | Zapominasz, tracisz kontekst | Zawsze zapisuj, nawet 2 zdania |
| **Od razu projekt** | Over-engineering, strata czasu | Przejdź przez fazy, zweryfikuj |
| **Wieczne rozkminięcie** | Paraliza analizy | Ustaw deadline, podejmij decyzję |
| **Pominięcie bramy** | Złe projekty w portfolio | Zawsze odpowiedz na 4 pytania |
| **Brak aktualizacji rejestrów** | Chaos, gubisz się | Po każdej zmianie aktualizuj |

---

## Powiązane dokumenty

| Dokument | Lokalizacja | Opis |
|----------|-------------|------|
| PROJECT_REGISTRY.md | `_jarvis/docs/central/` | Status wszystkich pomysłów i projektów |
| PORTFOLIO.md | `_jarvis/docs/central/` | Szczegóły projektów operacyjnych |
| RESOURCES.md | `_jarvis/docs/central/` | Zasoby i infrastruktura |
| CLAUDE_TEMPLATE.md | `_meta/` | Szablon CLAUDE.md dla projektów |

---

## Historia zmian

| Data       | Opis |
|------------|------|
| 17.01.2026 | Migracja do _jarvis/docs/central/ (centralizacja) |
| 16.01.2026 | Utworzenie dokumentu |

---

> **Koniec WORKFLOW_LIFECYCLE.md**
