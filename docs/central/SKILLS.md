# SKILLS.md — Rejestr nabytych umiejętności

> **Cel:** Centralna baza wiedzy o umiejętnościach nabytych podczas pracy nad projektami.
> **Aktualizacja:** Po zakończeniu każdego projektu.
> **Użycie:** Przy planowaniu nowych projektów — wiadomo co już umiemy.
> **Lokalizacja centralna:** `_jarvis/docs/central/`

---

## Legenda poziomów

| Symbol | Poziom     | Opis                                       |
|--------|------------|--------------------------------------------|
| ✗      | Brak       | Nie używane, do nauki                      |
| ✓      | Podstawowy | Użyte raz, podstawowa znajomość            |
| ✓✓     | Działający | Użyte wielokrotnie, działa w produkcji     |
| ✓✓✓    | Ekspert    | Głęboka znajomość, rozwiązywanie edge cases|

---

## n8n

| Skill                | Projekt źródłowy | Poziom | Notatki                        |
|----------------------|------------------|--------|--------------------------------|
| HTTP Request z retry | b002             | ✓✓     | Timeout 5min dla dużych plików |
| XML parsing          | b002             | ✓✓     | Regex w Code node              |
| Google Drive API     | b002             | ✓✓     | Search, Create folder, Upload  |
| Airtable CRUD        | b002             | ✓✓     | Create, Update, Search         |
| Airtable Meta API    | b002             | ✓✓     | Tworzenie tabel przez HTTP     |
| IF + Merge pattern   | b002             | ✓✓     | alwaysOutputData + append      |
| Webhook trigger      | -                | ✗      | Do nauki                       |
| Cron scheduling      | b002             | ✓      | Podstawowe                     |
| Error handling       | -                | ✓      | Do rozwinięcia                 |

---

## Airtable

| Skill             | Projekt źródłowy | Poziom | Notatki              |
|-------------------|------------------|--------|----------------------|
| Web API (records) | b002             | ✓✓     | CRUD operations      |
| Meta API (schema) | b002             | ✓✓     | Tworzenie tabel, pól |
| Formula fields    | -                | ✗      | Do nauki             |
| Linked records    | -                | ✗      | Do nauki             |
| Automations       | -                | ✗      | Do nauki             |

---

## Google APIs

| Skill        | Projekt źródłowy | Poziom | Notatki                 |
|--------------|------------------|--------|-------------------------|
| Drive API v3 | b002             | ✓✓     | Folders, files, search  |
| Sheets API   | -                | ✓      | Podstawowe              |
| Gmail API    | -                | ✗      | Do nauki                |

---

## Python

| Skill              | Projekt źródłowy | Poziom | Notatki          |
|--------------------|------------------|--------|------------------|
| Pandas (CSV/Excel) | a001             | ✓✓✓    | Produkcyjne      |
| XML ElementTree    | b002             | ✓      | Podstawowy parsing|
| Requests           | -                | ✓✓     | HTTP calls       |
| openpyxl           | a001             | ✓✓     | Excel read/write |

---

## Narzędzia deweloperskie

| Skill           | Projekt źródłowy | Poziom | Notatki               |
|-----------------|------------------|--------|-----------------------|
| Git (podstawy)  | wszystkie        | ✓✓     | add, commit, push, pull|
| Git (branching) | -                | ✓      | Do rozwinięcia        |
| VS Code         | wszystkie        | ✓✓     | Codzienne użycie      |
| Claude Code     | wszystkie        | ✓✓✓    | Główne narzędzie      |
| MCP n8n         | b002             | ✓✓     | Walidacja, executions |
| pandoc          | _meta            | ✓      | MD → DOCX/PDF         |

---

## Metodyki i procesy

| Skill                    | Projekt źródłowy | Poziom | Notatki               |
|--------------------------|------------------|--------|-----------------------|
| CONCEPT → PLAN → EXECUTE | wszystkie        | ✓✓     | Standard pracy        |
| DECISIONS.md             | wszystkie        | ✓✓     | Rejestr decyzji       |
| PITFALLS sync            | b002             | ✓✓     | Synchronizacja wiedzy |
| Pre-deploy validation    | b002             | ✓✓     | MCP walidacja         |

---

## Do nauki (backlog)

Umiejętności które chcemy nabyć:

| Skill                | Priorytet | Potencjalny projekt |
|----------------------|-----------|---------------------|
| n8n Webhook triggers | Wysoki    | b001                |
| Airtable Automations | Średni    | -                   |
| Gmail API            | Średni    | b002 (raporty)      |
| Docker               | Niski     | -                   |

---

## Historia aktualizacji

| Data       | Projekt | Dodane skills                |
|------------|---------|------------------------------|
| 17.01.2026 | _jarvis | Migracja do central/         |
| 14.01.2026 | b002    | n8n, Airtable, Google Drive  |
| 14.01.2026 | _meta   | Inicjalna wersja rejestru    |

---

> **Koniec pliku SKILLS.md**
