# ROADMAP.md — _jarvis 2.0

> **Data utworzenia:** 17.01.2026
> **Ostatnia aktualizacja:** 17.01.2026
> **Status:** Faza 1 (MVP) w realizacji

---

## WIZJA

Jarvis 2.0 to autonomiczny asystent AI z:
- Integracją z 6+ kontami Google
- Hybrydowym dostępem do wielu modeli AI
- Komunikacją głosową
- Bazą wiedzy (RAG, transkrypcje, life stories)
- Zdolnością do samodzielnej realizacji projektów
- Zdolnością do budowania siebie (Jarvis buduje Jarvisa 2.0)

---

## MAPA CZASOWA

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              JARVIS 2.0 ROADMAP                                 │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  Q1 2026                    Q1-Q2 2026              Q2 2026          Q3+ 2026  │
│  ════════                   ══════════              ════════         ═════════  │
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

---

## FAZA 1: MVP (teraz → +2 tyg)

**Cel:** Działający fundament z dobrymi praktykami

| Zadanie | Opis | Status | Priorytet |
|---------|------|--------|-----------|
| MCP jarvis-notes | CRUD na JOURNAL.md, NOTES.md, KNOWLEDGE.md | ⬜ | P0 |
| MCP jarvis-todo | Zarządzanie TODO.md z tagami @projekt | ⬜ | P0 |
| Skill `/j` | Szybki dostęp z dowolnego projektu | ⬜ | P1 |
| Memory system | MEMORY.md + auto-uzupełnianie | ✅ | P0 |
| Dobre praktyki | Szablony, konwencje, CLAUDE_RULES | ✅ | P0 |
| Dokumentacja | Kompletna dokumentacja użycia | ⬜ | P2 |

### Definition of Done (Faza 1)

- [ ] MCP działa lokalnie z Claude Code
- [ ] "zanotuj: ..." → trafia do NOTES.md z tagiem @projekt
- [ ] "do zrobienia: ..." → trafia do TODO.md z tagiem @projekt
- [ ] "co wiemy o X?" → przeszukuje KNOWLEDGE.md
- [ ] Skill `/j` dostępny globalnie
- [ ] Zero kosztów, wszystko lokalne

---

## FAZA 2: GOOGLE+ (→ +6 tyg od startu)

**Cel:** Pełna integracja z 6+ kontami Google

### Architektura

```
┌─────────────────────────────────────────────────────────────┐
│                 GOOGLE MULTI-ACCOUNT HUB                    │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ┌──────────────┐                                           │
│  │ Account      │  konto1@gmail.com (prywatne)             │
│  │ Manager      │  konto2@firma1.pl (Firma 1)              │
│  │              │  konto3@firma2.pl (Firma 2)              │
│  │ OAuth Hub    │  konto4@projekt.pl (Projekt X)           │
│  │ Token Vault  │  ...                                      │
│  └──────┬───────┘                                           │
│         │                                                   │
│  ┌──────┴───────────────────────────────────────────────┐  │
│  │                    USŁUGI                             │  │
│  │  ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐        │  │
│  │  │ Gmail  │ │Calendar│ │ Drive  │ │ Tasks  │        │  │
│  │  └────────┘ └────────┘ └────────┘ └────────┘        │  │
│  └───────────────────────────────────────────────────────┘  │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### Komponenty

| Komponent | Funkcje | Priorytet |
|-----------|---------|-----------|
| **Account Manager** | Dodawanie/usuwanie kont, przełączanie kontekstu | P0 |
| **OAuth Hub** | Centralne zarządzanie tokenami, auto-refresh | P0 |
| **Gmail** | Szukaj, czytaj, wysyłaj, labele, filtry | P0 |
| **Calendar** | CRUD wydarzeń, widok unified ze wszystkich kont | P1 |
| **Drive** | Szukaj pliki, pobieraj, uploaduj | P1 |
| **Tasks** | Sync z TODO.md | P2 |
| **Contacts** | Wyszukiwanie, zarządzanie | P2 |

### n8n Advanced

| Funkcja | Opis | Priorytet |
|---------|------|-----------|
| Auto-create workflows | Jarvis tworzy workflow z opisu słownego | P1 |
| Template library | Baza gotowych wzorców workflow | P2 |
| Project scaffolding | Automatyczne tworzenie struktury projektu | P2 |

### Definition of Done (Faza 2)

- [ ] Można dodać/usunąć konto Google jedną komendą
- [ ] "Sprawdź maile od X na koncie Y" działa
- [ ] "Co mam dziś w kalendarzu?" pokazuje unified view
- [ ] "Znajdź plik X" przeszukuje Drive wszystkich kont
- [ ] "Stwórz workflow do X" generuje n8n workflow

---

## FAZA 3: BRAIN (→ +12 tyg od startu)

**Cel:** Inteligentna baza wiedzy + komunikacja głosowa

### Voice I/O

| Kierunek | Technologia | Opis |
|----------|-------------|------|
| Voice → Text | Whisper (local/API) | Transkrypcja mowy |
| Text → Voice | ElevenLabs / Azure TTS | Synteza mowy |
| Real-time | WebRTC + streaming | Rozmowa na żywo |

### Baza wiedzy (RAG)

| Źródło | Metoda | Priorytet |
|--------|--------|-----------|
| YouTube interviews | Whisper → chunking → embeddings | P0 |
| Dokumenty GDrive | RAG na plikach | P1 |
| Rozmowy z Jarvisem | Auto-zapisywanie kontekstu | P1 |
| Life stories | Strukturyzowane biografie | P2 |

### Technologia

| Komponent | Opcje |
|-----------|-------|
| Vector DB | ChromaDB (local) → Pinecone (scale) |
| Embeddings | OpenAI ada-002 / local |
| RAG Framework | LangChain |
| Chunking | Semantic chunking |

### Definition of Done (Faza 3)

- [ ] Można rozmawiać z Jarvisem głosowo
- [ ] "Co mówił X w wywiadzie o Y?" zwraca odpowiedź z transkrypcji
- [ ] Baza wiedzy zawiera >100 dokumentów
- [ ] Jarvis pamięta kontekst rozmów

---

## FAZA 4: AUTONOMOUS AI (Q3+ 2026)

**Cel:** Jarvis jako autonomiczny agent budujący siebie

### Multi-AI Hybrid

```
┌─────────────────────────────────────────────────────────────┐
│                    MULTI-AI ROUTER                          │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ZADANIE → ROUTER → WYBÓR MODELU                           │
│                                                             │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐   │
│  │ Claude   │  │ GPT-4    │  │ Gemini   │  │ Ollama   │   │
│  │ (API)    │  │ (API)    │  │ (API)    │  │ (local)  │   │
│  ├──────────┤  ├──────────┤  ├──────────┤  ├──────────┤   │
│  │ Główny   │  │ Kod      │  │ Długi    │  │ Prywatne │   │
│  │ asystent │  │ generation│  │ kontekst │  │ dane     │   │
│  │ reasoning│  │ debugging │  │ analiza  │  │ offline  │   │
│  └──────────┘  └──────────┘  └──────────┘  └──────────┘   │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### Poziomy autonomii

| Poziom | Nazwa | Opis |
|--------|-------|------|
| L1 | Executor | Wykonuje polecenia krok po kroku |
| L2 | Planner | Samodzielnie planuje, pyta o zatwierdzenie |
| L3 | Builder | Realizuje projekty end-to-end |
| L4 | Self-improver | Jarvis buduje Jarvisa 2.0 |

### Funkcje autonomiczne

| Funkcja | Opis |
|---------|------|
| **Auto-projekty** | Od koncepcji przez plan do realizacji |
| **Auto-testy** | Generowanie i wykonywanie testów |
| **Self-analysis** | Analiza własnych błędów |
| **Self-improvement** | Propozycje ulepszeń własnego kodu |
| **Jarvis 2.0** | Projektowanie następnej wersji |

### Definition of Done (Faza 4)

- [ ] Jarvis może wybrać optymalny model AI do zadania
- [ ] "Zbuduj projekt X" działa end-to-end
- [ ] Jarvis proponuje ulepszenia własnego kodu
- [ ] Istnieje CONCEPT dla Jarvisa 2.0 napisany przez Jarvisa

---

## SZACOWANE KOSZTY

| Faza | Koszty miesięczne | Główne pozycje |
|------|-------------------|----------------|
| Faza 1 | $0 | Local-first |
| Faza 2 | $20-50 | Hosting, n8n |
| Faza 3 | $80-150 | Voice API, Vector DB, embeddings |
| Faza 4 | $150+ | Multi-AI API, compute |

---

## RYZYKA

| Ryzyko | Prawdop. | Wpływ | Mitigacja |
|--------|----------|-------|-----------|
| Overengineering | Wysokie | Wysoki | Strict MVP, fazy |
| Koszty API | Średnie | Wysoki | Caching, local models, routing |
| Złożoność Google OAuth | Średnie | Średni | Dobre abstrakcie, token vault |
| Hallucynacje LLM | Wysokie | Średni | RAG, fact-checking |
| Vendor lock-in | Średnie | Średni | Abstrakcja warstwy AI |

---

## NASTĘPNY KROK

**→ Faza 1: Implementacja MCP jarvis-notes**

---

## HISTORIA ZMIAN

| Data | Wersja | Opis |
|------|--------|------|
| 17.01.2026 | 1.0 | Utworzenie roadmapy z 4 fazami |

---

> **Koniec ROADMAP.md**
