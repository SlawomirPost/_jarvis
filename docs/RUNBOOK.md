# RUNBOOK.md — Instrukcje operacyjne

> Jak uruchamiać, konfigurować i rozwiązywać problemy z _jarvis

---

## 1. Instalacja

### Wymagania

- Node.js 20.x LTS
- Python 3.11+ (dla przyszłych komponentów)
- Claude Code CLI

### Kroki instalacji

```bash
# TODO: dodać po implementacji MCP
```

---

## 2. Konfiguracja

### Konfiguracja MCP w Claude Code

```json
// ~/.claude/settings.json
{
  "mcpServers": {
    "jarvis": {
      "command": "node",
      "args": ["path/to/_jarvis/mcp/server.js"]
    }
  }
}
```

---

## 3. Użycie

### Notatki

```
zanotuj: [treść]           → dodaje do NOTES.md
zapisz do journala: [treść] → dodaje do JOURNAL.md
do bazy wiedzy: [treść]    → dodaje do KNOWLEDGE.md
```

### TODO

```
do zrobienia: [co]         → dodaje do TODO.md
zrobione: [co]             → oznacza jako wykonane
pokaż TODO                 → wyświetla listę
```

---

## 4. Troubleshooting

| Problem | Rozwiązanie |
|---------|-------------|
| MCP nie odpowiada | Sprawdź czy server działa: `ps aux | grep jarvis` |
| Błąd zapisu | Sprawdź uprawnienia do katalogu docs/ |

---

> **Koniec RUNBOOK.md**
