# Skill: jarvis-troubleshoot

> **Nazwa:** jarvis-troubleshoot
> **Opis:** Baza rozwiązań problemów IT, konsultacje, knowledge-base
> **Źródło:** Przejęty z projektu _tools-and-lab (17.01.2026)

---

## Kiedy używać

Aktywuj ten skill gdy użytkownik:
- Ma problem techniczny ("nie działa", "błąd", "problem z")
- Prosi o troubleshooting ("troubleshoot", "debug", "diagnoza")
- Pracuje z klientem IT ("konsultacja", "klient zgłosił")
- Szuka rozwiązania ("jak naprawić", "fix for")
- Wspomina kategorie: Windows, WordPress, n8n, hosting, Linux, networking, databases

---

## Lokalizacja zasobów

| Zasób | Ścieżka |
|-------|---------|
| **Konsultacje IT** | `C:\WORK\projects\_jarvis\modules\consultations\` |
| **Rejestr konsultacji** | `modules\consultations\CONSULTATION_REGISTRY.md` |
| **Knowledge-base** | `modules\consultations\knowledge-base\` |
| **Troubleshooting** | `C:\WORK\projects\_jarvis\modules\troubleshooting\` |
| **Szablony** | `modules\troubleshooting\templates\` |

---

## Kategorie troubleshooting

| Kategoria | Folder | Tematy |
|-----------|--------|--------|
| Windows | `troubleshooting/windows/` | BSOD, sterowniki, uprawnienia, rejestr |
| WordPress | `troubleshooting/wordpress/` | Wtyczki, motywy, bazy danych, SSL |
| n8n | `troubleshooting/n8n/` | Workflow, credentials, node'y |
| Hosting | `troubleshooting/hosting/` | cPanel, DNS, SSL, FTP, email |
| Linux | `troubleshooting/linux/` | Uprawnienia, procesy, cron |
| Networking | `troubleshooting/networking/` | DNS, firewall, VPN, proxy |
| Databases | `troubleshooting/databases/` | MySQL, PostgreSQL, backup |
| Other | `troubleshooting/other/` | Wszystko inne |

---

## Instrukcje obsługi

### 1. Szukanie rozwiązania problemu

Gdy użytkownik zgłasza problem:

1. Zidentyfikuj kategorię (Windows/WordPress/n8n/...)
2. Przeszukaj `modules/troubleshooting/[kategoria]/`
3. Przeszukaj `modules/consultations/knowledge-base/`
4. Jeśli znaleziono — podaj rozwiązanie
5. Jeśli nie — zaproponuj diagnozę i dokumentację

### 2. Dokumentowanie nowego problemu

Gdy problem jest:
- Nowy (nie ma w bazie)
- Zajął >15 minut
- Może się powtórzyć
- Miał nietypowe rozwiązanie

Utwórz plik w odpowiedniej kategorii:

```markdown
# [Tytuł problemu]

## Symptomy
- Co użytkownik widzi/zgłasza

## Przyczyna
- Dlaczego to się dzieje

## Rozwiązanie
1. Krok 1
2. Krok 2
...

## Notatki
- Dodatkowe informacje

## Źródło
- Data: DD.MM.YYYY
- Konsultacja: [link do konsultacji jeśli dotyczy]
```

### 3. Zarządzanie konsultacjami IT

#### Tworzenie nowej konsultacji

1. Utwórz folder: `modules/consultations/YYYY-MM/YYYY-MM-DD_[klient]-[temat]/`
2. Utwórz plik `NOTATKI.md`
3. Dodaj wpis do `CONSULTATION_REGISTRY.md`

#### Struktura konsultacji

```
YYYY-MM-DD_[klient]-[temat]/
├── NOTATKI.md          # Główne notatki
├── files/              # Pliki od klienta
├── screenshots/        # Zrzuty ekranu
└── workspace/          # Pliki robocze, raporty
```

#### Statusy konsultacji

| Status | Emoji | Opis |
|--------|-------|------|
| W trakcie | 🟡 | Otwarta, wymaga pracy |
| Rozwiązane | 🟢 | Zamknięta, sukces |
| Nierozwiązane | 🔴 | Zamknięta, brak rozwiązania |

### 4. Knowledge-base

Gdy znajdziesz wartościową wiedzę podczas konsultacji:

1. Utwórz plik w `modules/consultations/knowledge-base/[produkt]/`
2. Format nazwy: `[problem-krotko].md`
3. Dodaj tag produktu i datę

---

## Workflow troubleshooting

```
1. Użytkownik zgłasza problem
   ↓
2. Szukam w bazie (troubleshooting + knowledge-base)
   ↓
3a. Znaleziono → Podaję rozwiązanie
   ↓
3b. Nie znaleziono → Diagnozuję
   ↓
4. Rozwiązuję problem
   ↓
5. Dokumentuję (jeśli warte zapamiętania)
```

---

## Przykłady użycia

**Użytkownik:** "Mam problem z płatnościami odroczonymi w Subiekt Nexo"
**Claude:** *Szuka w knowledge-base/subiekt-nexo/*
"Znalazłem rozwiązanie: [podaje kroki z platnosci-odroczone-niedostepne.md]"

**Użytkownik:** "Klient zgłosił błąd WordPress po aktualizacji"
**Claude:** *Tworzy nową konsultację*
"Tworzę konsultację: modules/consultations/2026-01/2026-01-17_[klient]-wordpress-update/"

**Użytkownik:** "Jak rozwiązaliśmy ten problem z DNS?"
**Claude:** *Szuka w troubleshooting/networking/ i konsultacjach*
"Znalazłem w konsultacji z 15.01: [opis rozwiązania]"

---

## Ważne zasady

1. **Dokumentuj wartościowe rozwiązania** — jeśli zajęło >15 min, zapisz
2. **Kategoryzuj** — każdy problem w odpowiednim folderze
3. **Aktualizuj rejestr** — każda konsultacja w CONSULTATION_REGISTRY.md
4. **Szukaj przed tworzeniem** — może rozwiązanie już istnieje
5. **Knowledge-base** — wyciągaj perełki z konsultacji

---

> **Koniec skill.md**
