# PORTFOLIO PROJEKTÓW

> Stan na: 17.01.2026
> **Lokalizacja centralna:** `_jarvis/docs/central/`

---

## MAPA KATEGORII PROJEKTÓW

Każdy projekt operacyjny ma prefiks w formacie `x###-nazwa`, gdzie:

```
Prefix = Kategoria:
├── a = Automation (automatyzacje)
├── b = Business Intelligence (analizy, monitoringi)
├── c = Converters (konwertery)
├── d = Data Management (bazy, repozytoria)
├── e = Enterprise Systems (duże systemy)
├── f = Finance & Trading
├── s = SaaS Applications
├── t = Tools & Utilities
├── x = Experimental
├── z = Archived
└── _ = Meta/Infrastructure (projekty organizacyjne)
```

**Format:** `[litera][3-cyfrowy numer]-nazwa-projektu`
**Przykład:** `a001-fakturownia-batch`, `b002-pharmacy-registry-monitor`

---

## PROJEKTY INFRASTRUKTURALNE (_)

### _jarvis

| Metryka     | Wartość                                                               |
|-------------|-----------------------------------------------------------------------|
| **Kod**     | _                                                                     |
| **Status**  | **W TRAKCIE** (Faza 1 - MVP)                                          |
| **GitHub**  | [_jarvis](https://github.com/SlawomirPost/_jarvis)                    |
| **Opis**    | **MÓZG SYSTEMU:** metodologia, wiedza, pamięć, rejestry               |

### _meta-operating-system

| Metryka     | Wartość                                                                           |
|-------------|-----------------------------------------------------------------------------------|
| **Kod**     | _                                                                                 |
| **Status**  | Aktywny                                                                           |
| **GitHub**  | [_meta-operating-system](https://github.com/SlawomirPost/_meta-operating-system)  |
| **Opis**    | Portfolio projektów, szablony, koncepcje                                          |

### _lab

| Metryka     | Wartość                                                               |
|-------------|-----------------------------------------------------------------------|
| **Kod**     | _                                                                     |
| **Status**  | Aktywny                                                               |
| **GitHub**  | [_lab](https://github.com/SlawomirPost/_lab)                          |
| **Opis**    | Laboratorium pomysłów: burza mózgów, rozkminki, inkubacja             |

### _tools-and-lab

| Metryka     | Wartość                                                               |
|-------------|-----------------------------------------------------------------------|
| **Kod**     | _                                                                     |
| **Status**  | Aktywny                                                               |
| **GitHub**  | [_tools-and-lab](https://github.com/SlawomirPost/_tools-and-lab)      |
| **Opis**    | Wspólne narzędzia, skrypty, troubleshooting, eksperymenty             |

### _doc-assistant

| Metryka     | Wartość                                                               |
|-------------|-----------------------------------------------------------------------|
| **Kod**     | _                                                                     |
| **Status**  | Aktywny                                                               |
| **GitHub**  | [_doc-assistant](https://github.com/SlawomirPost/_doc-assistant)      |
| **Opis**    | Asystent dokumentowy: OCR, tłumaczenia, streszczenia, analiza         |

---

## RANKING PROJEKTÓW OPERACYJNYCH

Wstępna ocena w skali 1-5 (1 = najlepiej/najłatwiej, 5 = najtrudniej/najgorzej):

| Kod  | Projekt                              | Wartość | Ryzyko | Złożoność | Zależności | SUMA   | Priorytet |
|------|--------------------------------------|--------:|-------:|----------:|-----------:|-------:|-----------|
| a001 | **Seryjne wystawianie FV**           |       2 |      1 |         1 |          1 |  **5** | 🥇        |
| b001 | **Wizualizacja ON/OFF komputerów**   |       3 |      1 |         2 |          1 |  **7** | 🥈        |
| c001 | **Konwerter PDF mBank → MT-940**     |       3 |      2 |         2 |          1 |  **8** | 🥉        |
| b002 | Monitor Rejestru Aptek               |       3 |      2 |         2 |          1 |      8 | 4         |
| c002 | Uniwersalny konwerter faktur         |       1 |      3 |         4 |          3 |     11 | 5         |
| d001 | Repozytorium faktur z email          |       2 |      3 |         4 |          3 |     12 | 6         |
| d003 | Naprawa bazy Rewizor GT              |       4 |      4 |         3 |          2 |     13 | 7         |
| f001 | System daytrading Forex              |       1 |      5 |         5 |          4 |     15 | 8         |

> **Usunięte z rankingu (przeniesione do _lab, _jarvis lub skasowane):**
> - ~~t001~~ Monitor zasobów Claude.ai — **SKASOWANY** (16.01.2026)
> - ~~b003~~ Porównywarka ofert farmaceutycznych — **→ _lab** (`workspace/pharma-offer-compare/`)
> - ~~b004~~ Monitor baz patentowych — **→ _lab** (`workspace/patent-monitor/`)
> - ~~d002~~ System zarządzania video — **→ _lab** (`workspace/video-manager/`)
> - ~~e001~~ Własny Asystent AI — **→ _jarvis** (zainicjowany jako pełny projekt)
> - ~~s001~~ Aplikacja subskrypcyjna (grafiki) — **→ _lab** (`workspace/ai-image-subscription/`)

---

## PROJEKTY OPERACYJNE - SZCZEGÓŁY

### a001-fakturownia-batch

| Metryka        | Wartość                                                                                 |
|----------------|-----------------------------------------------------------------------------------------|
| **Kod**        | a001                                                                                    |
| **Kategoria**  | Automation                                                                              |
| **Status**     | Planowany                                                                               |
| **Priorytet**  | 🥇 1                                                                                    |
| **GitHub**     | [a001-fakturownia-batch](https://github.com/SlawomirPost/a001-fakturownia-batch)        |
| **CONCEPT**    | [CONCEPT_a001-fakturownia-batch.md](_meta/CONCEPT/CONCEPT_a001-fakturownia-batch.md)    |

Seryjne wystawianie faktur przez API Fakturownia na podstawie danych z Excel/Google Sheets.
- Dodatkowe pomysły: pobieranie listy faktur wzorcowych z Fakturownia (np. z okresu, wg. serii)

---

### b001-pc-status-monitor

| Metryka        | Wartość                                                                                 |
|----------------|-----------------------------------------------------------------------------------------|
| **Kod**        | b001                                                                                    |
| **Kategoria**  | Business Intelligence                                                                   |
| **Status**     | Planowany                                                                               |
| **Priorytet**  | 🥈 2                                                                                    |
| **GitHub**     | [b001-pc-status-monitor](https://github.com/SlawomirPost/b001-pc-status-monitor)        |
| **CONCEPT**    | [CONCEPT_b001-pc-status-monitor.md](_meta/CONCEPT/CONCEPT_b001-pc-status-monitor.md)    |

Wizualizacja stanu ON/OFF komputerów u Klientów.
- Przy każdym włączeniu/wyłączeniu wg harmonogramu wysyłany jest email
- Budowa wizualizacji stanu każdego z komputerów

---

### b002-pharmacy-registry-monitor

| Metryka        | Wartość                                                                                             |
|----------------|-----------------------------------------------------------------------------------------------------|
| **Kod**        | b002                                                                                                |
| **Kategoria**  | Business Intelligence                                                                               |
| **Status**     | **W TRAKCIE** (CONCEPT zakończony, przed PLAN)                                                      |
| **Priorytet**  | 4                                                                                                   |
| **GitHub**     | [b002-pharmacy-registry-monitor](https://github.com/SlawomirPost/b002-pharmacy-registry-monitor)    |
| **CONCEPT**    | [CONCEPT_b002-pharmacy-registry-monitor.md](_meta/CONCEPT/CONCEPT_b002-pharmacy-registry-monitor.md)|

Monitorowanie zmian w Rejestrze Medycznym Aptek.
- Wykrywanie otwieranych/zawieszanych/zamykanych aptek w Polsce
- Wychwytywanie regionów, gdzie zwolniło się miejsce na nową aptekę (ustawa geograficzna)
- Źródło: Rządowe Rejestry Medyczne (XML)

**Checkpoint 13.01.2026:** Projekt zainicjowany. Repozytorium utworzone, dokumentacja CONCEPT zakończona, struktura katalogów gotowa. Przed fazą PLAN wymaga: uzupełnienia wersji narzędzi, utworzenia workspace Airtable i folderu Google Drive.

---

### b003-pharma-offer-compare

| Metryka        | Wartość                                                                                 |
|----------------|-----------------------------------------------------------------------------------------|
| **Kod**        | b003                                                                                    |
| **Kategoria**  | Business Intelligence                                                                   |
| **Status**     | Planowany                                                                               |
| **Priorytet**  | 5                                                                                       |
| **GitHub**     | [b003-pharma-offer-compare](https://github.com/SlawomirPost/b003-pharma-offer-compare)  |
| **CONCEPT**    | [CONCEPT_b003-pharma-offer-compare.md](_meta/CONCEPT/CONCEPT_b003-pharma-offer-compare.md)|

Porównywarka OFERT na rynku Farmaceutycznym.
- Pliki z ofertami: Excel, PDF, Word, Google Sheet
- Źródło: załączniki email od przedstawicieli, linki do pobrania

---

### c001-mbank-mt940-converter

| Metryka        | Wartość                                                                                       |
|----------------|-----------------------------------------------------------------------------------------------|
| **Kod**        | c001                                                                                          |
| **Kategoria**  | Converters                                                                                    |
| **Status**     | Planowany                                                                                     |
| **Priorytet**  | 🥉 3                                                                                          |
| **GitHub**     | [c001-mbank-mt940-converter](https://github.com/SlawomirPost/c001-mbank-mt940-converter)      |
| **CONCEPT**    | [CONCEPT_c001-mbank-mt940-converter.md](_meta/CONCEPT/CONCEPT_c001-mbank-mt940-converter.md)  |

Konwerter PDF mBank do MT-940 dla systemów księgowych.
- Uzupełnienia, poprawki i rozwój skryptów Python

---

### c002-invoice-converter

| Metryka        | Wartość                                                                                 |
|----------------|-----------------------------------------------------------------------------------------|
| **Kod**        | c002                                                                                    |
| **Kategoria**  | Converters                                                                              |
| **Status**     | Planowany                                                                               |
| **Priorytet**  | 6                                                                                       |
| **GitHub**     | [c002-invoice-converter](https://github.com/SlawomirPost/c002-invoice-converter)        |
| **CONCEPT**    | [CONCEPT_c002-invoice-converter.md](_meta/CONCEPT/CONCEPT_c002-invoice-converter.md)    |

Uniwersalny konwerter formatów faktur.
- Źródła: email, katalog IN, upload, KSeF
- Formaty: PDF ↔ XML OSOZ-EDI, EPP (Insert EDI++), KSeF
- Mapowanie własnych SKU powiązanych z BLOZ

---

### d001-invoice-inbox

| Metryka        | Wartość                                                                         |
|----------------|---------------------------------------------------------------------------------|
| **Kod**        | d001                                                                            |
| **Kategoria**  | Data Management                                                                 |
| **Status**     | Planowany                                                                       |
| **Priorytet**  | 8                                                                               |
| **GitHub**     | [d001-invoice-inbox](https://github.com/SlawomirPost/d001-invoice-inbox)        |
| **CONCEPT**    | [CONCEPT_d001-invoice-inbox.md](_meta/CONCEPT/CONCEPT_d001-invoice-inbox.md)    |

Repozytorium faktur z email.
- Baza emaili z załącznikami + zapis na GDrive
- Przeglądanie skrzynki 5 lat wstecz + praca bieżąca
- Identyfikacja duplikatów, OCR kwot i pozycji
- Obsługa wielu firm/odbiorców

---

### d003-rewizor-db-repair

| Metryka        | Wartość                                                                                 |
|----------------|-----------------------------------------------------------------------------------------|
| **Kod**        | d003                                                                                    |
| **Kategoria**  | Data Management                                                                         |
| **Status**     | Planowany                                                                               |
| **Priorytet**  | 9                                                                                       |
| **GitHub**     | [d003-rewizor-db-repair](https://github.com/SlawomirPost/d003-rewizor-db-repair)        |
| **CONCEPT**    | [CONCEPT_d003-rewizor-db-repair.md](_meta/CONCEPT/CONCEPT_d003-rewizor-db-repair.md)    |

Naprawa bazy Rewizor GT po odzyskaniu z uszkodzonego dysku SSD.

---

### f001-forex-trading-assistant

| Metryka        | Wartość                                                                                             |
|----------------|-----------------------------------------------------------------------------------------------------|
| **Kod**        | f001                                                                                                |
| **Kategoria**  | Finance & Trading                                                                                   |
| **Status**     | Planowany                                                                                           |
| **Priorytet**  | 11                                                                                                  |
| **GitHub**     | [f001-forex-trading-assistant](https://github.com/SlawomirPost/f001-forex-trading-assistant)        |
| **CONCEPT**    | [CONCEPT_f001-forex-trading-assistant.md](_meta/CONCEPT/CONCEPT_f001-forex-trading-assistant.md)    |

System wspomagający daytrading Forex.
- Rekomendacje, analiza, prowadzenie pozycji, LLM
- Instrumenty: XAUUSD, DJ, GBPUSD, EURUSD, SP500, DAX, USOIL
- Potencjalnie wysoki zwrot KPI czas/zysk

---

## ARCHIWUM

### Przeniesione do _lab

| Kod | Nazwa | Data | Lokalizacja |
|-----|-------|------|-------------|
| ~~b004~~ | patent-monitor | 16.01.2026 | `_lab/workspace/patent-monitor/` |
| ~~d002~~ | video-manager | 16.01.2026 | `_lab/workspace/video-manager/` |
| ~~s001~~ | ai-image-subscription | 16.01.2026 | `_lab/workspace/ai-image-subscription/` |

### Skasowane

| Kod | Nazwa | Data | Powód |
|-----|-------|------|-------|
| ~~t001~~ | claude-usage-monitor | 16.01.2026 | Niska wartość, niepotrzebny |

---

## HISTORIA ZMIAN

| Data       | Opis                                                                           |
|------------|--------------------------------------------------------------------------------|
| 17.01.2026 | Migracja do _jarvis/docs/central/, wydzielenie RESOURCES.md                    |
| 16.01.2026 | Dodanie projektu _jarvis (przeniesiony z e001/personal-ai-assistant)           |
| 16.01.2026 | Przeniesienie d002, e001, s001 do _lab (inkubacja)                             |
| 16.01.2026 | Skasowanie t001, przeniesienie b004 do _lab (inkubacja)                        |
| 15.01.2026 | Dodanie projektu _lab (laboratorium pomysłów)                                  |
| 13.01.2026 | Checkpoint b002: projekt zainicjowany, CONCEPT zakończony                      |
| 13.01.2026 | Wyrównanie formatowania tabel                                                  |
| 13.01.2026 | Zmiana nazewnictwa plików CONCEPT na format CONCEPT_kod-projektu.md            |
| 12.01.2026 | Zmiana prefiksów z wielkich na małe litery (A001 → a001)                       |
| 12.01.2026 | Reorganizacja nazewnictwa projektów (prefiksy x###), dodanie mapy kategorii    |
| 10.01.2026 | Wersja początkowa                                                              |

---

> **Koniec PORTFOLIO.md**
