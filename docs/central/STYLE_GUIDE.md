# STYLE_GUIDE.md — Zasady formatowania dokumentów

> **Lokalizacja:** `C:\WORK\projects\_jarvis\docs\central\`
> **Dotyczy:** Wszystkie projekty użytkownika
> **Ostatnia aktualizacja:** 17.01.2026
> **Źródło:** Przeniesione z _meta-operating-system

---

## Markdown

### Tabele

```markdown
| Kolumna A | Kolumna B | Kolumna C |
|-----------|-----------|-----------|
| wartość 1 | wartość 2 | wartość 3 |
```

**Zasady:**
- Wyrównuj separatory `|` w pionie
- Używaj `---` minimalnej długości (3 znaki)
- Puste komórki: `—` lub `-`

### Nagłówki

- `#` — tytuł dokumentu (1 na plik)
- `##` — główne sekcje
- `###` — podsekcje
- Nie pomijaj poziomów (nie skacz z ## do ####)

### Listy

- Bullet points: `-` (nie `*`)
- Numerowane: `1.` `2.` `3.`
- Zagnieżdżone: 2 spacje wcięcia

---

## Word (.docx)

| Ustawienie       | Wartość           |
|------------------|-------------------|
| Format strony    | A4                |
| Marginesy        | 2 cm (wszystkie)  |
| Język sprawdzania| Polski            |
| Czcionka tekstu  | Calibri 11pt      |
| Czcionka nagłówków| Calibri Bold     |
| Interlinia       | 1.15              |

---

## Excel (.xlsx)

| Element          | Format            |
|------------------|-------------------|
| Daty             | RRRR-MM-DD        |
| Liczby           | 1 234,56 (pl-PL)  |
| Waluta           | 1 234,56 zł       |
| Nagłówki         | Pogrubione, tło   |

---

## Nazewnictwo plików

| Typ              | Format                        | Przykład                    |
|------------------|-------------------------------|-----------------------------|
| Dokumenty        | kebab-case                    | `raport-miesieczny.md`      |
| Koncepcje        | `CONCEPT_kod-projektu.md`     | `CONCEPT_a001-fakturownia.md`|
| Daty w nazwach   | `YYYY-MM-DD`                  | `2026-01-16-backup.sql`     |

---

## Kod i konfiguracja

| Element          | Styl              |
|------------------|-------------------|
| Zmienne          | camelCase         |
| Stałe            | UPPER_SNAKE_CASE  |
| Funkcje          | camelCase         |
| Pliki JS/TS      | kebab-case.ts     |
| Pliki Python     | snake_case.py     |

---

## HISTORIA ZMIAN

| Data | Wersja | Opis |
|------|--------|------|
| 17.01.2026 | 1.0 | Przeniesienie z _meta do _jarvis/docs/central |

---

> **Koniec STYLE_GUIDE.md**
