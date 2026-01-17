# ROADMAP.md — Jarvis 2.0

> **Data utworzenia:** 17.01.2026
> **Ostatnia aktualizacja:** 17.01.2026
> **Status:** Faza 1 (MVP) w realizacji

---

## KIERUNEK: CONVERSATIONAL AGENCY

> **Jarvis = sprawczość słowa**
> Mówisz → dzieje się. Bez konfiguracji, bez "zbuduj mi workflow".

### Filozofia

```
UŻYTKOWNIK: "Od teraz Kowalski dostaje kody rabatowe"

SUKCES ≠ "Zbudowałem workflow w n8n"
SUKCES = Kowalski dostaje kody. Kropka.
```

### Mierniki sukcesu

| Test | Zdany gdy |
|------|-----------|
| "Zanotuj X" | X jest zapisane |
| "Od teraz informuj mnie o Y" | Dostajesz informacje o Y |
| "Sprawdź maile o Z" | Masz odpowiedź |
| "Przestań" | Przestaje |

### Model wdrożenia

1. **"W sobie"** — najpierw działa (nawet jeśli nieoptymalne)
2. **Optymalizacja** — przeniesienie do n8n/innego narzędzia (opcjonalne)

### USP

Nie konkurujemy z n8n, Zapier, Make.
Konkurujemy z **"muszę to skonfigurować sam"**.

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
│  FAZA 1: FUNDAMENT         FAZA 2: ZASIĘG          FAZA 3: MÓZG     FAZA 4:    │
│  ─────────────────         ──────────────          ──────────       AUTONOMIA  │
│                                                                     ──────────  │
│  Mówię → zapisuje          Mówię z telefonu        Mówię głosem     Mówię raz  │
│  Mówię → robi TODO         Mówię → sprawdza mail   Pyta mnie RAG    → działa   │
│  Pamięta kontekst          Mówię → kalendarz       Zna moje życie   zawsze     │
│                            Zarządza 6+ kontami                                  │
│                                                                                 │
│  Koszt: $0                 Koszt: ~$20-50          Koszt: ~$80-150  Koszt: $150+│
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

---

## FAZA 1: FUNDAMENT

> **Cel:** Mogę mówić do Jarvisa i rzeczy się dzieją (lokalnie, bez kosztów)

### Sprawczość słowa — Faza 1

| Mówię | Dzieje się |
|-------|------------|
| "Zanotuj: pomysł na X" | → Jest w NOTES.md z tagiem @projekt |
| "Do zrobienia: Y" | → Jest w TODO.md |
| "Co wiesz o Z?" | → Przeszukuje KNOWLEDGE.md, odpowiada |
| "Refleksja: ..." | → Jest w JOURNAL.md |

### Co to wymaga (techniczne)

| Komponent | Status | Po co |
|-----------|--------|-------|
| Centralne pliki + tagowanie | ✅ | Jedno miejsce na wszystko |
| Memory system (MEMORY.md) | ✅ | Pamięć między sesjami |
| Dobre praktyki (CLAUDE_RULES) | ✅ | Spójne zachowanie |
| MCP jarvis-notes | ⬜ | CRUD na markdown |
| MCP jarvis-todo | ⬜ | Zarządzanie TODO |
| Skill `/j` | ⬜ | Szybki dostęp z każdego projektu |

### Definition of Done (Faza 1)

- [ ] Mówię "zanotuj X" → X jest w NOTES.md
- [ ] Mówię "do zrobienia Y" → Y jest w TODO.md
- [ ] Mówię "co wiesz o Z" → dostaje odpowiedź z KNOWLEDGE.md
- [ ] Działa z każdego projektu (skill globalny)
- [ ] Zero kosztów, wszystko lokalne

---

## FAZA 2: ZASIĘG

> **Cel:** Mogę mówić do Jarvisa z telefonu i zarządzać wszystkimi kontami

### Sprawczość słowa — Faza 2

| Mówię | Dzieje się |
|-------|------------|
| "Sprawdź maile od Kowalskiego" | → Przeszukuje Gmail, odpowiada |
| "Co mam dziś w kalendarzu?" | → Unified view ze wszystkich kont |
| "Znajdź fakturę X na Drive" | → Szuka, podaje link |
| "Od teraz Y dostaje kody rabatowe" | → Ustawia automatyzację |
| (z telefonu) "Zanotuj..." | → Działa jak z desktopa |

### Co to wymaga (techniczne)

| Komponent | Po co |
|-----------|-------|
| **Telegram Bot** | Mobilny dostęp 24/7 — kluczowy enabler |
| Google OAuth Hub | Jeden login do 6+ kont |
| Gmail integration | Szukaj, czytaj, wysyłaj |
| Calendar integration | CRUD wydarzeń, unified view |
| Drive integration | Szukaj pliki, pobieraj |
| n8n workflows | Automatyzacje "od teraz X" |

### Definition of Done (Faza 2)

- [ ] Z Telegrama mówię "zanotuj X" → działa
- [ ] Mówię "sprawdź maile od Y" → mam odpowiedź
- [ ] Mówię "co mam dziś?" → kalendarz ze wszystkich kont
- [ ] Mówię "od teraz Z" → automatyzacja działa
- [ ] Zarządzam 6+ kontami Google jednym interfejsem

---

## FAZA 3: MÓZG

> **Cel:** Jarvis zna kontekst mojego życia i odpowiada głosem

### Sprawczość słowa — Faza 3

| Mówię (głosem) | Dzieje się |
|----------------|------------|
| "Co mówił X w wywiadzie o Y?" | → Odpowiedź z transkrypcji YT |
| "Przypomnij mi kontekst projektu Z" | → RAG na dokumentach |
| "Opowiedz mi o historii firmy W" | → Life stories |
| (głosem, bez rąk) | → Pełna rozmowa |

### Co to wymaga (techniczne)

| Komponent | Po co |
|-----------|-------|
| Voice I/O (Whisper + TTS) | Rozmowa głosowa |
| RAG na dokumentach | Kontekstowa wiedza |
| Vector DB (Chroma → Pinecone) | Embeddings |
| YT transcription | Wiedza z wywiadów |
| Life stories | Strukturyzowane biografie |

### Definition of Done (Faza 3)

- [ ] Mogę rozmawiać z Jarvisem głosowo
- [ ] Mówię "co mówił X o Y" → odpowiedź z transkrypcji
- [ ] Jarvis zna kontekst >100 dokumentów
- [ ] Pamięta historię rozmów

---

## FAZA 4: AUTONOMIA

> **Cel:** Mówię raz — Jarvis realizuje sam, bez nadzoru

### Sprawczość słowa — Faza 4

| Mówię | Dzieje się |
|-------|------------|
| "Zbuduj projekt X" | → Od CONCEPT do działającego kodu |
| "Zoptymalizuj Y" | → Analizuje, proponuje, wdraża |
| "Ulepsz siebie" | → Self-improvement |

### Poziomy autonomii

```
Human-in-the-loop → Human-on-the-loop → Human-out-of-loop
     (Faza 1-2)           (Faza 3)            (Faza 4)
```

| Poziom | Nazwa | Opis |
|--------|-------|------|
| L1 | Executor | Wykonuje polecenia krok po kroku |
| L2 | Planner | Planuje sam, pyta o zatwierdzenie |
| L3 | Builder | Realizuje projekty end-to-end |
| L4 | Self-improver | Jarvis buduje Jarvisa 2.0 |

### Co to wymaga (techniczne)

| Komponent | Po co |
|-----------|-------|
| Multi-AI Router | Optymalny model do zadania |
| Auto-projekty | Od koncepcji do kodu |
| Self-analysis | Analiza własnych błędów |
| Self-improvement | Propozycje ulepszeń |

### Definition of Done (Faza 4)

- [ ] Mówię "zbuduj projekt X" → działa end-to-end
- [ ] Jarvis wybiera optymalny model AI
- [ ] Jarvis proponuje ulepszenia własnego kodu
- [ ] Istnieje CONCEPT dla Jarvisa 2.0 napisany przez Jarvisa

---

## ŚCIEŻKA OPCJONALNA: TRYBY DOSTĘPU

> **Status:** Pomysł — może być zrealizowany równolegle z dowolną fazą
> **Szczegóły:** [CONCEPT.md — sekcja 7.1](CONCEPT.md#71-tryby-dostępu-opcjonalne)

### Dlaczego opcjonalna?

To nie jest wymagane do działania Jarvisa, ale rozwiązuje realne problemy:
1. Chcę pokazać Jarvisa rodzinie (córka, syn) bez ryzyka
2. Zadania cykliczne na Opus są drogie
3. "Wszystko albo nic" to zły model bezpieczeństwa

### Propozycja trybów

```
┌─────────────────────────────────────────────────────────────────┐
│  FULL (Owner)          DEMO (Guest)           LITE (Agent)      │
│  ────────────          ────────────           ────────────      │
│  • Pełny dostęp        • Pokaz możliwości     • Zadania cykliczne│
│  • Opus                • 2-3 poziomy          • Haiku/Sonnet     │
│  • Edycja systemu      • Bez core docs        • Harmonogramy     │
└─────────────────────────────────────────────────────────────────┘
```

### Kiedy ma sens wdrożyć?

| Trigger | Reakcja |
|---------|---------|
| Chcę pokazać komuś Jarvisa | → Wdrożyć tryb DEMO |
| Mam powtarzalne zadanie (email, raporty) | → Wdrożyć tryb LITE |
| Koszty API rosną | → Wdrożyć LITE z Haiku |

### Szacowany nakład

- DEMO: ~2-4h (osobne profile, okrojone CLAUDE.md)
- LITE: ~4-8h (integracja z n8n/cron, testy z Haiku)

---

## SZACOWANE KOSZTY

| Faza | Koszt/mies | Główne pozycje |
|------|------------|----------------|
| Faza 1 | $0 | Local-first |
| Faza 2 | $20-50 | Hosting, Telegram, n8n |
| Faza 3 | $80-150 | Voice API, Vector DB, embeddings |
| Faza 4 | $150+ | Multi-AI API, compute |

---

## RYZYKA

| Ryzyko | Mitigacja |
|--------|-----------|
| Overengineering | Strict MVP, fazy, mierniki sprawczości |
| Koszty API | Caching, local models, routing |
| Złożoność Google OAuth | Dobre abstrakcje, token vault |
| Hallucynacje LLM | RAG, fact-checking |
| Vendor lock-in | Abstrakcja warstwy AI |

---

## NASTĘPNY KROK

**→ Faza 1: Implementacja MCP jarvis-notes**

Test sprawczości: "zanotuj: pierwszy test Jarvisa" → jest w NOTES.md

---

## HISTORIA ZMIAN

| Data | Wersja | Opis |
|------|--------|------|
| 17.01.2026 | 1.0 | Utworzenie roadmapy z 4 fazami |
| 17.01.2026 | 2.0 | Przebudowa pod CONVERSATIONAL AGENCY — sprawczość słowa |
| 17.01.2026 | 2.1 | Dodanie ŚCIEŻKI OPCJONALNEJ: Tryby dostępu (FULL/DEMO/LITE) |

---

> **Koniec ROADMAP.md**
