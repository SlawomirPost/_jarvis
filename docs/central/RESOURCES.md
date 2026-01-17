# RESOURCES.md — Inwentarz Zasobów

> **Cel:** Centralny przegląd zasobów dostępnych do realizacji projektów
> **Aktualizacja:** Przy zmianie infrastruktury, subskrypcji, narzędzi
> **Lokalizacja centralna:** `_jarvis/docs/central/`

---

## 🖥️ Infrastruktura

| Zasób | Lokalizacja | Status | Wersja | Uwagi |
|-------|-------------|--------|--------|-------|
| n8n | Hostinger VPS | ✅ Aktywny | 2.1.5 | Automatyzacje workflow |
| PostgreSQL | Hostinger | ✅ Aktywny | - | Backend dla n8n |
| GitHub | Cloud | ✅ Aktywny | - | 19 repo |
| Hosting LH.pl | Cloud | ✅ Aktywny | - | Strony www |

### VPS Contabo

| VPS | Lokalizacja | Status | Platforma | Uwagi |
|-----|-------------|--------|-----------|-------|
| VPS #1 | Hub EU | ⏳ Nowy | nowsza | Bez konfiguracji, czeka na setup |
| VPS #2 | Hub EU | ⏳ Nowy | nowsza | Bez konfiguracji, czeka na setup |
| VPS #3 | Hub EU | ⚠️ Stary | starsza | Do migracji lub rezygnacji (17.01) |
| VPS #4 | Indie | ⚠️ Stary | starsza | Do migracji lub rezygnacji (17.01) |
| VPS #5 | Australia | ⚠️ Stary | starsza | Kandydat do rezygnacji (latency) |

**ISO w storage Contabo:** Windows 10 (używane do instalacji)

**Termin odnowienia starych VPS:** ~19.01.2026 (2 dni od 17.01)

---

## 🤖 AI i LLM

| Narzędzie | Plan | Status | Uwagi |
|-----------|------|--------|-------|
| Claude.ai | MAX | ✅ Aktywny | Główne narzędzie pracy |
| OpenAI ChatGPT | Team | ✅ Aktywny | GPT-4o, API |
| Perplexity | Pro | ✅ Aktywny | Research |
| Gemini | Pro | ✅ Aktywny | Google Cloud |

---

## 🔧 Narzędzia lokalne

| Narzędzie | Wersja | Projekty używające | Uwagi |
|-----------|--------|-------------------|-------|
| Python | 3.11+ | a001, c001, b002 | Pandas, openpyxl |
| Node.js | 20.x LTS | _jarvis | MCP SDK |
| VS Code | latest | wszystkie | IDE |
| Claude Code | latest | wszystkie | CLI asystent |
| Git | latest | wszystkie | Wersjonowanie |
| pandoc | latest | _meta | MD → DOCX/PDF |

---

## 📊 Produktywność i Automatyzacja

| Narzędzie | Plan | Status | Uwagi |
|-----------|------|--------|-------|
| Notion | - | ✅ Aktywny | Notatki |
| Miro | - | ✅ Aktywny | Diagramy |
| ClickUp | Business | ✅ Aktywny | Zarządzanie projektami |
| AirTable | - | ✅ Aktywny | Bazy danych |
| Baselinker | - | ✅ Aktywny | E-commerce |

---

## 📁 Office i Dokumenty

| Narzędzie | Plan | Status | Uwagi |
|-----------|------|--------|-------|
| Microsoft 365 | - | ✅ Aktywny | Office |
| Google Workspace | ERA2000 | ✅ Aktywny | Gmail, Drive, Sheets |
| Canva | - | ✅ Aktywny | Grafika |

---

## 💰 Finanse

| Narzędzie | Plan | Status | Uwagi |
|-----------|------|--------|-------|
| Fakturownia | Pro (wielofirma + API) | ✅ Aktywny | Faktury |

---

## 📈 Trading

| Platforma | Typ | Status | Uwagi |
|-----------|-----|--------|-------|
| FXPrimus | MT4 | ✅ Aktywny | Forex |
| IC Markets | MT4/MT5 | ✅ Aktywny | Forex |
| investing.com | Web | ✅ Aktywny | Analiza |
| tradingview.com | Web | ✅ Aktywny | Wykresy |
| myfxbook.com | Web | ✅ Aktywny | Tracking |

---

## 🛒 E-commerce

| Platforma | Status | Uwagi |
|-----------|--------|-------|
| Allegro (HorizonMarket_PL) | ✅ Aktywny | Sprzedaż |
| Aftermarket.pl | ✅ Aktywny | ~40 domen |

---

## 🔑 Credentials (lista — bez wartości!)

> **UWAGA:** Ten plik zawiera TYLKO nazwy. Wartości przechowywane bezpiecznie w n8n Credentials lub .env

| Typ | Nazwa | Używane w | Uwagi |
|-----|-------|-----------|-------|
| API Key | ANTHROPIC_API_KEY | _jarvis | Claude API |
| OAuth | GOOGLE_OAUTH | b001, b002, d001 | Google APIs |
| API Key | FAKTUROWNIA_API | a001 | Fakturownia |
| API Key | OPENAI_API_KEY | prompty | ChatGPT |
| API Key | AIRTABLE_API | b002 | Airtable |

---

## 📚 Zasoby Danych

| Zasób | Lokalizacja | Rozmiar | Uwagi |
|-------|-------------|---------|-------|
| OneNote | Cloud | ~20 lat notatek | Historia |
| Google Photos | Cloud | kilkadziesiąt tys. zdjęć | Zdjęcia |
| Google Drive | Cloud | 3TB+ | Filmy, ebooki, kursy |
| YouTube | Cloud | - | Materiały wideo |
| Loom | Cloud | - | Nagrania z wykładów |
| Księgozbiór | Fizyczny | - | Książki |

---

## 🎬 Streaming

| Usługa | Status |
|--------|--------|
| Netflix | ✅ Aktywny |
| Disney+ | ✅ Aktywny |
| HBO Go | ✅ Aktywny |
| Prime Video | ✅ Aktywny |

---

## 🔒 Bezpieczeństwo i Inne

| Usługa | Status | Uwagi |
|--------|--------|-------|
| NordVPN | ✅ Aktywny | VPN |
| ENEL-MED | ✅ Aktywny | Pakiet medyczny (SII) |
| Financial Times | ✅ Aktywny | Revolut Ultra |
| AION | ✅ Aktywny | AI Journaling |

---

## Historia zmian

| Data | Opis |
|------|------|
| 17.01.2026 | Utworzenie dokumentu (wydzielone z PORTFOLIO.md) |

---

> **Koniec RESOURCES.md**
