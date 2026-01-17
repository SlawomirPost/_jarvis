# ZETTELKASTEN — Baza wiedzy Jarvis

> **Utworzono:** 17.01.2026
> **Metodologia:** Zettelkasten + ADR + System wag pewności

---

## Czym jest Zettelkasten?

Atomowe notatki — każdy plik = jeden fakt/wniosek. Notatki są połączone siecią powiązań.

## Struktura pliku

```markdown
# YYYYMM-NNN: [Tytuł]

**confidence:** [0.0-1.0]
**source:** [URL, transcript, user-discussion-DATE]
**version:** 1
**deprecated:** false
**superseded_by:** []
**tags:** [@projekt, @domena, @temat]

## Fakt
[Atomowy fragment wiedzy — 1-3 akapity max]

## Kontekst
[Opcjonalnie: dlaczego to ważne, kiedy użyć]

## Powiązania
- → 202601-XXX: [opis relacji]
- ← 202601-YYY: [opis relacji]

## Źródło surowe
> [Cytat ze źródła, jeśli istnieje]
```

## System wag (confidence)

| Poziom | Zakres | Źródło typowe |
|--------|--------|---------------|
| **VERY HIGH** | 0.90-1.0 | Oficjalna dokumentacja, kod źródłowy |
| **HIGH** | 0.75-0.89 | Blogi techniczne, GitHub issues |
| **MEDIUM** | 0.50-0.74 | Dyskusje użytkownika, Stack Overflow |
| **LOW** | 0.25-0.49 | Transkrypcje YT, hipotezy |
| **SPECULATIVE** | 0.0-0.24 | Domysły, nieweryfikowalne |

## Deprecjacja

Gdy wniosek okazuje się błędny:

```markdown
**deprecated:** true
**superseded_by:** [202601-XXX]
```

Nie usuwamy — archiwizujemy z powodu. Git history = audit trail.

## Konwencje nazewnictwa

- `YYYYMM-NNN.md` — NNN = sekwencyjny numer w miesiącu
- Przykład: `202601-001.md`, `202601-002.md`, ...

## Powiązania

- `→` : ta notatka wskazuje na inną
- `←` : inna notatka wskazuje na tę
- `↔` : wzajemne powiązanie
- `⊗` : ta notatka zastępuje/unieważnia inną

## Przegląd struktury

Zobacz [KNOWLEDGE_GRAPH.md](../KNOWLEDGE_GRAPH.md) dla wizualizacji powiązań i matrycy pewności źródeł.

---

> **Koniec README**
