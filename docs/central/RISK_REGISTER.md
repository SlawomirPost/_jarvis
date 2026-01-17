# RISK_REGISTER.md — Centralny rejestr ryzyk

> Inspiracja: Prince2 Agile — identyfikacja, ocena i mitygacja ryzyk.
> Lokalizacja: `_jarvis/docs/central/`
> Dotyczy: Wszystkie projekty

---

## Jak używać

1. **Identyfikuj** — gdy zauważysz potencjalny problem, dodaj wpis
2. **Oceniaj** — prawdopodobieństwo × wpływ = priorytet
3. **Mityguj** — określ akcję prewencyjną
4. **Monitoruj** — aktualizuj status regularnie (przy Weekly Review)

---

## Skale oceny

### Prawdopodobieństwo

| Wartość | Opis |
|---------|------|
| Niskie | Mało prawdopodobne (<20%) |
| Średnie | Możliwe (20-60%) |
| Wysokie | Prawdopodobne (>60%) |

### Wpływ

| Wartość | Opis |
|---------|------|
| Niski | Drobne opóźnienie, łatwe obejście |
| Średni | Znaczące opóźnienie, wymaga pracy |
| Wysoki | Blokuje projekt, wymaga decyzji |
| Krytyczny | Uniemożliwia realizację celu |

---

## Rejestr ryzyk

### Ryzyka otwarte

| ID | Projekt | Ryzyko | Prawdop. | Wpływ | Mitygacja | Właściciel | Status |
|----|---------|--------|----------|-------|-----------|------------|--------|
| R001 | @_jarvis | Claude API zmieni interfejs | Średnie | Wysoki | Monitorować changelog Anthropic, wersjonować integracje | Claude | Otwarty |
| R002 | @_jarvis | n8n na Hostinger ma limity | Niskie | Średni | Przygotować plan B (self-hosted) | Użytkownik | Otwarty |
| R003 | @ogólne | Utrata danych w plikach .md | Niskie | Krytyczny | Git + backup, regularne push | Claude | Otwarty |
| R004 | @_jarvis | MCP SDK zmieni API | Średnie | Wysoki | Śledzić releases, testy po aktualizacji | Claude | Otwarty |
| R005 | @ogólne | Overengineering metodologii | Średnie | Średni | Zasada "prostsze = lepsze", rewaluacja co 4 tyg | Użytkownik | Otwarty |

### Ryzyka zamknięte

| ID | Projekt | Ryzyko | Rozwiązanie | Data zamknięcia |
|----|---------|--------|-------------|-----------------|
| — | — | — | — | — |

---

## Format nowego wpisu

```markdown
| R0XX | @projekt | [opis ryzyka] | [N/Ś/W] | [N/Ś/W/K] | [akcja mitygująca] | [kto] | Otwarty |
```

---

## Triggery dla Claude

Claude proponuje dodanie ryzyka gdy słyszy:
- "ryzyko:", "może się zdarzyć że...", "obawiam się że..."
- "co jeśli...", "a gdyby...", "problem może być..."

Claude aktualizuje rejestr przy:
- Weekly Review (przegląd statusów)
- Exception Report (ryzyko się zmaterializowało → zamknij)
- Nowy projekt (identyfikacja ryzyk startowych)

---

## HISTORIA ZMIAN

| Data | Opis |
|------|------|
| 17.01.2026 | Utworzenie centralnego rejestru ryzyk |

---

> **Koniec RISK_REGISTER.md**
