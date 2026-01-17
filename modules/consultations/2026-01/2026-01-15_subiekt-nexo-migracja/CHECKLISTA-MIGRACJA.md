# Checklista: Kompleksowa migracja RATAJ — stanowisko TECHNOLOGIA

> **Data utworzenia:** 16.01.2026
> **Klient:** RATAJ SP. Z O.O., Łask
> **Stanowisko:** TECHNOLOGIA (nowy notebook)

---

## Podsumowanie zakresu

| Element                  | Status |
|--------------------------|--------|
| Migracja danych GT→Nexo  | ⬜     |
| Konto Microsoft + O365   | ⬜     |
| Konfiguracja OneDrive    | ⬜     |
| Kopia danych (Win7→nowy) | ⬜     |
| Uprawnienia sieciowe     | ⬜     |
| Uzupełnienie operacji    | ⬜     |
| Hasła w Nexo             | ⬜     |
| Instruktaż użytkownika   | ⬜     |

---

## ETAP 1: Przygotowanie środowiska

### 1.1 Konto Microsoft

- [ ] Utworzyć konto Microsoft: `technologia@rataj.pl`
- [ ] Zweryfikować konto (email/telefon)
- [ ] Dodać konto do grupy rodzinnej Microsoft 365
- [ ] Sprawdzić czy OneDrive 1TB jest aktywny
- [ ] Zalogować się na portal.office.com — test dostępu

### 1.2 Konfiguracja notebooka — profil użytkownika

- [ ] Zalogować się kontem `technologia@rataj.pl` do Windows
- [ ] Lub: przypisać konto Microsoft do istniejącego profilu lokalnego
- [ ] Uruchomić OneDrive i zalogować
- [ ] Włączyć synchronizację folderów:
  - [ ] Pulpit
  - [ ] Dokumenty
  - [ ] Pobrane (opcjonalnie)
- [ ] Poczekać na pełną synchronizację (może trwać!)
- [ ] Test: utworzyć plik na Pulpicie → sprawdzić czy pojawił się w OneDrive

### 1.3 Kopia danych ze starego PC (Windows 7)

- [ ] Zinwentaryzować co jest do przeniesienia:
  - [ ] Pulpit
  - [ ] Dokumenty
  - [ ] Pobrane
  - [ ] Inne katalogi użytkownika
  - [ ] Dane programów (jeśli są)
- [ ] Przenieść dane na nowy notebook (metoda: pendrive/sieć/dysk zewnętrzny)
- [ ] Umieścić w odpowiednich folderach synchronizowanych z OneDrive
- [ ] Zweryfikować kompletność danych
- [ ] Backup starego PC zachować jeszcze przez 30 dni (na wszelki wypadek)

---

## ETAP 2: Migracja Subiekt GT → Nexo

### 2.1 Przygotowanie

- [ ] Upewnić się że masz kopię bazy GT ze stanem na 31.12.2025
- [ ] Sprawdzić czy Subiekt GT i Subiekt Nexo są zainstalowane na notebooku
- [ ] Upewnić się że archiwalne dane GT będą nadal dostępne (osobna baza)

### 2.2 Import danych

- [ ] Uruchomić Subiekt Nexo
- [ ] Kreator wdrożeniowy → "Importuj z InsERT GT"
- [ ] Wskazać serwer bazy GT (użytkownik: `sa`, hasło: puste jeśli domyślne)
- [ ] Wybrać bazę ze stanem 31.12.2025
- [ ] **NIE usuwać nieaktywnych kartotek** (towary, kontrahenci)
- [ ] Przeprowadzić import
- [ ] Zweryfikować import — losowo sprawdzić:
  - [ ] Kontrahentów (kilku aktywnych, kilku nieaktywnych)
  - [ ] Towary (kilka aktywnych, kilka nieaktywnych)
  - [ ] Dokumenty historyczne
  - [ ] Stany magazynowe

### 2.3 Po imporcie — weryfikacja ustawień

- [ ] Sprawdzić kredyt kupiecki na kartach głównych klientów (ustawienie migruje się różnie)
- [ ] Sprawdzić formy płatności
- [ ] Sprawdzić konta bankowe firmy
- [ ] Sprawdzić terminy zapłat
- [ ] Sprawdzić waluty (EUR)

---

## ETAP 3: Uzupełnienie operacji w Nexo

> ⚠️ **Uwaga:** Użytkownik musiał pracować operacyjnie w GT od 01.01.2026.
> Trzeba uzupełnić te operacje w Nexo.

### 3.1 Inwentaryzacja operacji do uzupełnienia

- [ ] Otworzyć GT — wylistować dokumenty od 01.01.2026:
  - [ ] Faktury sprzedaży
  - [ ] Faktury zakupu
  - [ ] WZ, PZ
  - [ ] Zamówienia
  - [ ] Korekty
  - [ ] Inne
- [ ] Zapisać listę dokumentów do wprowadzenia

### 3.2 Wprowadzenie operacji do Nexo

- [ ] Wprowadzić dokumenty w Nexo (chronologicznie)
- [ ] Sprawdzić zgodność stanów magazynowych GT vs Nexo
- [ ] Sprawdzić zgodność rozrachunków

---

## ETAP 4: Konfiguracja Nexo

### 4.1 Hasła i użytkownicy

- [ ] Sprawdzić listę użytkowników (migracja przenosi, ale hasła mogą być inne)
- [ ] Ustawić nowe hasła dla wszystkich użytkowników
- [ ] Przetestować logowanie każdego użytkownika

### 4.2 Uprawnienia

- [ ] Zweryfikować uprawnienia pracowników (porównać z GT)
- [ ] Dostosować jeśli potrzeba

### 4.3 Ustawienia widoków (opcjonalnie teraz, można później)

- [ ] Skonfigurować widoki dla najczęściej używanych modułów
- [ ] Ukryć niepotrzebne pola na formatkach (zębatka → "Ustaw widoczność pól")

---

## ETAP 5: Środowisko sieciowe

### 5.1 Katalogi sieciowe

- [ ] Zinwentaryzować jakie katalogi sieciowe były używane
- [ ] Utworzyć/podłączyć katalogi sieciowe na nowym notebooku
- [ ] Ustawić mapowanie dysków sieciowych (jeśli używane)
- [ ] Przetestować dostęp

### 5.2 Drukarki i urządzenia

- [ ] Podłączyć drukarki sieciowe
- [ ] Podłączyć drukarkę fiskalną (jeśli dotyczy)
- [ ] Podłączyć czytnik kodów (jeśli dotyczy)
- [ ] Skonfigurować w Subiekt Nexo

---

## ETAP 6: Instruktaż użytkownika

### 6.1 Kluczowe różnice GT vs Nexo do omówienia

| Temat                     | GT                              | Nexo                                    |
|---------------------------|---------------------------------|-----------------------------------------|
| **Układ interfejsu**      | Pionowy (menu boczne)           | Poziomy (zakładki u góry)               |
| **Widoki**                | Brak własnych widoków           | Można tworzyć własne widoki w modułach  |
| **Grupowanie na listach** | Niedostępne                     | Zagnieżdżone grupowanie danych          |
| **Ukrywanie pól**         | Ograniczone                     | Zębatka → "Ustaw widoczność pól"        |
| **Kredyt kupiecki**       | Automatycznie                   | Trzeba włączyć na karcie klienta        |
| **Ustawienia per user**   | Wspólne                         | Każdy użytkownik ma własne ustawienia   |

### 6.2 Tematy do przeszkolenia

- [ ] Nawigacja w nowym interfejsie (zakładki, moduły)
- [ ] Wystawianie faktury — przejście krok po kroku
- [ ] Zmiana waluty na dokumencie (EUR)
- [ ] Wyszukiwanie kontrahentów i towarów
- [ ] Wyszukiwarka pomocy w programie (wbudowana)
- [ ] Tworzenie własnych widoków (jeśli zainteresowany)
- [ ] Ukrywanie niepotrzebnych pól na formatkach

### 6.3 Materiały do przekazania

- [ ] Link do e-Pomocy InsERT: https://www.insert.com.pl/dla_uzytkownikow/e-pomoc_techniczna/
- [ ] Informacja o szkoleniu "Subiekt nexo krok po kroku" (10h, dostępne online)
- [ ] Link do forum: http://forumsubiekta.pl/

### 6.4 Wsparcie po wdrożeniu

- [ ] Ustalić kanał kontaktu na pytania (telefon/email/Teams)
- [ ] Umówić follow-up za tydzień (sprawdzenie czy wszystko OK)

---

## ETAP 7: Finalizacja

### 7.1 Testy końcowe

- [ ] Test wystawienia faktury sprzedaży
- [ ] Test wystawienia faktury w EUR
- [ ] Test wydruku
- [ ] Test synchronizacji OneDrive
- [ ] Test dostępu do katalogów sieciowych

### 7.2 Dokumentacja

- [ ] Zapisać hasła w bezpiecznym miejscu (przekazać klientowi)
- [ ] Zaktualizować NOTATKI.md z tej konsultacji
- [ ] Zamknąć konsultację w rejestrze (gdy wszystko OK)

### 7.3 Backup i archiwizacja

- [ ] Kopia bazy Nexo po wdrożeniu
- [ ] Zachować bazę GT jako archiwum (dostęp do historii)

---

## Przydatne linki

| Temat                          | Link                                                                                           |
|--------------------------------|------------------------------------------------------------------------------------------------|
| Przejście na Nexo — InsERT     | https://www.insert.com.pl/przejdz_na_insert_nexo.html                                         |
| Import danych z GT             | https://www.insert.com.pl/dla_uzytkownikow/e-pomoc_techniczna/1111,jak-przeniesc-dane-z-insert-gt-do-insert-nexo.html |
| Kreator wdrożeniowy            | https://www.insert.com.pl/dla_uzytkownikow/e-pomoc_techniczna/2104,subiekt-nexo-kreator-wdrozeniowy-krok-po-kroku.html |
| Szkolenie "Nexo krok po kroku" | https://sklep.insert.com.pl/product/Subiekt-nexo-PRO-krok-po-kroku-lic-elektroniczna--s4782   |
| Porównanie GT vs Nexo          | https://pbs-soft-serwis.pl/glowne-roznice-pomiedzy-programem-subiekt-nexo-a-subiekt-gt/       |
| Forum Subiekta                 | http://forumsubiekta.pl/                                                                       |

---

## Notatki robocze

*(miejsce na notatki w trakcie realizacji)*

- ...

---

## Historia zmian

| Data       | Zmiana                        |
|------------|-------------------------------|
| 16.01.2026 | Utworzenie checklisty         |
