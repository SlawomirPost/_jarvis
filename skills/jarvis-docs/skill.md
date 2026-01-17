# Skill: jarvis-docs

> **Nazwa:** jarvis-docs
> **Opis:** Asystent dokumentowy — OCR, tłumaczenia, streszczenia, analiza
> **Źródło:** Przejęty z projektu _doc-assistant (17.01.2026)

---

## Kiedy używać

Aktywuj ten skill gdy użytkownik:
- Prosi o OCR ("rozpoznaj tekst", "OCR", "odczytaj ze zdjęcia")
- Prosi o tłumaczenie ("przetłumacz", "tłumaczenie", "translate")
- Prosi o streszczenie ("streść", "podsumuj", "skróć")
- Prosi o analizę ("przeanalizuj", "wyciągnij dane", "co jest w dokumencie")
- Prosi o PDF ("zrób PDF", "eksportuj do PDF", "ładny dokument")
- Wgrywa plik do przetworzenia (PDF, DOCX, obrazek, MD)

---

## Lokalizacja zasobów

### Centralne foldery (ogólne operacje)

| Folder | Ścieżka | Opis |
|--------|---------|------|
| **IN** | `C:\WORK\projects\_jarvis\IN\` | Pliki do przetworzenia |
| **OUT** | `C:\WORK\projects\_jarvis\OUT\YYYY-MM\` | Gotowe wyniki |
| **TEMP** | `C:\WORK\projects\_jarvis\TEMP\` | Pliki tymczasowe (nie commitowane) |

### Zasoby modułu docs

| Zasób | Ścieżka |
|-------|---------|
| **Szablony promptów** | `modules\docs\templates\` |
| **Archiwum OCR** | `modules\docs\archive\` |

### Dostępne szablony

| Szablon | Plik | Zastosowanie |
|---------|------|--------------|
| OCR | `PROMPT_OCR.md` | Rozpoznawanie tekstu ze zdjęć, skanów, PDF |
| Tłumaczenie | `PROMPT_TLUMACZENIE.md` | Tłumaczenie dokumentów |
| Streszczenie | `PROMPT_STRESZCZENIE.md` | Skracanie tekstów |
| Analiza | `PROMPT_ANALIZA.md` | Wyciąganie danych, porównania |

---

## Obsługiwane formaty

**Wejście:**
- Obrazy: JPG, PNG, GIF, WebP
- Dokumenty: PDF, DOCX, TXT, MD
- Arkusze: XLSX, CSV

**Wyjście:**
- Markdown (.md) — domyślny format
- Word (.docx) — na życzenie użytkownika (wymaga pandoc)
- PDF (.pdf) — na życzenie (wymaga pandoc + Typst)

---

## Instrukcje obsługi

### 1. OCR (rozpoznawanie tekstu)

Gdy użytkownik wgrywa zdjęcie/skan i prosi o OCR:

1. Odczytaj obraz/PDF
2. Rozpoznaj tekst zachowując strukturę (nagłówki, akapity, listy)
3. Oznacz fragmenty nieczytelne jako `[nieczytelne]`
4. Zapisz wynik w `OUT/YYYY-MM/` z nazwą: `YYYY-MM-DD_ocr_[opis].md`
5. Format wyniku:
   ```markdown
   # OCR: [nazwa dokumentu]

   > Data: DD.MM.YYYY
   > Jakość: dobra/średnia/słaba
   > Język: polski/angielski/...

   ---

   [rozpoznany tekst]

   ---

   ## Uwagi
   - [jeśli są problemy z odczytem]
   ```

### 2. Tłumaczenie

Gdy użytkownik prosi o tłumaczenie:

1. Zidentyfikuj język źródłowy
2. Ustal język docelowy (domyślnie: polski)
3. Przetłumacz zachowując formatowanie
4. Zapisz w `OUT/YYYY-MM/` jako `YYYY-MM-DD_tlumaczenie_[opis].md`
5. Format:
   ```markdown
   # Tłumaczenie: [tytuł]

   > Język źródłowy: [X]
   > Język docelowy: [Y]
   > Data: DD.MM.YYYY

   ---

   [przetłumaczony tekst]

   ---

   ## Terminy specjalistyczne
   | Oryginał | Tłumaczenie | Uwagi |
   |----------|-------------|-------|
   ```

### 3. Streszczenie

Gdy użytkownik prosi o streszczenie:

1. Przeczytaj dokument
2. Wyciągnij kluczowe informacje
3. Stwórz streszczenie (domyślnie: 3-5 punktów)
4. Zapisz w `OUT/YYYY-MM/`
5. Format:
   ```markdown
   # Streszczenie: [tytuł]

   > Oryginał: [X stron/słów]
   > Data: DD.MM.YYYY

   ---

   ## Kluczowe punkty

   1. [punkt 1]
   2. [punkt 2]
   ...

   ## Pominięte informacje
   - [co zostało pominięte i dlaczego]
   ```

### 4. Analiza dokumentu

Gdy użytkownik prosi o analizę lub wyciągnięcie danych:

1. Zidentyfikuj typ dokumentu (umowa, faktura, raport...)
2. Wyciągnij kluczowe dane do tabeli
3. Odpowiedz na pytania użytkownika
4. Opcjonalnie: zapisz analizę w `OUT/YYYY-MM/`

### 5. Generowanie dokumentu Word

Gdy użytkownik prosi o dokument Word lub konwersję MD → DOCX:

1. Najpierw stwórz/zapisz wersję Markdown
2. Konwertuj do Word używając pandoc z szablonem referencyjnym:
   ```bash
   pandoc input.md --reference-doc="C:\WORK\projects\_jarvis\modules\docs\templates\reference.docx" -o output.docx
   ```
3. Zapisz w `OUT/YYYY-MM/`
4. Jeśli pandoc niedostępny — poinformuj użytkownika i zostaw MD

**Szablon reference.docx** zawiera ustawienia zgodne ze STYLE_GUIDE.md:
- Format: A4
- Marginesy: 2 cm (wszystkie)
- Czcionka: Calibri 11pt
- Język: Polski

**Lokalizacja wyników:**
- Dokumenty ogólne: `OUT/YYYY-MM/`
- Dokumenty konsultacji: `modules/consultations/YYYY-MM/[konsultacja]/workspace/`

### 6. Generowanie PDF (Typst)

Gdy użytkownik prosi o PDF lub konwersję MD → PDF:

**Pipeline:**
```
MD → [Pandoc] → Typst → [Typst compiler] → PDF
```

**Kroki:**

1. **Przygotuj źródło MD** — upewnij się że masz czysty Markdown
2. **Konwertuj MD do Typst** za pomocą Pandoc:
   ```bash
   pandoc input.md -o content.typ
   ```
3. **Przygotuj main.typ** w TEMP/:
   ```typst
   #import "C:/WORK/projects/_jarvis/modules/docs/templates/jarvis-pdf.typ": jarvis-doc

   #show: jarvis-doc.with(
     title: "Tytuł dokumentu",
     author: "Jarvis",
     show-toc: false,
   )

   // Treść z pandoc:
   [wklej zawartość content.typ]
   ```
4. **Skompiluj PDF**:
   ```bash
   typst compile main.typ output.pdf
   ```
5. **Przenieś do OUT/YYYY-MM/**

**Szybka ścieżka (bez strony tytułowej):**
```bash
# Bezpośrednia konwersja MD → PDF (prosty dokument)
pandoc input.md -o "C:/WORK/projects/_jarvis/TEMP/content.typ"
typst compile "C:/WORK/projects/_jarvis/TEMP/content.typ" output.pdf
```

**Z szablonem Jarvis (profesjonalny dokument):**
```bash
# 1. Stwórz plik .typ z importem szablonu
# 2. Kompiluj z flagą --root:
typst compile --root "C:/WORK/projects/_jarvis" input.typ output.pdf
```

**Ścieżka do Typst (po instalacji winget):**
```
C:/Users/slawe/AppData/Local/Microsoft/WinGet/Packages/Typst.Typst_Microsoft.Winget.Source_8wekyb3d8bbwe/typst-x86_64-pc-windows-msvc/typst.exe
```

**Szablon Typst:** `modules/docs/templates/jarvis-pdf.typ`
- Format: A4, marginesy 2cm
- Czcionka: Calibri 11pt (fallback: Arial)
- Nagłówki numerowane
- Profesjonalne tabele i bloki kodu
- Opcjonalny spis treści

**Funkcje pomocnicze w szablonie:**
- `#warning(body)` — żółte pole ostrzeżenia
- `#info(body)` — niebieskie pole informacyjne
- `#success(body)` — zielone pole sukcesu
- `#highlight-box(title, body, color)` — kolorowe pole z tytułem

**Lokalizacja wyników:** `OUT/YYYY-MM/`

---

## Konwencja nazewnictwa plików

```
YYYY-MM-DD_[typ]_[opis].md

Przykłady:
2026-01-17_ocr_faktura-orange.md
2026-01-17_tlumaczenie_umowa-najem.md
2026-01-17_streszczenie_raport-kwartalny.md
2026-01-17_analiza_porownanie-ofert.md
```

---

## Ważne zasady

1. **Język polski** — wszystkie wyniki po polsku (chyba że użytkownik prosi inaczej)
2. **Oznaczaj niepewność** — `[nieczytelne]`, `[prawdopodobnie: X]`
3. **Zachowuj strukturę** — nagłówki, listy, tabele z oryginału
4. **Nie zgaduj** — jeśli coś jest nieczytelne, oznacz to
5. **Potwierdzaj krótko** — "OCR zapisany w OUT/YYYY-MM/"

---

## Prywatność

- **Nie zapisuj** danych wrażliwych (PESEL, hasła, numery kart)
- **Pytaj** przed zapisem dokumentów z danymi osobowymi
- Pliki wejściowe użytkownika nie są commitowane do repo

---

## Przykłady użycia

**Użytkownik:** *wgrywa zdjęcie faktury* "OCR i wyciągnij dane"
**Claude:** *Rozpoznaje tekst, wyciąga dane do tabeli*
"OCR zapisany w OUT/YYYY-MM/2026-01-17_ocr_faktura.md
Wyciągnięte dane:
| Pole | Wartość |
|------|---------|
| Numer | FV/2026/001 |
| Data | 15.01.2026 |
| Kwota | 1230,00 PLN |"

**Użytkownik:** "przetłumacz ten dokument na angielski"
**Claude:** *Tłumaczy i zapisuje*
"Tłumaczenie zapisane w OUT/YYYY-MM/2026-01-17_tlumaczenie_umowa.md"

---

> **Koniec skill.md**
