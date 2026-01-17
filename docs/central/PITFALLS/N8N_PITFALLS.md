# N8N_PITFALLS.md — Centralna baza wiedzy

> **Cel:** Zbieranie i udostępnianie wiedzy o pułapkach n8n między projektami.
> **Aktualizacja:** Przy każdym wykryciu nowej pułapki - dodaj tutaj.
> **Weryfikacja:** Przed tworzeniem nowego workflow - sprawdź tę listę.
> **Lokalizacja centralna:** `_jarvis/docs/central/PITFALLS/`

---

## Strategia użycia

```
┌─────────────────────────────────────────────────────────────┐
│         CYKL ZARZĄDZANIA WIEDZĄ O PUŁAPKACH                 │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  PRZED TWORZENIEM WORKFLOW                                  │
│  ├── Sprawdź ten plik (centralny)                          │
│  └── Uwzględnij w generowanym JSON                         │
│                                                             │
│  PO WYKRYCIU NOWEJ PUŁAPKI                                 │
│  ├── Dodaj do tego pliku (centralny)                       │
│  └── Rozważ aktualizację istniejących workflow             │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

## 1. Google Drive Node

### 1.1 Search wymaga resource: "fileFolder"

| Aspekt | Szczegóły |
|--------|-----------|
| **Problem** | Błąd "Cannot read properties of undefined (reading 'execute')" |
| **Błędne** | `resource: "file"` dla operacji search |
| **Poprawne** | `resource: "fileFolder"`, `operation: "search"`, `searchMethod: "query"` |
| **Wersja n8n** | 2.1.5 (typeVersion: 3) |
| **Wykryto** | 13.01.2026, projekt b002-pharmacy-registry-monitor |

```json
{
  "parameters": {
    "resource": "fileFolder",
    "operation": "search",
    "searchMethod": "query",
    "queryString": "mimeType='application/vnd.google-apps.folder' and name='folder_name' and 'parent_id' in parents and trashed=false",
    "options": {
      "fields": ["id", "name", "mimeType"]
    }
  },
  "type": "n8n-nodes-base.googleDrive",
  "typeVersion": 3
}
```

---

## 2. Nodes zwracające puste wyniki

### 2.1 alwaysOutputData: true

| Aspekt | Szczegóły |
|--------|-----------|
| **Problem** | Workflow zatrzymuje się gdy search/query zwraca 0 wyników |
| **Przyczyna** | n8n domyślnie nie przekazuje danych do następnego node gdy output jest pusty |
| **Rozwiązanie** | Dodaj `"alwaysOutputData": true` na poziomie node |
| **Kiedy używać** | Search, Query, HTTP Request gdzie spodziewamy się pustych odpowiedzi |
| **Wykryto** | 13.01.2026, projekt b002-pharmacy-registry-monitor |

```json
{
  "parameters": { ... },
  "id": "search_node",
  "name": "Search",
  "type": "n8n-nodes-base.googleDrive",
  "typeVersion": 3,
  "alwaysOutputData": true
}
```

---

## 3. IF Node z alwaysOutputData

### 3.1 Sprawdzaj dane, nie liczbę itemów

| Aspekt | Szczegóły |
|--------|-----------|
| **Problem** | IF zawsze idzie do TRUE branch mimo pustych wyników |
| **Przyczyna** | Z `alwaysOutputData: true` zawsze jest 1 item (pusty `{}`) |
| **Błędne** | `$input.all().length > 0` (zawsze 1) |
| **Poprawne** | `$json.id` z operatorem `notEmpty` lub `exists` |
| **Wykryto** | 13.01.2026, projekt b002-pharmacy-registry-monitor |

```json
{
  "parameters": {
    "conditions": {
      "conditions": [
        {
          "leftValue": "={{ $json.id }}",
          "rightValue": "",
          "operator": {
            "type": "string",
            "operation": "notEmpty"
          }
        }
      ]
    }
  },
  "type": "n8n-nodes-base.if",
  "typeVersion": 2
}
```

---

## 4. Merge Node

### 4.1 Tryby Merge dla conditional flows

| Aspekt | Szczegóły |
|--------|-----------|
| **Problem** | Merge czeka na oba inputy lub wymaga konfiguracji pól |
| **chooseBranch** | Czeka na OBA inputy - nie nadaje się do conditional flow |
| **mergeByPosition** | Wymaga "Fields to Match" - błąd jeśli nie skonfigurowane |
| **append** | Łączy wszystkie itemy - **ZALECANE dla conditional flows** |
| **combine** | Wymaga dodatkowej konfiguracji |
| **Wykryto** | 13.01.2026, projekt b002-pharmacy-registry-monitor |

**Zalecany pattern dla IF → dwie ścieżki → Merge:**

```json
{
  "parameters": {
    "mode": "append"
  },
  "type": "n8n-nodes-base.merge",
  "typeVersion": 3,
  "alwaysOutputData": true
}
```

---

## 5. Expressions i referencje

### 5.1 Dostęp do danych z poprzednich nodes

| Pattern | Użycie | Uwagi |
|---------|--------|-------|
| `$json.field` | Dane z bezpośrednio poprzedniego node | Najprostsze |
| `$('Node Name').first().json.field` | Dane z konkretnego node po nazwie | Używaj gdy ścieżka niejednoznaczna |
| `$('Node Name').item.json.field` | Deprecated w nowszych wersjach | Unikaj |
| `$input.all()` | Wszystkie itemy z poprzedniego node | Uwaga na alwaysOutputData |

---

## 6. Credentials

### 6.1 Credentials nie importują się z JSON

| Aspekt | Szczegóły |
|--------|-----------|
| **Problem** | Po imporcie workflow - błędy credentials |
| **Przyczyna** | Credentials są bezpieczne - nie exportują się z workflow |
| **Rozwiązanie** | Po imporcie ręcznie przypisz credentials do każdego node |
| **Weryfikacja** | Sprawdź wszystkie nodes używające API (Google, Airtable, HTTP) |

---

## 7. Patterns do stosowania

### 7.1 Idempotentny "find or create"

Pattern sprawdzający czy zasób istnieje przed utworzeniem:

```
Search → IF (exists?) → [TRUE: Set existing ID] → Merge
                     → [FALSE: Create] → Set new ID → Merge
```

Wymagane ustawienia:
- Search: `alwaysOutputData: true`
- IF: sprawdzaj `$json.id` nie `$input.all().length`
- Merge: `mode: "append"`

---

## Historia zmian

| Data | Wersja | Opis | Projekt źródłowy |
|------|--------|------|------------------|
| 17.01.2026 | 1.1 | Migracja do _jarvis/docs/central/ | _jarvis |
| 13.01.2026 | 1.0 | Inicjalna wersja z pułapkami z SETUP-001 | b002-pharmacy-registry-monitor |

---

> **Koniec pliku N8N_PITFALLS.md**
