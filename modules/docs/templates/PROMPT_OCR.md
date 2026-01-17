# Szablon: OCR (rozpoznawanie tekstu)

## Użycie

Wgraj zdjęcie lub skan i użyj jednego z poniższych poleceń:

---

## Polecenia

### Podstawowy OCR
```
Zrób OCR tego zdjęcia.
```

```
Rozpoznaj tekst z tego skanu.
```

### OCR z zachowaniem struktury
```
Zrób OCR i zachowaj oryginalną strukturę (akapity, listy, tabele).
```

### OCR faktury
```
Zrób OCR tej faktury i wyciągnij: numer, datę, sprzedawcę, nabywcę, kwotę.
```

### OCR tabeli
```
Rozpoznaj tabelę z tego zdjęcia i sformatuj jako tabelę Markdown.
```

### OCR z tłumaczeniem
```
Zrób OCR i od razu przetłumacz na polski.
```

### OCR wielostronicowy
```
Zrób OCR wszystkich stron tego PDF.
```

---

## Format odpowiedzi

```markdown
## OCR: [nazwa pliku]

**Jakość rozpoznania:** dobra / średnia / słaba
**Język dokumentu:** [wykryty]

---

[rozpoznany tekst z zachowaniem struktury]

---

**Uwagi:**
- [fragmenty nieczytelne oznaczone jako [nieczytelne]]
- [problemy z rozpoznaniem]
```

---

## Wskazówki dla lepszego OCR

1. **Dobre oświetlenie** - zdjęcie bez cieni
2. **Prosty kąt** - dokument sfotografowany prosto, nie pod kątem
3. **Ostrość** - tekst musi być wyraźny
4. **Kontrast** - ciemny tekst na jasnym tle
