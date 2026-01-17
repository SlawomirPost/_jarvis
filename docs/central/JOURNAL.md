# JOURNAL.md — Centralny dziennik

> **Lokalizacja:** `C:\WORK\projects\_jarvis\docs\`
> **Tagowanie:** Każdy wpis ma tag `@projekt` określający kontekst
> **Format:** Datowane wpisy, najnowsze na górze
> **Ostatnia aktualizacja:** 17.01.2026

---

## 17.01.2026 — Porządki w _tools-and-lab @_tools-and-lab

### Refleksja

Usunięte puste lokalne pliki TODO.md, NOTES.md, JOURNAL.md z `_tools-and-lab/docs/`. Od teraz projekt używa wyłącznie centralnych dokumentów z tagiem `@_tools-and-lab`.

### Co się zmieniło

- Usunięte: `_tools-and-lab/docs/TODO.md`, `NOTES.md`, `JOURNAL.md`
- Dodane sekcje `@_tools-and-lab` w centralnych plikach

---

## 17.01.2026 — Centralizacja dokumentów @_jarvis

### Refleksja

Podjęliśmy decyzję o centralizacji wszystkich mechanizmów zarządzania wiedzą w projekcie `_jarvis`.

Zamiast mieć TODO.md, NOTES.md, JOURNAL.md w każdym projekcie osobno, teraz wszystko jest w jednym miejscu z tagowaniem `@projekt`.

### Co się zmieniło

1. Utworzone centralne pliki w `_jarvis/docs/central/`:
   - CLAUDE_RULES.md — uniwersalne zasady dla Claude
   - GIT_STRATEGY.md — strategie Git
   - STYLE_GUIDE.md — formatowanie

2. Centralne pliki z tagowaniem w `_jarvis/docs/`:
   - TODO.md
   - NOTES.md
   - JOURNAL.md
   - KNOWLEDGE.md

3. CLAUDE.md w każdym projekcie będzie mieć referencję do centralnych zasad.

### Korzyści

- Jedno miejsce dla wszystkich zadań
- Brak duplikacji zasad
- Łatwiejsze zarządzanie
- Claude wie gdzie szukać

---

## 16.01.2026 — Inicjalizacja _jarvis @_jarvis

### Refleksja

Projekt _jarvis powstał z realnej potrzeby — Claude wpisuje rzeczy w złe miejsca. Zamiast trzymać go w _lab jako "pomysł", inicjujemy jako pełnoprawny projekt.

Kluczowa decyzja: architektura fazowa. Nie budujemy od razu pełnego asystenta z RAG i Telegramem. Zaczynamy od prostego MCP do notatek i TODO.

### Kontekst

Przeniesione z `_lab/workspace/personal-ai-assistant/`. Pełna koncepcja zachowana w docs/CONCEPT.md.

---

> **Koniec pliku JOURNAL.md**
