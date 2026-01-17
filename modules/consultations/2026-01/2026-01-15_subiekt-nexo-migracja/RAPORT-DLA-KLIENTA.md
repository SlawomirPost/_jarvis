# Raport: Wdrożenie stanowiska TECHNOLOGIA

**Klient:** RATAJ SP. Z O.O.
**Data rozpoczęcia:** _______________
**Data zakończenia:** _______________
**Wykonawca:** _______________

---

## Podsumowanie

Kompleksowe wdrożenie nowego stanowiska komputerowego TECHNOLOGIA obejmujące:
- Przejście z programu Subiekt GT na Subiekt Nexo
- Konfigurację konta Microsoft i chmury OneDrive
- Przeniesienie danych ze starego komputera
- Szkolenie użytkownika

---

## Etap 1: Konto Microsoft i chmura OneDrive

### Po co to robimy?

Konto Microsoft z usługą OneDrive zapewnia:
- **Bezpieczeństwo danych** — pliki są automatycznie synchronizowane do chmury, więc w przypadku awarii komputera dane są bezpieczne
- **Dostęp z każdego miejsca** — można otworzyć swoje pliki z telefonu, tabletu lub innego komputera
- **Pakiet Office 365** — dostęp do Word, Excel, Outlook w ramach rodzinnej subskrypcji

### Co zostało zrobione

| Czynność | Status | Uwagi |
|----------|--------|-------|
| Utworzenie konta `technologia@rataj.pl` | ⬜ | |
| Dodanie do grupy rodzinnej Microsoft 365 | ⬜ | |
| Aktywacja OneDrive (1 TB przestrzeni) | ⬜ | |
| Zalogowanie do Windows kontem Microsoft | ⬜ | |
| Włączenie synchronizacji folderu Pulpit | ⬜ | |
| Włączenie synchronizacji folderu Dokumenty | ⬜ | |
| Włączenie synchronizacji folderu Pobrane | ⬜ | |
| Test synchronizacji — utworzenie pliku testowego | ⬜ | |

### Efekt dla użytkownika

Po skonfigurowaniu wszystko co zapiszecie na Pulpicie lub w Dokumentach automatycznie trafia do chmury. Ikona chmurki przy pliku oznacza, że jest zsynchronizowany i bezpieczny.

---

## Etap 2: Przeniesienie danych ze starego komputera

### Po co to robimy?

Stary komputer (Windows 7) zawiera wieloletnie dane — dokumenty, zdjęcia, pliki. Te dane muszą być przeniesione na nowy notebook i zabezpieczone w chmurze.

### Co zostało zrobione

| Czynność | Status | Uwagi |
|----------|--------|-------|
| Zinwentaryzowanie danych do przeniesienia | ⬜ | |
| Skopiowanie folderu Pulpit | ⬜ | |
| Skopiowanie folderu Dokumenty | ⬜ | |
| Skopiowanie folderu Pobrane | ⬜ | |
| Skopiowanie innych ważnych folderów | ⬜ | |
| Umieszczenie danych w OneDrive | ⬜ | |
| Weryfikacja kompletności | ⬜ | |

### Efekt dla użytkownika

Wszystkie Wasze pliki ze starego komputera są teraz na nowym notebooku i jednocześnie bezpiecznie przechowywane w chmurze OneDrive.

---

## Etap 3: Migracja Subiekt GT → Subiekt Nexo

### Po co to robimy?

Subiekt Nexo to nowsza wersja programu do fakturowania i magazynu. Migracja przenosi wszystkie dane:
- Kartoteki kontrahentów (klientów i dostawców)
- Kartoteki towarów
- Historyczne dokumenty (faktury, WZ, PZ)
- Stany magazynowe
- Ustawienia (formy płatności, waluty, konta bankowe)

### Co zostało zrobione

| Czynność | Status | Uwagi |
|----------|--------|-------|
| Import danych z bazy GT (stan na 31.12.2025) | ⬜ | |
| Weryfikacja kontrahentów | ⬜ | |
| Weryfikacja towarów | ⬜ | |
| Weryfikacja dokumentów historycznych | ⬜ | |
| Weryfikacja stanów magazynowych | ⬜ | |
| Sprawdzenie form płatności | ⬜ | |
| Sprawdzenie walut (EUR) | ⬜ | |
| Sprawdzenie kont bankowych | ⬜ | |

### Uwaga dotycząca nieaktywnych kartotek

Kartoteki towarów i kontrahentów, które nie były używane, zostały zachowane (nie usunięte). Później możemy wspólnie przejrzeć listę i zdecydować, które usunąć — gdy już będziecie pewni, że nie są potrzebne.

### Efekt dla użytkownika

Wszystkie dane z poprzedniego programu są dostępne w nowym Subiekcie Nexo. Historia faktur i dokumentów pozostaje dostępna.

---

## Etap 4: Uzupełnienie bieżących operacji

### Po co to robimy?

Ponieważ migracja bazowała na danych z 31.12.2025, a firma pracowała operacyjnie od stycznia 2026, trzeba uzupełnić dokumenty wystawione w tym okresie, aby stany magazynowe i rozrachunki były aktualne.

### Co zostało zrobione

| Czynność | Status | Uwagi |
|----------|--------|-------|
| Wylistowanie dokumentów z GT od 01.01.2026 | ⬜ | |
| Wprowadzenie faktur sprzedaży | ⬜ | Liczba: ___ |
| Wprowadzenie faktur zakupu | ⬜ | Liczba: ___ |
| Wprowadzenie dokumentów magazynowych | ⬜ | Liczba: ___ |
| Uzgodnienie stanów magazynowych | ⬜ | |
| Uzgodnienie rozrachunków | ⬜ | |

### Efekt dla użytkownika

Program Nexo zawiera aktualne dane — stany magazynowe i należności/zobowiązania są zgodne ze stanem rzeczywistym.

---

## Etap 5: Hasła i uprawnienia użytkowników

### Po co to robimy?

Po migracji hasła użytkowników mogą wymagać ponownego ustawienia. Dodatkowo weryfikujemy, czy każdy pracownik ma odpowiednie uprawnienia (np. kto może wystawiać faktury, kto może zmieniać ceny).

### Co zostało zrobione

| Czynność | Status | Uwagi |
|----------|--------|-------|
| Ustawienie hasła dla użytkownika: _________ | ⬜ | |
| Ustawienie hasła dla użytkownika: _________ | ⬜ | |
| Ustawienie hasła dla użytkownika: _________ | ⬜ | |
| Weryfikacja uprawnień | ⬜ | |
| Test logowania każdego użytkownika | ⬜ | |

### Efekt dla użytkownika

Każdy pracownik może zalogować się do programu swoim loginem i hasłem, z odpowiednimi uprawnieniami.

---

## Etap 6: Środowisko sieciowe

### Po co to robimy?

Stanowisko musi mieć dostęp do zasobów firmowych — współdzielonych folderów, drukarek sieciowych, ewentualnie drukarki fiskalnej lub czytnika kodów.

### Co zostało zrobione

| Czynność | Status | Uwagi |
|----------|--------|-------|
| Podłączenie do katalogów sieciowych | ⬜ | |
| Mapowanie dysków sieciowych | ⬜ | |
| Podłączenie drukarki/drukarek | ⬜ | |
| Konfiguracja drukarki fiskalnej | ⬜ | Jeśli dotyczy |
| Konfiguracja czytnika kodów | ⬜ | Jeśli dotyczy |
| Test wydruku z Subiekta | ⬜ | |

### Efekt dla użytkownika

Ze stanowiska TECHNOLOGIA można drukować dokumenty, korzystać ze współdzielonych folderów i wszystkich urządzeń firmowych.

---

## Etap 7: Szkolenie użytkownika

### Po co to robimy?

Subiekt Nexo wygląda i działa nieco inaczej niż poprzedni Subiekt GT. Krótkie przeszkolenie pozwoli płynnie przejść do pracy w nowym programie.

### Główne różnice GT vs Nexo

| Co | Jak było w GT | Jak jest w Nexo |
|----|---------------|-----------------|
| Menu główne | Z boku (pionowo) | U góry (zakładki poziome) |
| Szukanie | Jedno okno | Szybkie wyszukiwanie + filtry |
| Własne widoki | Brak | Można tworzyć własne zakładki z listami |
| Ukrywanie pól | Ograniczone | Zębatka → "Ustaw widoczność pól" |

### Omówione tematy

| Temat | Status | Uwagi |
|-------|--------|-------|
| Nawigacja w nowym interfejsie | ⬜ | |
| Wystawianie faktury krok po kroku | ⬜ | |
| Zmiana waluty na dokumencie (EUR) | ⬜ | |
| Wyszukiwanie kontrahentów i towarów | ⬜ | |
| Korzystanie z pomocy wbudowanej | ⬜ | |
| Ukrywanie niepotrzebnych pól | ⬜ | |

### Materiały dla użytkownika

- Pomoc online InsERT: https://www.insert.com.pl/dla_uzytkownikow/e-pomoc_techniczna/
- Forum użytkowników: http://forumsubiekta.pl/
- Szkolenie wideo "Subiekt nexo krok po kroku" (opcjonalnie, płatne)

### Efekt dla użytkownika

Użytkownik potrafi samodzielnie wykonywać codzienne operacje w nowym programie.

---

## Etap 8: Testy końcowe i odbiór

### Testy wykonane przy użytkowniku

| Test | Status | Uwagi |
|------|--------|-------|
| Wystawienie faktury sprzedaży | ⬜ | |
| Wystawienie faktury w EUR | ⬜ | |
| Wydruk dokumentu | ⬜ | |
| Zapis pliku → pojawia się w OneDrive | ⬜ | |
| Dostęp do folderów sieciowych | ⬜ | |

---

## Podsumowanie prac

| Element | Status końcowy |
|---------|----------------|
| Konto Microsoft i OneDrive | ⬜ Gotowe / ⬜ W trakcie |
| Dane ze starego PC | ⬜ Przeniesione / ⬜ W trakcie |
| Migracja GT → Nexo | ⬜ Gotowe / ⬜ W trakcie |
| Uzupełnienie operacji | ⬜ Gotowe / ⬜ W trakcie |
| Hasła i uprawnienia | ⬜ Gotowe / ⬜ W trakcie |
| Środowisko sieciowe | ⬜ Gotowe / ⬜ W trakcie |
| Szkolenie | ⬜ Przeprowadzone / ⬜ W trakcie |

---

## Co dalej?

1. **Archiwum GT** — stary program Subiekt GT pozostaje zainstalowany z dostępem do danych archiwalnych
2. **Stary komputer** — zalecamy zachować jeszcze przez 30 dni na wypadek, gdyby okazało się, że coś pominięto
3. **Wsparcie** — w razie pytań kontakt: _______________
4. **Kontrola za tydzień** — umówiony termin sprawdzenia czy wszystko działa: _______________

---

## Podpisy

| | |
|---|---|
| **Wykonawca:** | _________________________ |
| **Data:** | _________________________ |
| | |
| **Odbiór Klienta:** | _________________________ |
| **Data:** | _________________________ |

---

*Dokument wygenerowano: 16.01.2026*
