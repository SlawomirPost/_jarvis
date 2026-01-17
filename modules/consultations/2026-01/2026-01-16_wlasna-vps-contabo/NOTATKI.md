# Konsultacja: Przygotowanie VPS Contabo

| Pole            | Wartość                                         |
|-----------------|------------------------------------------------|
| **Data**        | 16.01.2026                                      |
| **Klient**      | WŁASNA (dla siebie)                             |
| **Temat**       | Nowy VPS Contabo - Windows 10 + Claude Code     |
| **Status**      | 🟡 W trakcie                                    |

---

## Cel konsultacji

Przygotowanie nowego VPS na Contabo do pracy z Claude Code:
1. Instalacja Windows 10 z własnego ISO
2. Konfiguracja środowiska dla Claude Code
3. Przygotowanie do pracy z projektem z GitHub

---

## Kontekst

- **VPS**: Contabo (bez systemu - instalacja z własnego ISO)
- **Docelowy system**: Windows 10
- **Główny cel**: Prowadzenie 1 nowego projektu przez Claude Code
- **Checklista źródłowa**: ClickUp (brak dostępu) - trzeba odtworzyć

---

## Sesje

### Sesja 1 — 16.01.2026

**Sytuacja wyjściowa:**
- Link do checklisty ClickUp nie działa (wymaga logowania)
- Brak lokalnych dokumentów o Contabo/VPS
- Trzeba odtworzyć checklistę z wiedzy + web search

**Plan działań:**
1. [x] Zebrać wiedzę o instalacji Windows 10 na Contabo VPS
2. [x] Przygotować checklistę instalacji Windows 10
3. [x] Przygotować checklistę konfiguracji Claude Code
4. [x] Przygotować checklistę Git/GitHub

---

## Dokumenty robocze

- [CHECKLISTA-WINDOWS.md](workspace/CHECKLISTA-WINDOWS.md) — instalacja Windows 10
- [CHECKLISTA-CLAUDE-CODE.md](workspace/CHECKLISTA-CLAUDE-CODE.md) — konfiguracja Claude Code
- [CHECKLISTA-GIT.md](workspace/CHECKLISTA-GIT.md) — Git i GitHub

---

## Wiedza zebrana

### Instalacja Windows 10 na Contabo - dwie metody:

**Metoda 1: Gotowy obraz (najprostsza)**
- Użycie rescue mode (Clonezilla)
- Pobranie pre-built Windows 10 image z archive.org
- Szybka, ale mniej kontroli nad konfiguracją

**Metoda 2: Własne ISO z VirtIO (zaawansowana)**
- Modyfikacja ISO Windows z VirtIO drivers
- Upload do Contabo Custom Images
- Pełna kontrola, ale bardziej czasochłonna

### Kluczowe wymagania:
- **VirtIO drivers** — bez nich Windows nie zobaczy dysku/sieci
- **VNC Viewer** — do połączenia podczas instalacji
- **RDP** — do normalnej pracy po instalacji

### Źródła:
- [GitHub: Contabo-Windows10](https://github.com/oppositelocks/Contabo-Windows10)
- [erisa.dev](https://erisa.dev/install-windows-on-a-contabo-vps/)
- [Contabo Blog](https://contabo.com/blog/install-connect-contabo-server/)

---

## Rozwiązanie / Wynik

*(do uzupełnienia po zakończeniu)*
