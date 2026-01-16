# _jarvis

> Centralny asystent do notatek, TODO, kalendarza, email.
> Bo Claude wpisuje rzeczy w złe miejsca i trzeba mu przypominać.

## Status

**Faza:** 1 - LITE (MVP)

## Problem

Rozproszone zarządzanie wiedzą i zadaniami między projektami:
- Notatki w różnych miejscach
- TODO gubią się w czatach
- Brak pamięci kontekstu między sesjami Claude

## Rozwiązanie

MCP (Model Context Protocol) server dla Claude Code, który:
- Zarządza notatkami (JOURNAL.md, NOTES.md, KNOWLEDGE.md)
- Zarządza listami TODO w projektach
- Docelowo: kalendarz, email, RAG na dokumentach

## Architektura fazowa

```
Faza 1: LITE (MVP)     → MCP do notatek/TODO, local-first
Faza 2: CORE           → Telegram, kalendarz, email, PostgreSQL
Faza 3: FULL           → RAG, Vector DB, Voice, proaktywne
```

## Quick Start

```bash
# TODO: instrukcje instalacji MCP
```

## Dokumentacja

- [CLAUDE.md](CLAUDE.md) — instrukcje dla Claude
- [docs/CONCEPT.md](docs/CONCEPT.md) — pełna koncepcja projektu

## Powiązania

Projekt jest częścią portfolio zarządzanego przez [_meta-operating-system](https://github.com/SlawomirPost/_meta-operating-system).

---

Utworzono: 16.01.2026
