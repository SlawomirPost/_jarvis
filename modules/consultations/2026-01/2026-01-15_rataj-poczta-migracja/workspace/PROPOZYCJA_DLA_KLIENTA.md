# Propozycja rozwiązania: Archiwizacja poczty e-mail

> **Dla:** Rataj Sp. z o.o.
> **Data:** 15.01.2026
> **Dotyczy:** Poczta archiwalna z Windows Live Mail

---

## Sytuacja wyjściowa

Obecnie poczta firmowa przechowywana jest w programie **Windows Live Mail**, który:
- Nie jest już wspierany przez Microsoft
- Działa, ale z ryzykiem awarii przy dużych wolumenach danych
- Przechowuje pocztę w formacie EML (każdy e-mail = osobny plik)

### Dane techniczne

| Parametr                   | Wartość                                      |
|----------------------------|----------------------------------------------|
| **Rozmiar poczty**         | 40–70 GB                                     |
| **Hosting (CyberFolks)**   | Pakiet 100 GB, wykorzystane ~22 GB           |
| **Wolne miejsce na serwerze** | ~78 GB (wystarczy na wgranie archiwum)    |

**Cel:** Zabezpieczenie poczty archiwalnej i zapewnienie wygodnego dostępu do niej na przyszłość.

### Znane ryzyka migracji (dotyczy wszystkich wariantów)

⚠️ **UWAGA:** W obecnym archiwum mogą znajdować się:

| Problem                        | Opis                                                    |
|--------------------------------|---------------------------------------------------------|
| **Uszkodzone wiadomości**      | Po latach użytkowania i kilku awariach bazy WLM część wiadomości może być uszkodzona (nieczytelna, niepełna). |
| **Zbyt duże wiadomości**       | Wiadomości z załącznikami >25-50 MB mogą przekraczać limity obecnych serwerów pocztowych. |
| **Niekompatybilne formaty**    | Stare wiadomości mogą zawierać elementy nieobsługiwane przez nowe systemy. |

**Co to oznacza:**
- Część wiadomości może **nie dać się zmigrować** automatycznie
- Wymagane będzie **ręczne rozwiązanie** dla problematycznych przypadków
- Na etapie wstępnym **nie da się dokładnie określić**, ile takich wiadomości jest i które to są
- Dopiero podczas migracji testowej wyjdą konkretne problemy

**Zalecenie:** Przed pełną migracją wykonać **test na próbce** (np. 1 folder) i zidentyfikować typowe problemy.

---

## Wariant 1: Thunderbird z folderami lokalnymi

### Na czym polega?

Poczta archiwalna zostaje przeniesiona do programu **Mozilla Thunderbird** — nowoczesnego, bezpłatnego klienta pocztowego. Wiadomości trafiają do **folderów lokalnych** (przechowywanych na dysku komputera, nie na serwerze).

```
┌────────────────────────────────────────────────────────┐
│  THUNDERBIRD                                           │
│  ├── 📧 Konto pocztowe (bieżąca poczta - IMAP)        │
│  └── 📁 Foldery lokalne                               │
│       ├── 📁 ARCHIWUM do 15.01.2026                   │
│       │    ├── 📁 Inbox                               │
│       │    ├── 📁 Klienci                             │
│       │    ├── 📁 Faktury                             │
│       │    └── 📁 ...                                 │
│       └── (struktura folderów z Windows Live Mail)    │
└────────────────────────────────────────────────────────┘
```

### Zalety

| Zaleta                        | Opis                                              |
|-------------------------------|---------------------------------------------------|
| **Bezpłatne**                 | Thunderbird jest darmowy                          |
| **Jeden program**             | Archiwum i bieżąca poczta w jednym miejscu        |
| **Wyszukiwanie**              | Szybkie przeszukiwanie wszystkich wiadomości      |
| **Aktywny rozwój**            | Program jest rozwijany (nowe wersje co miesiąc)   |
| **Prosta migracja komputera** | Kopiowanie jednego folderu na nowy komputer       |
| **Dane pozostają lokalne**    | Poczta nie wraca do "chmury"                      |

### Wady i ryzyka

| Ryzyko                           | Wyjaśnienie                                    |
|----------------------------------|------------------------------------------------|
| **Format MBOX**                  | Thunderbird przechowuje wszystkie e-maile z jednego folderu w jednym dużym pliku. Przy 40-70 GB poczty — potencjalnie kilkanaście dużych plików. |
| **Uszkodzenie = utrata folderu** | Jeśli plik się uszkodzi (awaria dysku, błąd systemu), można stracić cały folder naraz. |
| **Duże foldery = wolniejsze**    | Foldery powyżej 2-4 GB mogą działać wolniej.   |
| **Brak dostępu mobilnego**       | Archiwum dostępne tylko z tego komputera.      |

### Jak minimalizować ryzyko?

1. **Podział dużych folderów** — np. Inbox podzielić na Inbox_2020, Inbox_2021, itd.
2. **Regularne backupy** — kopia folderu Thunderbird na zewnętrzny dysk (co tydzień)
3. **Zachowanie oryginalnych plików EML** — jako dodatkowa kopia bezpieczeństwa

### Koszty

| Pozycja           | Koszt         |
|-------------------|---------------|
| Program           | 0 zł          |
| Wdrożenie*        | Do ustalenia  |
| Utrzymanie roczne | 0 zł          |

*Import danych, konfiguracja, szkolenie

---

## Wariant 2: MailStore

**MailStore** to specjalistyczne oprogramowanie do archiwizacji poczty e-mail. Tworzy bezpieczne, przeszukiwalne archiwum wszystkich wiadomości.

### Opcja 2A: MailStore Home (jeden komputer)

```
┌────────────────────────────────────────────────────────┐
│  KOMPUTER GŁÓWNY                                       │
│  ┌──────────────────────────────────────────────────┐  │
│  │  MailStore Home                                  │  │
│  │  └── Archiwum poczty (przeszukiwalne)           │  │
│  └──────────────────────────────────────────────────┘  │
│                                                        │
│  Dostęp: tylko z tego komputera                        │
└────────────────────────────────────────────────────────┘

Inne komputery w firmie: ❌ brak dostępu do archiwum
```

**Uwaga:** MailStore Home jest bezpłatny, ale tylko do użytku prywatnego. Dla firmy formalnie wymagana jest wersja Server.

| Zalety                           | Wady                                    |
|----------------------------------|-----------------------------------------|
| Bezpłatne (ale tylko prywatnie!) | Dostęp tylko z jednego komputera        |
| Własny format (odporny na błędy) | Brak interfejsu webowego                |
| Szybkie wyszukiwanie             | Nie do użytku firmowego (licencja)      |
| Zachowuje strukturę folderów     | Brak dostępu mobilnego                  |
| Dane pozostają lokalne           |                                         |

---

### Opcja 2B: MailStore Server (dostęp sieciowy)

```
┌────────────────────────────────────────────────────────┐
│  SERWER / KOMPUTER DEDYKOWANY                          │
│  ┌──────────────────────────────────────────────────┐  │
│  │  MailStore Server                                │  │
│  │  └── Archiwum poczty (baza danych)              │  │
│  └──────────────────────────────────────────────────┘  │
└────────────────────────────────────────────────────────┘
                    ↓ sieć lokalna ↓
┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│ Stanowisko 1 │  │ Stanowisko 2 │  │ Stanowisko 3 │
│ (przeglądarka)│ │ (przeglądarka)│ │ (przeglądarka)│
└──────────────┘  └──────────────┘  └──────────────┘

Dostęp: przez przeglądarkę internetową z dowolnego komputera w sieci
```

| Zalety                           | Wady                                    |
|----------------------------------|-----------------------------------------|
| Legalny do użytku firmowego      | Płatne (patrz koszty poniżej)           |
| Dostęp z każdego komputera (web) | Wymaga komputera jako "serwera"         |
| Wielu użytkowników jednocześnie  | Konfiguracja bardziej złożona           |
| Własny format (bezpieczny)       | Wymaga dbania o lokalny serwer          |
| Wyszukiwanie w załącznikach      |                                         |
| Eksport z powrotem do plików EML |                                         |
| Dane pozostają w firmie          |                                         |

### Koszty MailStore Server (do 5 użytkowników)

| Pozycja                          | Koszt EUR | Koszt PLN (ok.) |
|----------------------------------|-----------|-----------------|
| **Licencja + 1 rok wsparcia**    | €295      | ~1 270 zł       |
| **Odnowienie wsparcia (roczne)** | €85       | ~365 zł/rok     |

**Co daje wsparcie?**
- Aktualizacje programu
- Pomoc techniczna producenta
- Bez odnowienia: program działa dalej, ale bez nowych wersji

---

## Wariant 3: Wgranie archiwum na serwer CyberFolks (IMAP)

### Na czym polega?

Poczta archiwalna zostaje wgrana z powrotem na serwer hostingowy CyberFolks. Dzięki temu jest dostępna przez IMAP z dowolnego urządzenia — komputera, telefonu, tabletu, a także przez webmail.

```
┌────────────────────────────────────────────────────────┐
│  SERWER CYBERFOLKS (100 GB)                            │
│  ├── 📧 Skrzynka pocztowa                             │
│  │    ├── 📁 INBOX                                    │
│  │    ├── 📁 Sent                                     │
│  │    ├── 📁 ARCHIWUM (wgrana poczta 40-70 GB)        │
│  │    │    ├── 📁 Klienci                             │
│  │    │    ├── 📁 Faktury                             │
│  │    │    └── 📁 ...                                 │
│  │    └── (pozostałe ~8-38 GB wolnego)                │
│  └── 📁 Strona WWW, bazy danych (~22 GB)              │
└────────────────────────────────────────────────────────┘
              ↓ Internet / IMAP ↓
┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│ Thunderbird  │  │ Telefon      │  │ Webmail      │
│ (komputer)   │  │ (aplikacja)  │  │ (przeglądarka)|
└──────────────┘  └──────────────┘  └──────────────┘
```

### Jak działa synchronizacja z Thunderbirdem?

Thunderbird może pracować z pocztą IMAP na dwa sposoby:

| Tryb                  | Jak działa                                           |
|-----------------------|------------------------------------------------------|
| **Online (domyślny)** | Pobiera tylko nagłówki. Treść ładuje się po kliknięciu. Wymaga internetu. |
| **Offline**           | Pobiera całą pocztę na dysk lokalny. Można czytać bez internetu. |

**Uwaga:** W trybie offline Thunderbird tworzy lokalną kopię w formacie MBOX — tak samo jak foldery lokalne. Oznacza to, że przy 40-70 GB poczty, tyle samo miejsca zajmie na dysku komputera.

### Zalety

| Zaleta                         | Opis                                              |
|--------------------------------|---------------------------------------------------|
| **Dostęp z każdego urządzenia** | Komputer, telefon, tablet, webmail               |
| **Synchronizacja folderów**    | Zmiany widoczne wszędzie                          |
| **Backup po stronie serwera**  | Hosting robi kopie zapasowe                       |
| **Brak dodatkowych kosztów**   | Wykorzystanie istniejącego hostingu               |

### Wady i ryzyka

| Ryzyko                           | Wyjaśnienie                                    |
|----------------------------------|------------------------------------------------|
| **Poczta wraca do "chmury"**     | Dane na serwerze zewnętrznym (hosting)         |
| **Czas wgrywania**               | Upload 40-70 GB może trwać wiele godzin/dni    |
| **Limity załączników**           | Wiadomości >25-50 MB mogą być odrzucane (patrz: Znane ryzyka migracji) |
| **Zużycie miejsca na hostingu**  | Po wgraniu zostanie tylko 8-38 GB wolnego      |
| **Wolna pierwsza synchronizacja**| Thunderbird będzie długo pobierał całość       |
| **Zależność od dostawcy**        | Awaria hostingu = brak dostępu do archiwum     |

### Koszty

| Pozycja                 | Koszt                                     |
|-------------------------|-------------------------------------------|
| Dodatkowe oprogramowanie | 0 zł (wykorzystanie istniejącego hostingu)|
| Wdrożenie*              | Do ustalenia                              |
| Utrzymanie roczne       | 0 zł (w ramach hostingu)                  |

*Eksport, upload, weryfikacja — przy 40-70 GB może być czasochłonne

---

## Wariant 4: Migracja do Gmail z etykietami

### Na czym polega?

Cała poczta archiwalna zostaje przeniesiona na konto **Gmail / Google Workspace**. Struktura folderów odwzorowana jest za pomocą **etykiet** (labels) — specyficznej funkcji Gmaila.

Gmail może również:
- Pobierać nową pocztę z oryginalnej skrzynki ("Sprawdź pocztę z innych kont")
- Wysyłać w imieniu oryginalnego adresu ("Wyślij jako")

```
┌────────────────────────────────────────────────────────┐
│  GMAIL / GOOGLE (chmura Google)                        │
│  ├── 📧 Wszystkie wiadomości (40-70 GB)               │
│  ├── 🏷️ Etykiety (zamiast folderów):                  │
│  │    ├── 🏷️ Klienci                                  │
│  │    ├── 🏷️ Faktury                                  │
│  │    ├── 🏷️ Archiwum/2020                            │
│  │    └── 🏷️ ...                                      │
│  ├── ⚙️ Pobieranie z: poczta@rataj.pl                 │
│  └── ⚙️ Wysyłanie jako: poczta@rataj.pl               │
└────────────────────────────────────────────────────────┘
              ↓ Internet ↓
┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│ Gmail web    │  │ Gmail app    │  │ Thunderbird  │
│ (przeglądarka)│ │ (telefon)    │  │ (IMAP)       │
└──────────────┘  └──────────────┘  └──────────────┘
```

### Szczególne zalety Gmaila

| Funkcja                      | Opis                                               |
|------------------------------|-----------------------------------------------------|
| **Inteligentne wyszukiwanie** | Bardzo szybkie, rozumie kontekst, szuka w załącznikach |
| **Deduplikacja**             | Jeśli ta sama wiadomość jest w wielu miejscach, Gmail zachowa jedną kopię i przypisze wiele etykiet |
| **Znany interfejs**          | Większość osób zna Gmaila                           |
| **Etykiety > foldery**       | Jedna wiadomość może mieć wiele etykiet (być w wielu "folderach" naraz) |
| **Trwałość Google**          | Google zapewnia wysoką dostępność i backup          |
| **Integracja z innymi usługami** | Kalendarz, Dysk, Meet — wszystko w jednym      |

### Jak działa "wszystko w jednym"?

Po skonfigurowaniu Gmail może:
1. **Pobierać pocztę** z oryginalnej skrzynki (np. poczta@rataj.pl) automatycznie
2. **Wysyłać odpowiedzi** tak, że odbiorca widzi adres @rataj.pl, nie @gmail.com
3. Czyli: pracujesz w Gmailu, ale "na zewnątrz" wygląda to jak normalna poczta firmowa

### Wady i ryzyka

| Ryzyko                        | Wyjaśnienie                                     |
|-------------------------------|--------------------------------------------------|
| **Dane w chmurze Google**     | Poczta przechowywana na serwerach Google (USA)   |
| **Wymaga subskrypcji**        | 40-70 GB przekracza darmowe 15 GB                |
| **Zależność od Google**       | Zmiana polityki cenowej, warunków usługi         |
| **Prywatność**                | Google analizuje treść (dla reklam w wersji darmowej) |
| **Migracja = jednorazowy wysiłek** | Import dużej ilości danych może być skomplikowany |
| **Limity wiadomości**         | Gmail ma limit 25 MB na wiadomość — większe mogą nie zostać zaimportowane (patrz: Znane ryzyka migracji) |

### Koszty Google One / Google Workspace

Dla **40-70 GB** poczty potrzebny jest płatny plan:

| Plan                     | Pojemność | Koszt miesięczny | Koszt roczny (ok.) |
|--------------------------|-----------|------------------|---------------------|
| **Google One 100 GB**    | 100 GB    | ~9 zł            | ~108 zł             |
| **Google One 200 GB**    | 200 GB    | ~15 zł           | ~180 zł             |
| **Google Workspace Basic**| 30 GB/user | ~27 zł/user    | ~324 zł/user        |

**Uwaga:** Google One można współdzielić z rodziną (do 5 osób). Jeśli firma już ma pakiet Google One, może wystarczyć jego zwiększenie.

---

## Porównanie wszystkich wariantów

| Aspekt                      | Thunderbird lokalny | MailStore Home | MailStore Server | IMAP CyberFolks | Gmail          |
|-----------------------------|---------------------|----------------|------------------|-----------------|----------------|
| **Koszt początkowy**        | 0 zł                | 0 zł           | ~1 270 zł        | 0 zł            | 0 zł           |
| **Koszt roczny**            | 0 zł                | 0 zł           | ~365 zł          | 0 zł            | ~108-180 zł    |
| **Legalność dla firmy**     | ✅ Tak              | ❌ Prywatnie   | ✅ Tak           | ✅ Tak          | ✅ Tak         |
| **Dostęp mobilny**          | ❌ Nie              | ❌ Nie         | ✅ Web (sieć lok.)| ✅ Tak         | ✅ Tak         |
| **Dostęp z internetu**      | ❌ Nie              | ❌ Nie         | ❌ Sieć lokalna  | ✅ Tak          | ✅ Tak         |
| **Dane w chmurze**          | ❌ Lokalne          | ❌ Lokalne     | ❌ Lokalne       | ⚠️ Hosting      | ⚠️ Google      |
| **Wyszukiwanie**            | ✅ Dobre            | ✅ Bardzo dobre| ✅ Bardzo dobre  | ✅ Dobre        | ✅ Najlepsze   |
| **Deduplikacja**            | ❌ Nie              | ✅ Tak         | ✅ Tak           | ❌ Nie          | ✅ Tak         |
| **Bezpieczeństwo formatu**  | ⚠️ MBOX (ryzyko)    | ✅ Własny      | ✅ Własny        | ⚠️ Serwer       | ✅ Google      |
| **Łatwość wdrożenia**       | ✅ Prosta           | ✅ Prosta      | ⚠️ Średnia       | ⚠️ Czasochłonne | ⚠️ Średnia     |
| **Integracja z telefonem**  | ❌ Nie              | ❌ Nie         | ⚠️ Tylko web     | ✅ Tak          | ✅ Najlepsza   |
| **Tolerancja dla dużych/uszkodzonych** | ✅ Wysoka  | ✅ Wysoka      | ✅ Wysoka        | ⚠️ Limity serwera | ⚠️ Limit 25 MB |

---

## Rekomendacje według potrzeb

| Jeśli priorytetem jest...                      | ...to zalecamy                          |
|-------------------------------------------------|-----------------------------------------|
| **Minimalne koszty + dane lokalne**             | Wariant 1: Thunderbird + backup         |
| **Profesjonalne archiwum w firmie**             | Wariant 2B: MailStore Server            |
| **Dostęp mobilny + obecna infrastruktura**      | Wariant 3: IMAP CyberFolks              |
| **Najlepsze wyszukiwanie + wygoda**             | Wariant 4: Gmail                        |
| **Dane muszą zostać w firmie (poufność)**       | Wariant 1 lub 2B (nie chmura)           |

---

## Następne kroki

Po wyborze wariantu:

1. [ ] Wykonanie pełnego backupu obecnej poczty (40-70 GB)
2. [ ] Sprawdzenie dokładnego rozmiaru i struktury folderów
3. [ ] Identyfikacja wiadomości >25 MB (potencjalne problemy)
4. [ ] Test migracji na małej próbce (np. 1 folder, 1000 wiadomości)
5. [ ] Pełna migracja
6. [ ] Weryfikacja poprawności przeniesienia
7. [ ] Szkolenie z obsługi nowego rozwiązania

---

## Pytania do podjęcia decyzji

1. **Czy dostęp mobilny (telefon, przeglądarka) jest ważny?**
2. **Czy poczta może być przechowywana w chmurze (hosting/Google)?**
3. **Jaki jest budżet na rozwiązanie?**
4. **Ile osób potrzebuje dostępu do archiwum?**
5. **Czy istotna jest deduplikacja (usunięcie powtórzonych wiadomości)?**

---

*Dokument roboczy — wersja 2.1*
