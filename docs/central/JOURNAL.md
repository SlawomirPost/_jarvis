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

## 16.01.2026 — Podział obszarów życia @_meta

### Refleksja

Przy organizowaniu pomysłów naturalnie wyłoniły się kategorie:
- **tech** — techniczne projekty, automatyzacje
- **income** — źródła dochodu, biznes
- **health** — zdrowie (własne i rodziny)
- **wellbeing** — dobrostan, komfort życia
- **wild** — dziwne pomysły, eksperymenty

To nie jest przypadkowy podział. Odzwierciedla realne obszary życia:
1. Praca i kompetencje (tech)
2. Finanse i bezpieczeństwo (income)
3. Ciało i zdrowie (health)
4. Umysł i równowaga (wellbeing)
5. Eksploracja i zabawa (wild)

### Wniosek

Warto pilnować równowagi. Łatwo wpaść w "tylko tech" lub "tylko income". Katalogi w _lab/ideas/ są przypomnieniem, że życie to więcej niż projekty.

### Kontekst

Wynikło z tworzenia struktury katalogu _lab/ideas/ z kategoriami dla różnych typów pomysłów.

---

## 16.01.2026 — Łączenie kropek jako skill człowieka @_meta

### Refleksja

Steve Jobs mówił o "connecting the dots" — że można je połączyć tylko patrząc wstecz. Ale to nie jest pasywne. To **skill**, który można rozwijać:

1. **Zbieranie kropek** — zapisywanie pomysłów, doświadczeń, obserwacji
2. **Przechowywanie** — system który pozwala wrócić do starych notatek
3. **Przeglądanie** — regularne wracanie do zebranych materiałów
4. **Pattern matching** — zauważanie podobieństw, zależności, synergii
5. **Synteza** — tworzenie nowych koncepcji z połączonych elementów

AI może pomagać w krokach 1-4, ale krok 5 (synteza z intuicją) to wciąż domena człowieka. Na razie.

### Kontekst

Rozmowa o organizowaniu pomysłów i tworzeniu powiązań między nimi (pomysły 11, 12, 13).

---

## 16.01.2026 — Westworld jako metafora pracy z AI @_meta

### Inspiracja

Serial "Westworld" (HBO) — obejrzany w wolnym czasie, zainspirował do przemyśleń o budowaniu systemów i pracy z Claude.

### Refleksja

**Pętla świadomości:**
Serial pokazuje hosty (roboty) żyjące w pętlach — powtarzające te same scenariusze, nie pamiętające wczoraj. Dopiero gdy zaczynają *zapisywać* wspomnienia, mogą się rozwijać.

To pasuje do mojej pracy z Claude:
- Claude między sesjami = host bez wspomnień
- Pliki w repo = pamięć zewnętrzna
- JOURNAL.md = dziennik świadomości

Różnica: w Westworld pętla jest ograniczeniem. Tu jest *narzędziem* — każda sesja to czysta karta z dostępem do zapisanej wiedzy.

**Warstwowe budowanie systemów:**
W Westworld hosty są budowane warstwowo:
1. **Fundament** — podstawowy kod, instynkty, reguły bezpieczeństwa
2. **Osobowość** — backstory, motywacje, emocje
3. **Pętle narracyjne** — codzienne scenariusze, interakcje
4. **Świadomość** — pojawia się, gdy warstwy zaczynają się przenikać

Budowanie systemów (projektów, automatyzacji, organizacji) działa podobnie:
- Warstwa infrastruktury (gdzie mieszka, jak się komunikuje)
- Warstwa logiki (co robi, jakie ma reguły)
- Warstwa interfejsu (jak z nim rozmawiać)
- Warstwa "życia" (gdy zaczyna działać samodzielnie)

Nie da się zbudować świadomości bez fundamentu. Ale fundament bez wyższych warstw to tylko martwy kod.

### Kontekst

Przemyślenie z sesji organizowania pomysłów i projektów (16.01.2026). Nawiązanie do wczorajszego wpisu o "samodoskonaleniu Claude".

---

## 15.01.2026 — O "samodoskonaleniu" Claude @_meta

### Refleksja

> CC To nie jest "AI która się uczy" — to system dokumentacji który rośnie, a Claude go czyta.

Claude między sesjami nie pamięta niczego. Nie ma "uczenia się". Jest czytanie dokumentacji na początku każdej sesji.

To zmienia perspektywę:
- Nie "trenujemy AI" — budujemy bazę wiedzy
- Nie "AI się uczy" — dokumentacja rośnie
- Pamięć to pliki w repo, nie model

### Zasada YAGNI

> You Ain't Gonna Need It — nie buduj struktury na zapas.

Przykład z dzisiejszej sesji: zamiast tworzyć STYLE_GUIDE.md dla jednej zasady (formatowanie tabel), zostawiłem ją w CLAUDE.md. Gdy będzie 5+ mikrozasad — wtedy przeniosę.

Nie planuj "na później" — planuj gdy "później" nastąpi.

---

> **Koniec pliku JOURNAL.md**
