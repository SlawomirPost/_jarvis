# PROJECT_REGISTRY.md — Centralny Rejestr Pomysłów i Projektów

> **Cel:** Jeden punkt prawdy dla statusu wszystkich inicjatyw
> **Aktualizacja:** Po KAŻDEJ zmianie statusu pomysłu/projektu
> **Lokalizacja centralna:** `_jarvis/docs/central/`

---

## Statusy

| Symbol | Status         | Opis                                  | Lokalizacja |
|--------|----------------|---------------------------------------|-------------|
| 🌱     | Surowy         | Tylko notatka, bez analizy            | `_lab/ideas/` |
| 🔬     | W rozkminięciu | Aktywne prace koncepcyjne             | `_lab/workspace/` |
| 📋     | Concept gotowy | Pełna dokumentacja, gotowy do oceny   | `_lab/workspace/` lub `_meta/CONCEPT/` |
| 🎯     | Do PLAN        | Zaakceptowany, przygotowywany plan    | `_meta/CONCEPT/` |
| ⚙️     | Aktywny        | Projekt operacyjny w trakcie          | `C:\WORK\projects\` |
| ✅     | Zakończony     | Projekt zakończony/stabilny           | `C:\WORK\projects\` |
| ⏸️     | Wstrzymany     | Odłożony (z uzasadnieniem)            | - |
| ❌     | Odrzucony      | Nie wart realizacji (z uzasadnieniem) | Archiwum |

---

## Rejestr Aktywny

### Pomysły (🌱 Surowe)

| ID | Nazwa | Kategoria | Data | Lokalizacja | Uwagi |
|----|-------|-----------|------|-------------|-------|
| idea-001 | n8n-passive-income | income | 15.01.2026 | `_lab/ideas/income/` | Automatyczny dochód 1000 zł/msc |
| idea-002 | konsultant-zdrowotny-mama | health | 15.01.2026 | `_lab/ideas/health/` | Asystent zdrowotny dla Mamy (76 lat) |
| idea-003 | organizacja-gdrive | tech | 15.01.2026 | `_lab/ideas/tech/` | Porządkowanie 3TB zasobów |
| idea-004 | dobrostan-i-ai | wellbeing | 15.01.2026 | `_lab/ideas/wellbeing/` | Refleksje o pracy z AI |
| idea-005 | transkrypcje-zsz | tech | 16.01.2026 | `_lab/ideas/tech/` | Transkrypcje ZSZ |
| idea-006 | baza-zyciorysow-gosci | tech | 16.01.2026 | `_lab/ideas/tech/` | Baza życiorysów gości |
| idea-007 | email-co-powiedziales | income | 16.01.2026 | `_lab/ideas/income/` | Email "co powiedziałeś" |
| idea-008 | dyktowanie-notatek | tech | 16.01.2026 | `_lab/ideas/tech/` | Dyktowanie notatek |
| idea-009 | discord-integracja | tech | 16.01.2026 | `_lab/ideas/tech/` | Integracja z Discord |
| idea-010 | google-keep-integracja | tech | 16.01.2026 | `_lab/ideas/tech/` | Integracja z Google Keep |
| idea-011 | jarvis-access-modes | security | 17.01.2026 | `_jarvis/docs/CONCEPT.md#7.1` | Tryby dostępu: FULL/DEMO/LITE — bezpieczeństwo i ekonomia |

### W rozkminięciu (🔬)

| ID | Nazwa | Data startu | Workspace | Uwagi |
|----|-------|-------------|-----------|-------|
| - | - | - | - | - |

### Concept gotowy (📋)

| ID | Nazwa | Data | Lokalizacja | Ocena | Uwagi |
|----|-------|------|-------------|-------|-------|
| concept-001 | patent-monitor | 16.01.2026 | `_lab/workspace/patent-monitor/` | - | Przeniesiony z b004 |
| concept-002 | video-manager | 16.01.2026 | `_lab/workspace/video-manager/` | - | Przeniesiony z d002 |
| concept-003 | ai-image-subscription | 16.01.2026 | `_lab/workspace/ai-image-subscription/` | - | Przeniesiony z s001 |
| concept-004 | pharma-offer-compare | 16.01.2026 | `_lab/workspace/pharma-offer-compare/` | - | Przeniesiony z b003 |

### Projekty Aktywne (⚙️)

| Kod | Nazwa | Priorytet | Status szczegółowy | GitHub |
|-----|-------|-----------|-------------------|--------|
| _jarvis | Centralny asystent | 🔴 | Faza 1 - MVP | [link](https://github.com/SlawomirPost/_jarvis) |
| a001 | Fakturownia Batch | 🥇 | Planowany | [link](https://github.com/SlawomirPost/a001-fakturownia-batch) |
| b001 | PC Status Monitor | 🥈 | Planowany | [link](https://github.com/SlawomirPost/b001-pc-status-monitor) |
| b002 | Pharmacy Registry Monitor | 4 | CONCEPT zakończony | [link](https://github.com/SlawomirPost/b002-pharmacy-registry-monitor) |
| c001 | mBank MT940 Converter | 🥉 | Planowany | [link](https://github.com/SlawomirPost/c001-mbank-mt940-converter) |

---

## Dziennik Zmian

| Data       | Element | Zmiana | Notatka |
|------------|---------|--------|---------|
| 17.01.2026 | PROJECT_REGISTRY | ✨ Utworzono | Połączenie rejestrów z _meta i _lab |
| 16.01.2026 | mini-Jarvis | ✅ Promowany | Zainicjowany jako projekt `_jarvis` |
| 16.01.2026 | pharma-offer-compare | 📋 Concept gotowy | Przeniesiony z projektu b003 |
| 16.01.2026 | video-manager | 📋 Concept gotowy | Przeniesiony z projektu d002 |
| 16.01.2026 | ai-image-subscription | 📋 Concept gotowy | Przeniesiony z projektu s001 |
| 16.01.2026 | patent-monitor | 📋 Concept gotowy | Przeniesiony z projektu b004 |
| 16.01.2026 | transkrypcje-zsz | 🌱 Nowy | Transkrypcje ZSZ |
| 16.01.2026 | baza-zyciorysow-gosci | 🌱 Nowy | Baza życiorysów gości |
| 16.01.2026 | email-co-powiedziales | 🌱 Nowy | Email "co powiedziałeś" |
| 16.01.2026 | dyktowanie-notatek | 🌱 Nowy | Dyktowanie notatek |
| 16.01.2026 | discord-integracja | 🌱 Nowy | Integracja z Discord |
| 16.01.2026 | google-keep-integracja | 🌱 Nowy | Integracja z Google Keep |
| 15.01.2026 | n8n-passive-income | 🌱 Nowy | Pomysł na automatyczny dochód |
| 15.01.2026 | konsultant-zdrowotny-mama | 🌱 Nowy | Asystent zdrowotny dla Mamy |
| 15.01.2026 | organizacja-gdrive | 🌱 Nowy | Porządkowanie 3TB zasobów |
| 15.01.2026 | dobrostan-i-ai | 🌱 Nowy | Refleksje o pracy z AI |
| 17.01.2026 | jarvis-access-modes | 🌱 Nowy | Tryby FULL/DEMO/LITE dla bezpieczeństwa i ekonomii |

---

## Archiwum

### Promowane (✅)

| ID | Nazwa | Data promocji | Projekt docelowy |
|----|-------|---------------|------------------|
| mini-Jarvis | personal-ai-assistant | 16.01.2026 | [_jarvis](https://github.com/SlawomirPost/_jarvis) |

### Odrzucone (❌)

| ID | Nazwa | Data | Powód |
|----|-------|------|-------|
| t001 | claude-usage-monitor | 16.01.2026 | Niska wartość, niepotrzebny |

### Wstrzymane (⏸️)

| ID | Nazwa | Data | Powód | Warunek wznowienia |
|----|-------|------|-------|-------------------|
| - | - | - | - | - |

---

## Zasady aktualizacji

> **KRYTYCZNE:** Claude MUSI aktualizować ten rejestr po każdej operacji na pomyśle/projekcie!

| Zdarzenie | Co zrobić |
|-----------|----------|
| Nowy pomysł | Dodaj wiersz w sekcji "Pomysły" + wpis w Dzienniku |
| Utworzenie workspace | Przenieś do "W rozkminięciu" + wpis w Dzienniku |
| Concept gotowy | Przenieś do "Concept gotowy" + wpis w Dzienniku |
| Promocja do projektu | Przenieś do "Projekty Aktywne" + wpis w Dzienniku + archiwum |
| Wstrzymanie | Przenieś do Archiwum/Wstrzymane + wpis w Dzienniku |
| Odrzucenie | Przenieś do Archiwum/Odrzucone + wpis w Dzienniku |

---

> **Koniec PROJECT_REGISTRY.md**
