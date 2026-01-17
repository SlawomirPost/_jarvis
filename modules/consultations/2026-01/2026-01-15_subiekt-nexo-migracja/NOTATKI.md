# Konsultacja: Subiekt Nexo — problemy po migracji z GT

> **Data rozpoczęcia:** 15.01.2026
> **Klient:** RATAJ SP. Z O.O., Łask
> **Status:** 🟡 W trakcie (oczekiwanie na kolejne problemy)

---

## Śledzenie czasu

| Data       | Czas  | Opis aktywności                          |
|------------|-------|------------------------------------------|
| 15.01.2026 | ~30m  | Problemy 1-3: diagnoza i rozwiązanie     |

---

## Kontekst

Migracja z Insert Subiekt GT do Insert Subiekt Nexo.

**Charakterystyka środowiska GT (przed migracją):**
- Dokumenty walutowe (EURO)
- Rozbudowane uprawnienia pracowników
- Rozbudowana lista kont bankowych
- Wiele terminów zapłat
- Wieloletnie użytkowanie GT

---

## Zgłoszone problemy

| # | Problem | Status | Rozwiązanie |
|---|---------|--------|-------------|
| 1 | Brak możliwości wyboru form odroczonej płatności | ✅ Rozwiązane | Kredyt kupiecki na karcie klienta |
| 2 | Wystawianie dokumentów w EURO | ✅ OK | Działa standardowo |
| 3 | "Termin realizacji" na pro formie — ukryć | ✅ Rozwiązane | Zębatka → Ustaw widoczność pól |

---

## Rozwiązania szczegółowe

### Problem 1: Brak form odroczonej płatności ✅

**Przyczyna:** Klient nie miał włączonego kredytu kupieckiego.

**Warunki aby płatność odroczona była dostępna:**
1. Klient musi być wybrany na dokumencie
2. Klient musi mieć status **Firma**
3. Na karcie klienta → zakładka **Płatności** → zaznaczone **"Zezwól na kredyt kupiecki"**

**Zapisane do bazy wiedzy:** [platnosci-odroczone-niedostepne.md](../knowledge-base/subiekt-nexo/platnosci-odroczone-niedostepne.md)

---

### Problem 2: Wystawianie w EURO ✅

Działa standardowo — nie wymagało interwencji.

**Sposób:** Na dokumencie → sekcja Asortyment → ikona ≡ → Zmień → wybrać EUR

---

### Problem 3: "Termin realizacji" na pro formie ✅

**Rozwiązanie (ukrycie na formatce):**
1. Otwórz dokument pro forma
2. Prawy górny róg → ikona **⚙️ zębatki**
3. **"Ustaw widoczność pól"**
4. Odznacz **"Termin realizacji"**
5. Zapisz

**Uwaga:** Ustawienie per użytkownik, per typ dokumentu. Nie wpływa na wydruk.

---

## Pliki

| Plik | Opis |
|------|------|
| - | (brak plików) |

---

## Otwarte kwestie

### 16.01.2026 — Kompleksowa migracja stanowiska TECHNOLOGIA

Zakres prac do wykonania:
1. Ponowna migracja GT→Nexo (stan 31.12.2025, BEZ usuwania nieaktywnych kartotek)
2. Konto Microsoft `technologia@rataj.pl` + Office 365 / OneDrive
3. Konfiguracja synchronizacji OneDrive (Pulpit, Dokumenty, Pobrane)
4. Kopia danych ze starego PC (Windows 7) → nowy notebook
5. Uprawnienia i katalogi sieciowe
6. Uzupełnienie operacji w Nexo (użytkownik pracował w GT od 01.01.2026)
7. Nowe hasła w Nexo
8. Instruktaż użytkownika (różnice GT vs Nexo)

**Dokumenty:**
- [CHECKLISTA-MIGRACJA.md](CHECKLISTA-MIGRACJA.md) — techniczna checklista do realizacji
- [RAPORT-DLA-KLIENTA.md](RAPORT-DLA-KLIENTA.md) — raport z wyjaśnieniami do przekazania Klientowi

**Status:** ⏳ Przygotowana dokumentacja, oczekiwanie na realizację

---

## Lessons Learned

1. Po migracji GT→Nexo sprawdzić ustawienia kredytu kupieckiego na kartach klientów
2. Ukrywanie pól na formatkach: zębatka → "Ustaw widoczność pól"
3. Ustawienia widoczności są per użytkownik — każdy musi ustawić sobie sam

---

## Historia

| Data       | Akcja                                    |
|------------|------------------------------------------|
| 15.01.2026 | Rozpoczęcie konsultacji                  |
| 15.01.2026 | Rozwiązane problemy 1-3                  |
| 15.01.2026 | Konsultacja pozostaje otwarta            |
| 16.01.2026 | Przygotowanie checklisty kompleksowej migracji |
