# JARVIS MANIFEST v1.0

> **Cel:** Źródło prawdy o strukturze Jarvisa
> **Aktualizacja:** 17.01.2026
> **Autor:** Claude + Użytkownik

---

## 1. FILOZOFIA MANIFESTU

```
MANIFEST (oczekiwane) ←→ RZECZYWISTOŚĆ (faktyczna)
         ↓                        ↓
    Porównanie = HEALTH CHECK
         ↓
    Raport: OK / ŚMIECI / BRAKI
```

**Zasada:** Manifest opisuje CO POWINNO BYĆ, nie co jest.
**Weryfikacja:** Raz w tygodniu (lub na żądanie) porównaj manifest z rzeczywistością.

---

## 2. STRUKTURA KATALOGÓW

### 2.1 Root (_jarvis/)

| Element | Typ | Cel | Status |
|---------|-----|-----|--------|
| `CLAUDE.md` | plik | Główne instrukcje dla Claude | WYMAGANY |
| `README.md` | plik | Opis projektu | WYMAGANY |
| `docs/` | katalog | Dokumentacja | WYMAGANY |
| `modules/` | katalog | Moduły funkcjonalne | WYMAGANY |
| `skills/` | katalog | Skille Claude | WYMAGANY |
| `prompts/` | katalog | Biblioteka promptów | WYMAGANY |
| `IN/` | katalog | Pliki wejściowe (tymczasowe) | OPCJONALNY |
| `OUT/` | katalog | Pliki wyjściowe | OPCJONALNY |
| `TEMP/` | katalog | Pliki tymczasowe | OPCJONALNY |

### 2.2 Dokumentacja (docs/)

| Element | Typ | Cel |
|---------|-----|-----|
| `central/` | katalog | Pliki centralne (mózg) |
| `research/` | katalog | Analizy, badania |
| `CONCEPT.md` | plik | Koncepcja projektu |
| `DECISIONS.md` | plik | Rejestr decyzji (ADR) |
| `ROADMAP.md` | plik | Plan rozwoju |
| `RUNBOOK.md` | plik | Instrukcje operacyjne |
| `MILESTONES.md` | plik | Kamienie milowe |

### 2.3 Pliki centralne (docs/central/)

#### Podstawowe (WYMAGANE)

| Plik | Cel | Tagowanie |
|------|-----|-----------|
| `CLAUDE_RULES.md` | Zasady dla Claude | — |
| `TODO.md` | Lista zadań | `@projekt` |
| `NOTES.md` | Notatki | `@projekt` |
| `JOURNAL.md` | Dziennik | `@projekt` |
| `KNOWLEDGE.md` | Quick Reference | `@projekt` |
| `MEMORY.md` | Pamięć między sesjami | — |

#### Metodologia (WYMAGANE)

| Plik | Cel |
|------|-----|
| `GIT_STRATEGY.md` | Strategia Git |
| `STYLE_GUIDE.md` | Formatowanie dokumentów |
| `WORKFLOW_LIFECYCLE.md` | Cykl życia projektu |
| `METHODOLOGY.md` | Techniki myślenia |

#### Zarządzanie (WYMAGANE)

| Plik | Cel |
|------|-----|
| `PROJECT_REGISTRY.md` | Rejestr projektów |
| `PORTFOLIO.md` | Szczegóły projektów |
| `RESOURCES.md` | Zasoby i infrastruktura |

#### Jakość (WYMAGANE)

| Plik | Cel |
|------|-----|
| `RISK_REGISTER.md` | Rejestr ryzyk |
| `BEST_PRACTICES.md` | Dobre praktyki |
| `WEEKLY_REVIEW.md` | Przeglądy tygodniowe |

#### Wiedza (WYMAGANE)

| Plik | Cel |
|------|-----|
| `SKILLS.md` | Nabyte umiejętności |
| `SYSTEM_MAP.md` | Mapa powiązań |

#### Katalogi centralne (WYMAGANE)

| Katalog | Cel | Zawartość |
|---------|-----|-----------|
| `PITFALLS/` | Pułapki narzędzi | `*.md` per narzędzie |
| `ZETTELKASTEN/` | Głęboka wiedza | `_README.md`, `_INDEX.md`, `KNOWLEDGE_GRAPH.md`, `202601-XXX.md` |

---

## 3. MODUŁY (modules/)

### 3.1 jarvis-docs (modules/docs/)

| Element | Cel |
|---------|-----|
| `templates/` | Szablony promptów |
| `templates/PROMPT_OCR.md` | OCR dokumentów |
| `templates/PROMPT_TLUMACZENIE.md` | Tłumaczenia |
| `templates/PROMPT_STRESZCZENIE.md` | Streszczenia |
| `templates/PROMPT_ANALIZA.md` | Analiza dokumentów |
| `templates/reference.docx` | Szablon Word |
| `archive/` | Archiwum przetworzonych dokumentów |

### 3.2 jarvis-troubleshoot (modules/troubleshooting/)

| Element | Cel |
|---------|-----|
| `README.md` | Opis modułu |
| `templates/PROBLEM_TEMPLATE.md` | Szablon problemu |
| `windows/` | Problemy Windows |
| `linux/` | Problemy Linux |
| `n8n/` | Problemy n8n |
| `wordpress/` | Problemy WordPress |
| `hosting/` | Problemy hostingowe |
| `networking/` | Problemy sieciowe |
| `databases/` | Problemy bazodanowe |
| `other/` | Inne problemy |

### 3.3 jarvis-consultations (modules/consultations/)

| Element | Cel |
|---------|-----|
| `CONSULTATION_REGISTRY.md` | Rejestr konsultacji |
| `LESSONS_LEARNED.md` | Wnioski z konsultacji |
| `knowledge-base/` | Baza wiedzy per klient |
| `YYYY-MM/` | Konsultacje wg miesiąca |

---

## 4. SKILLS (skills/)

| Skill | Lokalizacja | Cel |
|-------|-------------|-----|
| jarvis-docs | `skills/jarvis-docs/skill.md` | Przetwarzanie dokumentów |
| jarvis-troubleshoot | `skills/jarvis-troubleshoot/skill.md` | Rozwiązywanie problemów |

**Instalacja globalna:** `~/.claude/skills/` (symlinki lub kopie)

---

## 5. PROMPTS (prompts/)

| Prompt | Cel |
|--------|-----|
| `Architekt_Promptow_LLM.md` | Tworzenie promptów |
| `Architekt_Modelowania_Procesow.md` | Modelowanie procesów |
| `n8n_Projektant_Automatyzacji.md` | Projektowanie w n8n |
| `Asystent_AI_Strateg.md` | Strategia AI |
| `Asystent_Prawny_Premium.md` | Pomoc prawna |

---

## 6. KATALOGI ROBOCZE

| Katalog | Cel | Czyszczenie |
|---------|-----|-------------|
| `IN/` | Pliki do przetworzenia | Po przetworzeniu |
| `OUT/` | Wyniki (archiwa) | Nigdy auto |
| `TEMP/` | Tymczasowe | Raz na tydzień |

---

## 7. HEALTH CHECK

### 7.1 Szybka weryfikacja (5 min)

```markdown
## Health Check — [DATA]

### Pliki centralne
- [ ] CLAUDE_RULES.md istnieje i jest aktualny
- [ ] TODO.md — spójne tagi @projekt
- [ ] NOTES.md — spójne tagi @projekt
- [ ] JOURNAL.md — wpisy z ostatniego tygodnia
- [ ] MEMORY.md — ostatnia aktualizacja < 7 dni

### Struktura
- [ ] Brak plików .md w root (poza CLAUDE.md, README.md)
- [ ] Brak "sierot" w docs/ (pliki bez sensu)
- [ ] TEMP/ — pusty lub oznaczony do usunięcia

### Moduły
- [ ] Skills mają skill.md
- [ ] Konsultacje mają NOTATKI.md

### Wynik
[ ] OK — wszystko zgodne z manifestem
[ ] UWAGI — drobne odchylenia (opisz)
[ ] PROBLEM — wymaga interwencji (opisz)
```

### 7.2 Pełny audyt (30 min, raz w miesiącu)

```markdown
## Pełny Audyt — [DATA]

### 1. Porównanie manifest vs rzeczywistość
[Lista różnic]

### 2. Śmieci do usunięcia
[Lista plików/katalogów]

### 3. Braki do uzupełnienia
[Lista brakujących elementów]

### 4. Propozycje zmian w manifeście
[Jeśli struktura ewoluuje]

### 5. Akcje
- [ ] Akcja 1
- [ ] Akcja 2
```

---

## 8. REGUŁY EWOLUCJI

### 8.1 Dodawanie nowego elementu

1. **Najpierw** — dodaj do manifestu (sekcja odpowiednia)
2. **Potem** — utwórz fizycznie
3. **Zaktualizuj** — CLAUDE.md jeśli potrzebne triggery

### 8.2 Usuwanie elementu

1. **Najpierw** — oznacz jako DEPRECATED w manifeście
2. **Poczekaj** — 1 tydzień (czy na pewno niepotrzebne?)
3. **Usuń** — fizycznie i z manifestu

### 8.3 Przenoszenie elementu

1. **Zaktualizuj** — manifest (nowa lokalizacja)
2. **Przenieś** — fizycznie
3. **Sprawdź** — referencje w innych plikach

---

## 9. WERSJONOWANIE MANIFESTU

| Wersja | Data | Zmiany |
|--------|------|--------|
| 1.0 | 17.01.2026 | Inicjalna wersja na podstawie aktualnego stanu |

---

## 10. TRIGGERY DLA CLAUDE

Claude automatycznie:
- **Proponuje Health Check** — gdy słyszy "sprawdź Jarvisa", "czy wszystko OK", "audyt"
- **Aktualizuje manifest** — gdy tworzy nowy moduł/skill/plik centralny
- **Ostrzega** — gdy tworzy plik poza manifestem

---

> **Koniec JARVIS_MANIFEST.md**
