# CONCEPT: _jarvis 2.0 (Centralny Asystent)

> **Data utworzenia:** 11.01.2026 (w _lab)
> **Data przeniesienia:** 16.01.2026
> **Rozszerzenie wizji:** 17.01.2026
> **Status:** Faza 1 (LITE/MVP) w realizacji
> **Alias:** mini-Jarvis → Jarvis 2.0
> **Roadmapa:** [docs/ROADMAP.md](ROADMAP.md)

---

## 1. PROBLEM

### Co chcemy rozwiązać?

Rozproszone interakcje z różnymi systemami i brak kontekstu między sesjami. Potrzeba spersonalizowanego asystenta, który:
- Zna mój kontekst biznesowy i osobisty
- Ma dostęp do moich danych (dokumenty, notatki, kalendarz)
- Integruje się z moimi narzędziami (n8n, Fakturownia, Gmail, GDrive)
- Zachowuje pamięć między rozmowami

### Palący problem (TODO z _meta)

> **"Claude wpisuje rzeczy w złe miejsca i trzeba mu przypominać"**

Przykłady:
- Notatki trafiają do złych plików
- TODO gubią się w konwersacji
- Brak spójności między sesjami

### Jaki ból eliminujemy?

- Powtarzanie kontekstu przy każdej sesji z AI
- Ręczne kopiowanie danych między systemami
- Brak automatyzacji powtarzalnych zadań
- Rozproszenie wiedzy między Notion, OneNote, GDrive

### Jak to robię dzisiaj?

- Osobne sesje z Claude.ai, ChatGPT, Gemini
- Ręczne zarządzanie kontekstem
- Brak integracji AI z moimi systemami

---

## 2. UŻYTKOWNIK I KONTEKST

| Aspekt                    | Opis                                              |
|---------------------------|---------------------------------------------------|
| **Główny użytkownik**     | Ja (właściciel wielu firm, nie-programista)       |
| **Dodatkowi użytkownicy** | Ewentualnie współpracownicy (faza późniejsza)     |
| **Częstotliwość**         | Codziennie, wielokrotnie                          |
| **Urządzenia**            | Desktop (Claude Code), mobile (docelowo Telegram) |
| **Tryb pracy**            | Synchroniczny (rozmowa) + asynchroniczny (zadania)|

---

## 3. ARCHITEKTURA FAZOWA

### Dlaczego fazy?

Pełna koncepcja to ~36h pracy i $50-80/mies. Potrzebujemy czegoś użytecznego TERAZ.

### Fazy rozwoju (oryginalne 3 fazy)

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         ARCHITEKTURA FAZOWA (v1)                        │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  FAZA 1: LITE (MVP)      FAZA 2: CORE           FAZA 3: FULL           │
│  ─────────────────       ──────────             ──────────              │
│  □ MCP jarvis-notes      □ Telegram Bot         □ RAG na GDrive        │
│  □ MCP jarvis-todo       □ Google Calendar      □ Vector DB            │
│  □ Integracja _meta      □ Gmail search         □ Voice (Whisper)      │
│  □ Local-first           □ PostgreSQL           □ Multi-model routing  │
│  □ Zero kosztów          □ ~$20/mies            □ ~$80/mies            │
│                                                                         │
│  TERAZ                   ~2 tyg                 ~1 mies                 │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### Rozszerzona wizja: Jarvis 2.0 (4 fazy)

> **Dodano:** 17.01.2026
> **Szczegóły:** [docs/ROADMAP.md](ROADMAP.md)

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              JARVIS 2.0 ROADMAP                                 │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  FAZA 1: MVP               FAZA 2: GOOGLE+         FAZA 3: BRAIN    FAZA 4: AI │
│  ──────────                ───────────────         ────────────     ──────────  │
│                                                                                 │
│  ☐ MCP notes/todo          ☐ Google OAuth Hub      ☐ Voice I/O      ☐ Multi-AI │
│  ☐ Centralne pliki         ☐ Gmail (6+ kont)       ☐ RAG/Vector     ☐ Auto-proj│
│  ☐ Skill /j                ☐ Calendar multi        ☐ YT transcribe  ☐ Self-build│
│  ☐ Memory system           ☐ Drive integration     ☐ Knowledge base ☐ Jarvis2.0│
│  ☐ Dobre praktyki          ☐ n8n workflows         ☐ Life stories              │
│                            ☐ Account manager                                    │
│                                                                                 │
│  ~2 tyg                    ~4-6 tyg                ~4-6 tyg         ongoing     │
│  Koszt: $0                 Koszt: ~$20-50          Koszt: ~$80-150  Koszt: $150+│
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

**Kluczowe rozszerzenia względem v1:**

| Obszar | Oryginalna wizja | Jarvis 2.0 |
|--------|------------------|------------|
| Google | 1 konto | 6+ kont, multi-account hub |
| AI | Tylko Claude | Hybrydowe: Claude + GPT + Gemini + local |
| Voice | Opcjonalne | Pełna komunikacja głosowa |
| Baza wiedzy | RAG na dokumentach | + transkrypcje YT, life stories |
| Autonomia | Wykonawca poleceń | Samodzielna realizacja projektów |
| Self-improvement | Brak | Jarvis buduje Jarvisa 2.0 |

---

## 4. FAZA 1: LITE (MVP)

### Zakres

| Komponent           | Opis                                          | Priorytet |
|---------------------|-----------------------------------------------|-----------|
| **MCP jarvis-notes**| CRUD na JOURNAL.md, NOTES.md, KNOWLEDGE.md    | P0        |
| **MCP jarvis-todo** | Zarządzanie TODO.md w projektach              | P0        |
| **Skill /j**        | Szybki dostęp z Claude Code                   | P1        |
| **Integracja _meta**| Czytanie/pisanie docs/ w _meta                | P1        |

### Definition of Done (MVP)

- [ ] MCP działa lokalnie z Claude Code
- [ ] "zanotuj: ..." → trafia do odpowiedniego pliku
- [ ] "do zrobienia: ..." → trafia do TODO.md
- [ ] "co wiemy o X?" → przeszukuje KNOWLEDGE.md
- [ ] Nie wymaga zewnętrznych serwisów (local-first)
- [ ] Dokumentacja użycia kompletna

### Technologia Fazy 1

| Komponent     | Technologia           | Uzasadnienie                    |
|---------------|-----------------------|---------------------------------|
| MCP Server    | Node.js + TypeScript  | Natywne dla Claude Code         |
| Storage       | Markdown files        | Zero setup, human-readable      |
| Komunikacja   | stdio (MCP protocol)  | Standardowy protokół Anthropic  |

### Czego NIE MA w Fazie 1

- Telegram bot
- Kalendarz Google
- Email
- RAG / Vector DB
- Voice interface
- Zewnętrzne bazy danych

---

## 5. FAZA 2: CORE

### Zakres

| Komponent             | Opis                                    |
|-----------------------|-----------------------------------------|
| **Telegram Bot**      | Interfejs mobilny, dostęp 24/7          |
| **Google Calendar**   | Czytanie/dodawanie wydarzeń             |
| **Gmail Search**      | Wyszukiwanie w mailach                  |
| **PostgreSQL**        | Pamięć długoterminowa                   |
| **Session memory**    | Kontekst między rozmowami               |

### Szacunkowe koszty

| Usługa                | Koszt/miesiąc |
|-----------------------|---------------|
| Supabase (PostgreSQL) | $0 (free tier)|
| Hosting Python/Node   | ~$10-20       |
| Claude API (light)    | ~$10-20       |
| **RAZEM**             | **~$20-40**   |

---

## 6. FAZA 3: FULL

### Zakres

| Komponent              | Opis                                        |
|------------------------|---------------------------------------------|
| **RAG**                | Indeksowanie GDrive, Notion, OneNote        |
| **Vector DB**          | Chroma (local) → Pinecone (scale)           |
| **Voice**              | Whisper (STT) + ElevenLabs (TTS)            |
| **Multi-model routing**| Claude dla analizy, GPT dla kodu            |
| **Proaktywne**         | Przypomnienia, alerty                       |

### Szacunkowe koszty

| Usługa             | Koszt/miesiąc |
|--------------------|---------------|
| Claude API (heavy) | ~$30-50       |
| OpenAI (embeddings)| ~$5-10        |
| Hosting            | ~$20          |
| Pinecone           | ~$0-20        |
| Voice APIs         | ~$20-30       |
| **RAZEM**          | **~$80-130**  |

---

## 7. ARCHITEKTURA DOCELOWA (Faza 3)

```
┌─────────────────────────────────────────────────────────────────┐
│                    _JARVIS — ARCHITEKTURA DOCELOWA              │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  INTERFEJSY                    CORE                            │
│  ┌─────────────┐              ┌──────────────────┐             │
│  │ Claude Code │◄────────────►│                  │             │
│  │ (MCP)       │              │   ORCHESTRATOR   │             │
│  ├─────────────┤              │   (Python/n8n)   │             │
│  │ Telegram    │◄────────────►│                  │             │
│  ├─────────────┤              │   - Routing      │             │
│  │ Voice       │◄────────────►│   - Context mgmt │             │
│  │ (Whisper)   │              │   - Memory       │             │
│  └─────────────┘              │   - Tools exec   │             │
│                               └────────┬─────────┘             │
│                                        │                        │
│  ┌─────────────────────────────────────┼─────────────────────┐ │
│  │                    LLM LAYER        │                     │ │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐               │ │
│  │  │ Claude   │  │ GPT-4    │  │ Gemini   │               │ │
│  │  │ API      │  │ API      │  │ API      │               │ │
│  │  └──────────┘  └──────────┘  └──────────┘               │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                 │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │                    TOOLS / INTEGRACJE                   │   │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌─────────┐ │   │
│  │  │ Google   │  │ n8n      │  │Fakturownia│  │ Notion  │ │   │
│  │  │ (Gmail,  │  │ Workflows│  │ API      │  │ API     │ │   │
│  │  │ Calendar,│  └──────────┘  └──────────┘  └─────────┘ │   │
│  │  │ Drive)   │                                          │   │
│  │  └──────────┘                                          │   │
│  └─────────────────────────────────────────────────────────┘   │
│                                                                 │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │                    KNOWLEDGE BASE                       │   │
│  │  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  │   │
│  │  │ Vector DB    │  │ Docs Index   │  │ Memory       │  │   │
│  │  │ (Embeddings) │  │ (RAG)        │  │ (PostgreSQL) │  │   │
│  │  └──────────────┘  └──────────────┘  └──────────────┘  │   │
│  └─────────────────────────────────────────────────────────┘   │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## 8. BEZPIECZEŃSTWO

### Wymagania krytyczne

- [ ] API keys w secrets manager (nie w kodzie)
- [ ] Szyfrowanie danych w spoczynku
- [ ] HTTPS dla wszystkich połączeń
- [ ] Rate limiting na API
- [ ] Audit log wszystkich zapytań
- [ ] Możliwość "zapomnienia" danych (RODO)

### Dostęp

| Interfejs   | Autoryzacja                      |
|-------------|----------------------------------|
| MCP         | Lokalny (Claude Code)            |
| Telegram    | Weryfikacja chat_id (tylko mój)  |
| Web (later) | Auth via Google OAuth            |

---

## 9. RYZYKA

| Ryzyko               | Prawdop. | Wpływ     | Mitigacja                        |
|----------------------|----------|-----------|----------------------------------|
| Overengineering      | Wysokie  | Wysoki    | Strict MVP scope, fazy           |
| Wysokie koszty API   | Średnie  | Wysoki    | Caching, model routing, limity   |
| Hallucynacje LLM     | Wysokie  | Średni    | RAG, fact-checking prompts       |
| Złożoność integracji | Wysokie  | Wysoki    | MVP z min. integracjami          |
| Vendor lock-in       | Średnie  | Średni    | Abstrakcja warstwy LLM           |

---

## 10. SUKCES =

### Po Fazie 1 (MVP)

1. Z Claude Code powiem "zanotuj: ..." i trafi do właściwego pliku
2. "do zrobienia: X" doda task do TODO.md
3. "co wiemy o Y?" przeszuka bazę wiedzy
4. Wszystko działa lokalnie, bez kosztów

### Po Fazie 2 (CORE)

1. Z Telegrama zapytam "co mam dziś w kalendarzu?"
2. "Znajdź maile o X" przeszuka Gmail
3. Bot pamięta kontekst między rozmowami

### Po Fazie 3 (BRAIN)

1. "Co pisałem w dokumencie X o temacie Y?" — RAG na GDrive
2. Voice interface do szybkich notatek
3. "Co mówił X w wywiadzie o Y?" — transkrypcje YT
4. Proaktywne przypomnienia

### Po Fazie 4 (AUTONOMOUS AI) — Jarvis 2.0

1. "Zbuduj projekt X" — Jarvis realizuje od koncepcji do kodu
2. Jarvis wybiera optymalny model AI do zadania
3. Jarvis proponuje ulepszenia własnego kodu
4. Istnieje CONCEPT dla Jarvisa 3.0 napisany przez Jarvisa

---

## 11. NASTĘPNE KROKI

### Teraz (Faza 1)

1. [x] Inicjalizacja projektu _jarvis
2. [ ] Implementacja MCP jarvis-notes
3. [ ] Implementacja MCP jarvis-todo
4. [ ] Testowanie z Claude Code
5. [ ] Dokumentacja użycia

### Później (Faza 2)

1. [ ] Telegram bot setup
2. [ ] Google Calendar integration
3. [ ] Gmail search
4. [ ] PostgreSQL setup

---

## 12. ŹRÓDŁO

Koncepcja przeniesiona z: `_lab/workspace/personal-ai-assistant/CONCEPT.md`

Oryginalna data utworzenia: 11.01.2026

---

## HISTORIA ZMIAN

| Data | Wersja | Opis |
|------|--------|------|
| 11.01.2026 | 1.0 | Oryginalna koncepcja w _lab |
| 16.01.2026 | 1.1 | Przeniesienie do _jarvis |
| 17.01.2026 | 2.0 | Rozszerzenie wizji: Jarvis 2.0 (4 fazy, 6+ kont Google, Multi-AI, Voice, Self-improvement) |

---

> **Koniec CONCEPT.md**
