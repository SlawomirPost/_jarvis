# Subiekt Nexo: Płatności odroczone niedostępne na dokumencie

> Utworzono: 15.01.2026
> Źródło: Konsultacja RATAJ Łask

---

## Problem

Na dokumencie (np. faktura pro forma) sekcja "Płatności odroczone" jest nieaktywna / pokazuje komunikat:

> "Wybrany klient [nazwa] ma zabronione dodawanie płatności odroczonych."

---

## Rozwiązanie

Aby forma odroczonej płatności była dostępna na dokumencie, muszą być spełnione **3 warunki**:

| # | Warunek | Jak sprawdzić/naprawić |
|---|---------|------------------------|
| 1 | Klient musi być wybrany na dokumencie | Uzupełnić pole "Płatnik" / "Zamawiający" |
| 2 | Klient musi mieć status **Firma** | Kartoteka klienta → sprawdzić typ |
| 3 | Klient musi mieć włączony kredyt kupiecki | Kartoteka klienta → zakładka **Płatności** → zaznaczyć **"Zezwól na kredyt kupiecki"** |

---

## Ścieżka do ustawienia

```
Kartoteki → Klienci → [wybierz klienta] → Popraw → zakładka Płatności → "Zezwól na kredyt kupiecki"
```

---

## Kontekst

Częsty problem po migracji z Subiekt GT do Nexo — ustawienia kredytu kupieckiego mogą nie przenieść się automatycznie lub być domyślnie wyłączone.

---

## Powiązane

- Zbiorcza zmiana dla wielu klientów: `Kartoteki → Klienci → zaznacz klientów → górne menu → "Zmień ustawienia kredytu kupieckiego"`
- Domyślne ustawienia dla nowych klientów: `Konfiguracja → Szablony Klientów`
