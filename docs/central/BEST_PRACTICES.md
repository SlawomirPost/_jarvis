# BEST_PRACTICES.md — Centralny katalog dobrych praktyk

> **Lokalizacja:** `_jarvis/docs/central/`
> **Dotyczy:** Wszystkie projekty i działania
> **Ostatnia aktualizacja:** 17.01.2026

---

## Jak używać tego pliku

1. **Przed rozpoczęciem pracy** — sprawdź odpowiednią sekcję
2. **Przy code review** — zweryfikuj zgodność z praktykami
3. **Gdy coś się sprawdza** — dodaj nową praktykę
4. **Gdy coś nie działa** — przenieś do PITFALLS/

**Szczegóły każdej praktyki** → KNOWLEDGE.md z tagiem `@best-practice`

---

## Triggery dla Claude

Claude automatycznie sprawdza praktyki gdy:
- Przed pisaniem kodu → sekcja 5 (Kodowanie)
- Przy nowym projekcie → sekcje 2, 3 (Koncepcje, Prowadzenie)
- Przy tworzeniu MCP/integracji → sekcje 1, 10 (Architektura, Integracje)
- Przy pisaniu promptu → sekcja 9 (Prompt Engineering)
- Przy tworzeniu UI → sekcja 6 (UX)

Triggery ręczne:
- "best practice", "dobra praktyka", "jak powinno być"
- "sprawdź praktyki dla X"

---

## 1. Architektura Jarvis

> Jak budować system asystenta AI

| Praktyka | Opis |
|----------|------|
| **Local-first** | Działaj bez internetu, synchronizuj gdy możliwe |
| **Modularność MCP** | Każda funkcja = osobny MCP server, łatwa wymiana |
| **Graceful degradation** | Gdy integracja padnie, reszta systemu działa |
| **Stateless gdzie możliwe** | Stan w plikach/DB, nie w pamięci procesu |
| **Fail-safe defaults** | Domyślne zachowanie = bezpieczne, nie destrukcyjne |
| **Observability** | Logi, metryki — wiesz co się dzieje w systemie |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@architektura`

---

## 2. Koncepcje projektów

> Jak opracowywać pomysły i przekształcać je w projekty

| Praktyka | Opis |
|----------|------|
| **Problem-first** | Najpierw zdefiniuj problem, potem szukaj rozwiązania |
| **5 Whys** | Dokop się do root cause — pytaj "dlaczego" 5 razy |
| **Jobs-to-be-Done** | Co użytkownik chce OSIĄGNĄĆ, nie co chce ZROBIĆ |
| **Fail fast** | Weryfikuj założenia wcześnie (prototyp, MVP, rozmowa) |
| **Kill your darlings** | Porzuć pomysł jeśli nie działa, nie przywiązuj się |
| **One-pager first** | Zanim rozbudujesz — czy mieści się na jednej stronie? |
| **Stakeholder mapping** | Kto jest zainteresowany? Kto blokuje? Kto pomoże? |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@koncepcje`

---

## 3. Prowadzenie projektów

> Prince2 Agile i zarządzanie pracą

| Praktyka | Opis |
|----------|------|
| **MoSCoW** | Must / Should / Could / Won't — priorytetyzacja |
| **Timeboxing** | Ogranicz czas na zadanie, nie zakres |
| **Definition of Done** | Jasne kryteria "kiedy skończone" |
| **Retrospektywa** | Co poszło dobrze? Co poprawić? (po każdym sprincie/etapie) |
| **Daily standup** | Co zrobiłem? Co zrobię? Co blokuje? |
| **Exception by management** | Eskaluj tylko gdy przekroczono tolerancję |
| **Incremental delivery** | Dostarczaj małe kawałki, zbieraj feedback |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@projekty`

---

## 4. Dokumentacja

> Jak pisać i utrzymywać dokumentację

| Praktyka | Opis |
|----------|------|
| **Docs-as-Code** | Dokumentacja w repo, wersjonowana z kodem |
| **README-driven** | Zacznij od README, potem implementuj |
| **ADR** | Architecture Decision Records — dokumentuj decyzje |
| **Single source of truth** | Jeden plik = jedna prawda, nie duplikuj |
| **Living documentation** | Aktualizuj przy każdej zmianie, nie "kiedyś" |
| **Distill** | Wyciągaj esencję z notatek do KNOWLEDGE.md |
| **Progressive disclosure** | Najpierw skrót, szczegóły dla zainteresowanych |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@dokumentacja`

---

## 5. Kodowanie

> Jak pisać i utrzymywać kod

| Praktyka | Opis |
|----------|------|
| **KISS** | Keep It Simple, Stupid — prostsze = lepsze |
| **DRY** | Don't Repeat Yourself — ale nie za wcześnie |
| **YAGNI** | You Aren't Gonna Need It — nie buduj "na zapas" |
| **Single Responsibility** | Jedna funkcja/klasa = jeden cel |
| **Fail fast** | Waliduj na wejściu, nie w środku logiki |
| **Explicit > Implicit** | Jawne lepsze niż domniemane |
| **Naming matters** | Dobre nazwy = czytelny kod bez komentarzy |
| **Boy Scout Rule** | Zostaw kod czystszy niż go zastałeś |
| **Code review** | 4 oczy widzą więcej — review przed merge |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@kodowanie`

---

## 6. Testowanie

> Jak testować kod i system

| Praktyka | Opis |
|----------|------|
| **Test the contract** | Testuj interfejs, nie implementację |
| **Arrange-Act-Assert** | Struktura testu: przygotuj, wykonaj, sprawdź |
| **One assertion per test** | Jeden test = jedna rzecz do sprawdzenia |
| **Test pyramid** | Dużo unit, mniej integration, mało E2E |
| **Happy path + edge cases** | Testuj sukces i błędy graniczne |
| **Test before fix** | Najpierw test reprodukujący bug, potem fix |
| **Deterministic tests** | Test zawsze daje ten sam wynik |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@testowanie`

---

## 7. UX / Użyteczność

> Jak budować produkty łatwe w użyciu

| Praktyka | Opis |
|----------|------|
| **Nielsen's 10 Heuristics** | Podstawowe zasady użyteczności |
| **Don't make me think** | Interfejs oczywisty bez instrukcji |
| **Progressive disclosure** | Pokaż najpierw najpotrzebniejsze |
| **Feedback loops** | Użytkownik wie co się dzieje (loading, success, error) |
| **Error prevention** | Lepiej zapobiegać niż obsługiwać błędy |
| **Recognition over recall** | Pokaż opcje zamiast kazać pamiętać |
| **Consistency** | Te same akcje = te same efekty w całym systemie |
| **Accessibility** | Dostępne dla osób z różnymi potrzebami |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@ux`

---

## 8. Skalowalność & MVP

> Jak budować projekty przenośne i skalowalne

| Praktyka | Opis |
|----------|------|
| **Start small** | MVP = minimum żeby zweryfikować hipotezę |
| **12-factor app** | Zasady budowania skalowalnych aplikacji |
| **Config in environment** | Konfiguracja poza kodem (env vars, pliki config) |
| **Stateless services** | Stan w DB/storage, nie w procesie |
| **Horizontal scaling** | Więcej instancji > większa instancja |
| **Feature flags** | Włączaj/wyłączaj funkcje bez deploy |
| **Backwards compatibility** | Nowa wersja działa ze starymi danymi |
| **Modular architecture** | Wymień moduł bez przebudowy całości |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@skalowalnosc`

---

## 9. Bezpieczeństwo

> OWASP i ochrona danych

| Praktyka | Opis |
|----------|------|
| **Least privilege** | Minimalne uprawnienia potrzebne do działania |
| **Defense in depth** | Wiele warstw zabezpieczeń |
| **Secrets management** | Nigdy w kodzie, zawsze w vault/env |
| **Input validation** | Waliduj wszystko z zewnątrz |
| **OWASP Top 10** | Znaj i zabezpiecz przed najpopularniejszymi atakami |
| **Backup 3-2-1** | 3 kopie, 2 nośniki, 1 offsite |
| **Audit trail** | Loguj kto, co, kiedy zmienił |
| **Secure by default** | Domyślnie zamknięte, otwieraj świadomie |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@bezpieczenstwo`

---

## 10. Prompt Engineering

> Jak pisać skuteczne prompty dla AI

| Praktyka | Opis |
|----------|------|
| **Role + Context + Task** | Struktura: kim jestem, co wiem, co zrobić |
| **Few-shot examples** | Pokaż 2-3 przykłady oczekiwanego outputu |
| **Chain-of-thought** | "Pomyśl krok po kroku" dla złożonych zadań |
| **Constrain output** | Określ format (JSON, lista, długość) |
| **Decompose complex tasks** | Podziel duże zadanie na mniejsze prompty |
| **Iterate and refine** | Prompt to kod — testuj i ulepszaj |
| **Temperature awareness** | Niższa = deterministyczne, wyższa = kreatywne |
| **Context window management** | Świadome zarządzanie dostępnym kontekstem |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@prompts`

---

## 11. Integracje / API

> Jak budować i konsumować API

| Praktyka | Opis |
|----------|------|
| **REST conventions** | GET = odczyt, POST = tworzenie, PUT = update, DELETE = usuwanie |
| **Idempotency** | Powtórzenie operacji = ten sam efekt |
| **Rate limiting** | Ogranicz liczbę requestów (ochrona przed abuse) |
| **Retry with backoff** | Przy błędzie czekaj coraz dłużej przed ponowieniem |
| **Circuit breaker** | Gdy serwis nie odpowiada — przestań próbować na chwilę |
| **Versioning** | /v1/, /v2/ — nowa wersja nie psuje starej |
| **Error handling** | Sensowne kody błędów i komunikaty |
| **Timeout everywhere** | Każde połączenie ma limit czasowy |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@api`

---

## 12. Dane & Backup

> Jak chronić i zarządzać danymi

| Praktyka | Opis |
|----------|------|
| **3-2-1 backup** | 3 kopie, 2 różne nośniki, 1 offsite |
| **Git as backup** | Kod i dokumentacja zawsze w Git |
| **Automated backups** | Backup ręczny = backup nieistniejący |
| **Test restores** | Regularnie testuj czy backup działa |
| **Data validation** | Sprawdzaj integralność danych |
| **Retention policy** | Jak długo trzymasz jakie dane |
| **Encryption at rest** | Dane zaszyfrowane na dysku |
| **GDPR awareness** | Wiesz jakie dane osobowe przetwarzasz |

→ Szczegóły: KNOWLEDGE.md `@best-practice` `@dane`

---

## Jak dodać nową praktykę

```markdown
| **[Nazwa praktyki]** | [Krótki opis — 1 zdanie] |
```

Jeśli praktyka wymaga szczegółów:
1. Dodaj wpis tutaj (krótko)
2. Szczegóły → KNOWLEDGE.md z tagami `@best-practice` `@domena`

---

## HISTORIA ZMIAN

| Data | Opis |
|------|------|
| 17.01.2026 | Utworzenie katalogu z 12 domenami |

---

> **Koniec BEST_PRACTICES.md**
