# GIT_STRATEGY.md — Centralne zasady Git

> **Lokalizacja:** `C:\WORK\projects\_jarvis\docs\central\`
> **Dotyczy:** Wszystkie projekty użytkownika
> **Ostatnia aktualizacja:** 17.01.2026

---

## 1. FORMAT COMMITÓW

```
[kategoria] krótki opis

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>
```

### Kategorie

| Kategoria | Kiedy używać |
|-----------|--------------|
| `feat` | Nowa funkcjonalność |
| `fix` | Naprawa błędu |
| `docs` | Dokumentacja |
| `refactor` | Zmiana kodu bez zmiany funkcji |
| `test` | Testy |
| `chore` | Maintenance, konfiguracja |

### Przykłady

```
feat: dodanie walidacji NIP w formularzu
fix: naprawa błędu parsowania daty
docs: aktualizacja README z instrukcją instalacji
refactor: wydzielenie funkcji pomocniczych
test: testy jednostkowe dla modułu API
chore: aktualizacja zależności
```

---

## 2. STRATEGIE PUSH

Każdy projekt ma przypisaną strategię. Sprawdź w CLAUDE.md projektu.

### AUTO-PUSH

```yaml
git_strategy: "AUTO-PUSH"
push_policy: "automatycznie po każdym ustapieniu"
```

**Kiedy:** Projekty dokumentacyjne, niskie ryzyko.

**Workflow:**
```bash
git add .
git commit -m "[kategoria] opis

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>"
git push
```

### MANUAL-PUSH

```yaml
git_strategy: "MANUAL-PUSH"
push_policy: "na żądanie użytkownika"
```

**Kiedy:** Projekty z kodem, wymaga review.

**Workflow:**
```bash
git add .
git commit -m "[kategoria] opis

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>"
# STOP: push tylko na żądanie użytkownika
```

---

## 3. ZASADY BEZPIECZEŃSTWA

| Zasada | Opis |
|--------|------|
| Nie commituj sekretów | `.env`, API keys, hasła |
| Sprawdź .gitignore | Przed pierwszym pushem |
| Review przed push | Przy MANUAL-PUSH |
| Nie używaj --force | Chyba że świadomie |

---

## 4. PRZYPISANIA PROJEKTÓW

| Projekt | Strategia | Powód |
|---------|-----------|-------|
| _jarvis | AUTO-PUSH | Dokumentacja |
| _meta-operating-system | AUTO-PUSH | Dokumentacja |
| _doc-assistant | AUTO-PUSH | Dokumentacja |
| _lab | MANUAL-PUSH | Eksperymenty |
| _tools-and-lab | MANUAL-PUSH | Narzędzia |
| a001-fakturownia-batch | MANUAL-PUSH | Kod produkcyjny |
| b001-pc-status-monitor | MANUAL-PUSH | Kod produkcyjny |
| b002-pharmacy-registry-monitor | MANUAL-PUSH | Kod produkcyjny |
| c001-mbank-mt940-converter | MANUAL-PUSH | Kod produkcyjny |
| c002-invoice-converter | MANUAL-PUSH | Kod produkcyjny |
| d001-invoice-inbox | MANUAL-PUSH | Kod produkcyjny |
| d003-rewizor-db-repair | MANUAL-PUSH | Kod produkcyjny |
| f001-forex-trading-assistant | MANUAL-PUSH | Kod produkcyjny |

---

## HISTORIA ZMIAN

| Data | Wersja | Opis |
|------|--------|------|
| 17.01.2026 | 1.0 | Utworzenie centralnego pliku strategii Git |

---

> **Koniec GIT_STRATEGY.md**
