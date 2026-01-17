# TODO.md — Centralna lista zadań

> **Lokalizacja:** `C:\WORK\projects\_jarvis\docs\`
> **Tagowanie:** Każde zadanie ma tag `@projekt` określający kontekst
> **Ostatnia aktualizacja:** 17.01.2026

---

## Priorytety

| Symbol | Znaczenie |
|--------|-----------|
| 🔴 | Ważne - zrobić w najbliższym czasie |
| 🟡 | Średnie - gdy będzie okazja |
| 🟢 | Niskie - kiedyś, może |
| ⏸️ | Wstrzymane - czeka na coś |

---

## @_jarvis

### Aktywne

- [ ] 🔴 MCP jarvis-notes (Faza 1 MVP)
- [ ] 🔴 MCP jarvis-todo (Faza 1 MVP)
- [ ] 🟡 Testowanie z Claude Code
- [ ] 🟡 Dokumentacja użycia

### Baza wiedzy (ZETTELKASTEN)

- [ ] 🔴 **MCP/Skill jarvis-zettel** — automatyczne tworzenie zettels (17.01.2026)
  - `/zettel-save "tytuł" --confidence X --source URL --tags "..."`
  - Auto-generowanie ID (YYYYMM-NNN)
  - Aktualizacja KNOWLEDGE_GRAPH.md
  - Aktualizacja _INDEX.md
  - Git commit

- [ ] 🟡 **Utrzymanie ZETTELKASTEN** — weekly review (17.01.2026)
  - Przegląd confidence scores
  - Deprecjacja nieaktualnych zettels
  - Uzupełnianie powiązań

### Źródła wiedzy

- [ ] 🟡 **Architektura podłączania źródeł** — Faza 3 (17.01.2026)
  - Źródła zewnętrzne: docs, GitHub, tech blogs
  - Źródła budowane: zettelkasten, transkrypcje, digesty
  - System confidence scoring per źródło

- [ ] 🟡 **Proces budowy bazy transkrypcji YT** — Faza 3 (17.01.2026)
  - Pipeline: URL → yt-dlp → Claude → ZETTELKASTEN
  - Struktura: `docs/central/TRANSCRIPTS/` + `EXPERTS/`
  - Profilowanie ekspertów (bio, expertise, poglądy)
  - Wyciąganie kluczowych wniosków z timestamps
  - Confidence: 0.65 (auto-transkrypcja)

- [ ] 🟢 **Źródła do podłączenia** — lista priorytetowa
  - [ ] Dokumentacja Anthropic (platform.claude.com)
  - [ ] Dokumentacja n8n (docs.n8n.io)
  - [ ] MCP Protocol (modelcontextprotocol.io)
  - [ ] YouTube kanały: AI, automatyzacja, biznes

### Tryby dostępu (ścieżka opcjonalna)

- [ ] 🟢 **Profil DEMO-FAMILY** — pokazać Jarvisa rodzinie (17.01.2026)
  - Utworzyć `profiles/demo-family/CLAUDE.md`
  - Okrojony profil bez docs/central/
  - Instrukcje ochrony przed "sprytnym pytaniem"
  - Nakład: 1-2h
  - Trigger: gdy chcę pokazać Jarvisa córce/synowi

- [ ] 🟢 **Tryb LITE** — agentowy dla automatyzacji (17.01.2026)
  - Template system prompt dla Haiku/Sonnet
  - Integracja z n8n (workflow: trigger → Claude API)
  - Nakład: 4-6h
  - Trigger: gdy n8n gotowe + mam powtarzalne zadanie

### Meta-zarządzanie Jarvis

- [ ] 🟡 **Rejestr funkcjonalności w testach** — mechanizm nadzoru (17.01.2026)
  - Problem: wdrażamy rzeczy "na próbę" i zapominamy je zrewaluować
  - Przykłady: TRIGGERY → ZASOBY, Highlight Report, Exception Report
  - Rozwiązanie: sekcja w MEMORY.md lub osobny plik z tabelą:
    - Co wdrożono, kiedy, termin rewaluacji, status, wnioski
  - Cel: nie zapominać o mechanizmach które mogą nie działać

### Do przemyślenia

- [ ] 🟡 **MCP Miro — warto spróbować oficjalny** (17.01.2026)
  - Oficjalny Miro MCP Server: `claude mcp add --transport http miro https://mcp.miro.com`
  - Alternatywnie plugin: `/plugin marketplace add miroapp/miro-ai`
  - Możliwości: czytanie/tworzenie sticky notes, shapes, connectory, diagramy
  - Zastosowania: wizualizacja architektury, eksport TODO na tablicę, brainstorming
  - Uwaga: Enterprise Plan ma domyślnie wyłączony MCP (admin musi włączyć)

- [ ] 🟡 **MCP Google Drive — który wybrać?** (17.01.2026)
  - Oficjalny Anthropic zarchiwizowany → Google przejął z własnymi zdalnymi MCP
  - Oryginalny: tylko `search` + read-only, konwersja Docs→MD, Sheets→CSV
  - Alternatywy community z większymi możliwościami:
    - `isaacphi/mcp-gdrive` — + zapis do Sheets
    - `piotr-agier/google-drive-mcp` — + CRUD plików, Shared Drives
  - Pytanie: oficjalny Google MCP czy community?

### Zrobione

- [x] ✅ Struktura projektu (16.01.2026)
- [x] ✅ Zasady współpracy 1-12 (17.01.2026)
- [x] ✅ Centralizacja dokumentów (17.01.2026)

---

## @_meta

### Aktywne

- [ ] 🔴 **Uporządkować dokumentację CONCEPT** — obecnie rozproszona:
  - `_meta/CONCEPT/` — pełne koncepcje
  - `_lab/workspace/*/CONCEPT.md` — koncepcje w fazie rozkminek
  - projekty operacyjne — niektóre mają własne CONCEPT

- [ ] 🟡 **Dostęp CC do MSSQL** — jak podłączyć Claude Code do Microsoft SQL Server? (16.01.2026)
- [ ] 🔴 **MCP Browser do pobierania kursu** (17.01.2026)
  - Zainstalować MCP do przeglądarki (playwright-mcp lub @anthropics/mcp-browser)
  - Zalogować się ręcznie do platformy kursu
  - Opisać strukturę strony (linki, nawigacja)
  - Uruchomić automatyzację: nawigacja → kliknięcia → pobieranie plików
  - Cel: pobrać strukturę kursu + pliki z automatyzacjami/dokumentacją

- [ ] 🟡 **Zgłębić `claude --chrome`** — sterowanie przeglądarką (16.01.2026)
- [ ] 🟡 **Help desk** — jaki system używają duże firmy? (16.01.2026)

### MCP do przygotowania

- [ ] 🟡 **MCP do Google Drive** — dostęp do dysków (prywatny + firmowy)
- [ ] 🟡 **MCP do kont email** — dostęp do skrzynek pocztowych

### Zrobione

- [x] ✅ Jakie MCP/API/SKILL warto mieć? → GitHub MCP, Notion MCP (16.01.2026)
- [x] ✅ WordPress? → REST API możliwe, odpuszczamy (16.01.2026)
- [x] ✅ Rewizor GT? → Brak API, Firebird SQL lub custom MCP (16.01.2026)
- [x] ✅ n8n-mcp? → TypeScript + SQLite, JSON-RPC stdio (16.01.2026)
- [x] ✅ Sterowanie Gemini/ChatGPT? → `claude --chrome` (16.01.2026)
- [x] ✅ Mini-Jarvis! → Zainicjowany jako `_jarvis` (16.01.2026)

---

## @_lab

### Aktywne

- [ ] 🟢 ...

### Zrobione

- [x] ✅ Usunięcie lokalnych JOURNAL/NOTES/TODO na rzecz centralnych (17.01.2026)

---

## @b002-pharmacy

### Aktywne

- [ ] 🟡 Utworzyć workspace Airtable (workflow SETUP-002)
- [ ] 🟡 Utworzyć folder Google Drive _data_hub/pharmacy-registry/ (workflow SETUP-001)

---

## @f001-forex

### Aktywne

- [ ] 🟡 **Przetestować rekomendacje forex w Claude Code** — zrzuty z MT4 + prompt z ChatGPT (16.01.2026)

---

## @allegro (HorizonMarket_PL)

### Aktywne

- [ ] 🔴 **BaseLinker — integracja "Wysyłam z Allegro"**
  - Ustawienia odbioru paczek: magazyn Warszawa
  - Wyjątek dla etykiet ORLEN Paczka, Węgry — zamówienie z podjazdem kuriera

---

## @_tools-and-lab

### Aktywne

- [ ] 🟢 ...

### Zrobione

- [x] ✅ Usunięcie lokalnych TODO/NOTES/JOURNAL na rzecz centralnych (17.01.2026)

---

## @ogólne

### Problemy do rozwiązania

- [ ] 🟡 **Comet — skróty folderów resetują się** (17.01.2026)
  - Problem: po reorganizacji folderów/skrótów na pasku, po jakimś czasie niektóre zmiany wracają do poprzedniego stanu
  - Jakby przeglądarka nie zapisywała zmian lub nadpisywała je starszą konfiguracją
  - Do zbadania: gdzie Comet trzyma konfigurację paska, czy jest sync, cache

### Metodologia

- [ ] 🟡 Jak wdrożyć dobre praktyki do projektów? (skąd je brać, jak wdrażać)

---

## Wstrzymane

- [ ] ⏸️ ...

---

> **Koniec pliku TODO.md**
