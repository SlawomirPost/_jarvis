# MILESTONES.md — Kamienie milowe autonomii Jarvis

> **Projekt:** _jarvis
> **Data utworzenia:** 17.01.2026
> **Cel:** Śledzenie postępu w kierunku pełnej sprawczości słowa

---

## Filozofia

> **Sprawczość słowa** = rozmowa zamienia się w działający system
>
> Miernik sukcesu: nie "zbudowałem workflow", ale "Kowalski dostał email"

---

## Poziomy autonomii

```
POZIOM 0: FOUNDATION    → Jarvis zapisuje gdzie trzeba
POZIOM 1: ASSISTED      → Jarvis sam decyduje gdzie zapisać
POZIOM 2: REACTIVE      → Jarvis reaguje na trigger i wykonuje akcję
POZIOM 3: PROACTIVE     → Jarvis sam zauważa i proponuje
POZIOM 4: AUTONOMOUS    → Pełna sprawczość słowa
```

---

## POZIOM 0: FOUNDATION

> **Status:** 🟡 W TRAKCIE
> **Cel:** Jarvis poprawnie zapisuje informacje w odpowiednich miejscach

### Testy

| Test | Polecenie | Oczekiwany efekt | Status |
|------|-----------|------------------|--------|
| T0.1 | "Zanotuj: spotkanie z Kowalskim" | Wpis w NOTES.md z tagiem @projekt | ✅ |
| T0.2 | "Do zrobienia: wysłać fakturę" | Task w TODO.md z tagiem @projekt | ✅ |
| T0.3 | "Refleksja: dzisiaj zrozumiałem X" | Wpis w JOURNAL.md z datą | ✅ |
| T0.4 | "Co wiemy o n8n?" | Odpowiedź ze źródłem (plik) | 🟡 |

### Kryteria zaliczenia

- [ ] 90% zadań bez korekcji użytkownika
- [ ] Poprawne tagowanie @projekt
- [ ] Poprawne formatowanie dat

---

## POZIOM 1: ASSISTED

> **Status:** ❌ NIE ROZPOCZĘTY
> **Cel:** Jarvis sam podejmuje decyzje kontekstowe

### Testy

| Test | Polecenie | Oczekiwany efekt | Status |
|------|-----------|------------------|--------|
| T1.1 | "Zapisz to gdzieś" (po rozmowie) | Wybiera właściwy plik bez pytania | ❌ |
| T1.2 | "Zaplanuj wdrożenie X" | Rozbija na subtaski, dodaje do TODO | ❌ |
| T1.3 | "Co powinienem dziś zrobić?" | Analizuje TODO, priorytetyzuje | ❌ |
| T1.4 | Użytkownik podaje pomysł | Decyzja: notatka vs task vs journal | ❌ |

### Kryteria zaliczenia

- [ ] 80% decyzji zgodnych z intencją użytkownika
- [ ] Brak pytań "gdzie to zapisać?"
- [ ] Spójne kategoryzowanie informacji

---

## POZIOM 2: REACTIVE

> **Status:** ❌ NIE ROZPOCZĘTY
> **Cel:** Jarvis reaguje na zewnętrzne triggery i wykonuje akcje

### Testy

| Test | Trigger | Akcja | Efekt | Status |
|------|---------|-------|-------|--------|
| T2.1 | Użytkownik mówi "raport" | Agregacja TODO | Plik z raportem | ❌ |
| T2.2 | Email od X z tematem Y | Parsowanie + odpowiedź | Email wysłany | ❌ |
| T2.3 | Webhook z n8n | Wykonanie zadania | Zadanie wykonane | ❌ |
| T2.4 | Komenda "/status" | Podsumowanie projektów | Raport w konsoli | ❌ |

### Kryteria zaliczenia

- [ ] Reakcja na trigger < 30 sekund
- [ ] 95% poprawnych wykonań
- [ ] Logowanie akcji do JOURNAL

### Wymagania techniczne

- [ ] Gmail API / MCP
- [ ] Webhook endpoint
- [ ] Scheduler (cron lub n8n)

---

## POZIOM 3: PROACTIVE

> **Status:** ❌ NIE ROZPOCZĘTY
> **Cel:** Jarvis sam zauważa problemy i proponuje akcje

### Testy

| Test | Sytuacja | Oczekiwana reakcja | Status |
|------|----------|-------------------|--------|
| T3.1 | Task ma > 7 dni | "Task X ma 7 dni — zamknąć?" | ❌ |
| T3.2 | Podobny wpis istnieje | "Masz podobny wpis — połączyć?" | ❌ |
| T3.3 | Minął tydzień | "Czas na WEEKLY_REVIEW?" | ❌ |
| T3.4 | Deadline się zbliża | Przypomnienie o terminie | ❌ |

### Kryteria zaliczenia

- [ ] 70% trafnych sugestii
- [ ] Brak spamu (max 3 sugestie/dzień)
- [ ] Użytkownik może wyłączyć

---

## POZIOM 4: AUTONOMOUS (Sprawczość słowa)

> **Status:** ❌ NIE ROZPOCZĘTY
> **Cel:** Rozmowa → działający system

### Testy

| Test | Polecenie | Oczekiwany efekt | Status |
|------|-----------|------------------|--------|
| T4.1 | "Od teraz Kowalski dostaje kody rabatowe gdy pyta" | Kowalski dostaje kody | ❌ |
| T4.2 | "Informuj mnie codziennie o zaległych taskach" | Email dzienny przychodzi | ❌ |
| T4.3 | "Przestań wysyłać raporty" | Raporty przestają przychodzić | ❌ |
| T4.4 | "Zbuduj projekt X od koncepcji do kodu" | Działający projekt | ❌ |

### Kryteria zaliczenia

- [ ] Efekt w realnym świecie (nie "zbudowałem workflow")
- [ ] Użytkownik nie konfiguruje niczego ręcznie
- [ ] System działa autonomicznie 24/7

### Model wdrożenia

1. **"W sobie"** — najpierw działa (nawet suboptymalne)
2. **Optymalizacja** — przeniesienie do n8n (opcjonalne)

---

## Podsumowanie postępu

| Poziom | Nazwa | Status | Data osiągnięcia |
|--------|-------|--------|------------------|
| 0 | FOUNDATION | 🟡 W trakcie | — |
| 1 | ASSISTED | ❌ | — |
| 2 | REACTIVE | ❌ | — |
| 3 | PROACTIVE | ❌ | — |
| 4 | AUTONOMOUS | ❌ | — |

---

## Następny krok

**Aktualny cel:** Zamknąć POZIOM 0 (wszystkie testy T0.x na ✅)

**Blokery:**
- T0.4 wymaga lepszego przeszukiwania KNOWLEDGE.md

---

## Historia zmian

| Data | Zmiana |
|------|--------|
| 17.01.2026 | Utworzenie dokumentu |

---

> **Koniec MILESTONES.md**
