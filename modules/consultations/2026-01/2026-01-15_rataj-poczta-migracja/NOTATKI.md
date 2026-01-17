# Konsultacja: RATAJ — Migracja poczty z Windows Live Mail

> **Data rozpoczęcia:** 15.01.2026
> **Klient:** Rataj Sp. z o.o.
> **Status:** 🟡 W trakcie

---

## Problem

Klient korzysta z **Windows Live Mail** (brak wsparcia Microsoft) na Windows 11 64-bit.

### Stan obecny:

| Aspekt                      | Wartość / Opis                                      |
|-----------------------------|-----------------------------------------------------|
| **Rozmiar poczty**          | Kilkadziesiąt GB                                    |
| **Struktura**               | Wiele folderów (Klient sortuje wiadomości)          |
| **Protokół**                | POP3 (przez większość czasu usuwanie po odebraniu)  |
| **Hosting**                 | CyberFolks (100 GB, wykorzystane ~22 GB)            |
| **Historia**                | Kilka awarii bazy na przestrzeni lat                |
| **Potencjalne uszkodzenia** | Możliwe pojedyncze uszkodzone wiadomości            |

### Problemy do rozwiązania:

1. **Brak synchronizacji folderów** — POP3 nie odzwierciedla struktury folderów na serwerze
2. **Duże załączniki** — niektóre wiadomości mogą przekraczać limity (>50 MB)
3. **Archaiczny program** — Windows Live Mail nie ma wsparcia
4. **Poufność danych** — poczta firmowa, wymaga ostrożności

---

## Formaty przechowywania — WAŻNE

| Program             | Format | Struktura                                   |
|---------------------|--------|---------------------------------------------|
| **Windows Live Mail** | EML  | Każdy email = osobny plik `.eml` ✅ bezpieczne |
| **Thunderbird**     | MBOX   | Wszystkie maile z folderu = jeden plik ⚠️   |

**Wniosek:** Obecny format EML jest bezpieczniejszy (uszkodzenie = 1 mail). Po imporcie do Thunderbirda zmieni się na MBOX. Warto zachować kopię oryginalnych plików EML.

**Lokalizacja plików Windows Live Mail:**
```
C:\Users\[Nazwa_użytkownika]\AppData\Local\Microsoft\Windows Live Mail
```

---

## Thunderbird — Ocena jako rozwiązanie długoterminowe

### Perspektywy rozwoju (✅ pozytywne):

| Aspekt              | Status                                               |
|---------------------|------------------------------------------------------|
| **Kto stoi za tym** | MZLA Technologies (spółka zależna Mozilla Foundation) |
| **Aktywność**       | Bardzo wysoka — miesięczne wydania od 2025           |
| **Roadmap 2026**    | Nowa baza danych, Exchange, odświeżony kalendarz     |
| **Mobile**          | Android (K-9 Mail), iOS w 2026                       |

### Ryzyka (⚠️ do zarządzania):

| Problem             | Opis                                                 |
|---------------------|------------------------------------------------------|
| **Format MBOX**     | Wszystkie maile z folderu = jeden duży plik          |
| **Korupcja**        | Uszkodzenie pliku = utrata całego folderu            |
| **Limit praktyczny** | ~4 GB na folder (większe = ryzyko problemów)        |

### Migracja na nowy komputer:

**Prosta** — kopiowanie folderu `%APPDATA%\Thunderbird` na nowy komputer.

### Rekomendacja:

Thunderbird + **warstwa bezpieczeństwa** (backup lub MailStore)

---

## MailStore — Analiza

### MailStore Home vs Server

| Aspekt              | MailStore Home (darmowy)   | MailStore Server (płatny)    |
|---------------------|----------------------------|------------------------------|
| **Archiwum**        | Tylko na danym komputerze  | Serwer w sieci lokalnej      |
| **Dostęp**          | Tylko z tego komputera     | Z dowolnego komputera (web)  |
| **Użytkownicy**     | 1 osoba                    | Wielu użytkowników           |
| **Interfejs webowy** | ❌ Brak                   | ✅ Tak                       |
| **Dla firmy**       | ❌ Tylko prywatnie         | ✅ Licencja komercyjna       |

### Ceny MailStore Server (5 użytkowników):

| Rok          | Koszt EUR | Koszt PLN (ok.) | Co zawiera                    |
|--------------|-----------|-----------------|-------------------------------|
| **1. rok**   | €295      | ~1270 zł        | Licencja + wsparcie + update  |
| **Kolejne**  | €85/rok   | ~365 zł/rok     | Odnowienie wsparcia           |

### Jak działa MailStore:

1. Instalacja na komputerze/serwerze
2. Tworzenie profilu archiwizacji (wskazanie źródła: WLM, EML, IMAP...)
3. Import maili z zachowaniem struktury folderów
4. Szybkie wyszukiwanie (nawet w załącznikach)
5. Możliwość eksportu z powrotem do EML

---

## Podsumowanie Opcji

| Rozwiązanie                  | Koszt rok 1 | Koszt kolejne | Dostęp sieciowy |
|------------------------------|-------------|---------------|-----------------|
| Thunderbird + backup na dysk | 0 zł        | 0 zł          | ❌              |
| MailStore Server (5 user)    | ~1270 zł    | ~365 zł/rok   | ✅ Web          |
| Pliki EML na NAS/serwerze    | 0 zł*       | 0 zł          | ✅ Folder       |

*zakładając, że NAS/serwer już jest

---

## Pytania do Klienta (otwarte)

1. **Priorytet:** Czy ważniejszy jest dostęp do starej poczty z wielu urządzeń?
2. **Miejsce na serwerze:** Czy 100 GB hostingu wystarczy?
3. **Wielkość największych wiadomości:** Czy były wysyłane pliki >50 MB?
4. **Ile folderów:** Orientacyjna liczba folderów w WLM?
5. **Przyszłość:** Czy planowane jest przejście na innego klienta pocztowego?

---

## Plan Działania (do ustalenia)

```
[ ] 1. Pełny backup Windows Live Mail (cały katalog)
[ ] 2. Sprawdzenie rozmiaru i struktury folderów
[ ] 3. Identyfikacja zbyt dużych wiadomości
[ ] 4. Wybór strategii
[ ] 5. Test na małej próbce
[ ] 6. Pełna migracja/archiwizacja
[ ] 7. Weryfikacja integralności
[ ] 8. Konfiguracja docelowego rozwiązania
```

---

## Aspekty Poufności

⚠️ **WAŻNE:**
- Poczta firmowa — nie używać publicznych konwerterów online
- Preferowane przetwarzanie lokalne
- Nie uploadować do chmur testowych (Gmail itp.) bez zgody
- Backup przechowywać bezpiecznie

---

## Log Sesji

### 15.01.2026 (sesja 1)

- Rozpoczęcie konsultacji
- Wstępny research: Windows Live Mail → IMAP migracja
- Zidentyfikowano 3 główne opcje (archiwum lokalne / IMAP / hybrydowa)
- Wyjaśnienie różnicy formatów: EML (WLM) vs MBOX (Thunderbird)
- Analiza Thunderbirda jako rozwiązania długoterminowego — pozytywna ocena rozwoju
- Omówienie MailStore Home vs Server
- Ustalono ceny MailStore Server: €295 pierwszy rok, €85/rok kolejne

### 15.01.2026 (sesja 2) ← kontynuacja

- Doprecyzowanie rozmiaru poczty: **40-70 GB**
- Dodano wariant 3: **IMAP CyberFolks** (wgranie na serwer hostingowy)
- Dodano wariant 4: **Gmail z etykietami** (chmura Google, ~108 zł/rok)
- Dodano sekcję "Znane ryzyka migracji" (uszkodzone/duże wiadomości)
- Utworzono dokumenty:
  - `workspace/PROPOZYCJA_DLA_KLIENTA.md` + `.docx` — pełna propozycja 4 wariantów
  - `workspace/REKOMENDACJA.md` + `.docx` — krótka rekomendacja
- **Rekomendacja:** Gmail (jeśli chmura OK) lub MailStore Server (jeśli dane muszą zostać lokalnie)
- **PRZERWA** — czeka na decyzję Klienta

---

## Wygenerowane dokumenty

| Plik                           | Opis                              |
|--------------------------------|-----------------------------------|
| `PROPOZYCJA_DLA_KLIENTA.md/docx` | Pełna propozycja z 4 wariantami |
| `REKOMENDACJA.md/docx`         | Krótka rekomendacja              |

---

*Ostatnia aktualizacja: 15.01.2026*
