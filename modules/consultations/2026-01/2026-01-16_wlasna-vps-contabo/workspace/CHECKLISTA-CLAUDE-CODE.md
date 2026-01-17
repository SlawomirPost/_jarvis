# Checklista: Konfiguracja Claude Code na Windows

> Wygenerowano: 16.01.2026
>
> Konfiguracja środowiska do pracy z Claude Code CLI w podobnej konfiguracji jak obecny setup.

---

## Wymagania

| Element               | Wersja/Info                                        |
|-----------------------|----------------------------------------------------|
| System                | Windows 10/11                                      |
| Node.js               | v20 LTS lub nowszy                                 |
| npm                   | (instalowany z Node.js)                            |
| Git                   | Najnowsza wersja                                   |
| VS Code               | Najnowsza wersja (opcjonalne, ale zalecane)        |
| Klucz API Anthropic   | Z console.anthropic.com                            |

---

## Etap 1: Podstawowe narzędzia

### Node.js

- [ ] Pobierz Node.js LTS z [nodejs.org](https://nodejs.org/)
- [ ] Zainstaluj z domyślnymi opcjami
- [ ] Sprawdź instalację:

```powershell
node --version
npm --version
```

### Git

- [ ] Pobierz Git z [git-scm.com](https://git-scm.com/download/win)
- [ ] Podczas instalacji:
  - [x] Git Bash Here (przydatne)
  - [x] Use Git from Windows Command Prompt
  - [x] Use Windows' default console window
- [ ] Sprawdź instalację:

```powershell
git --version
```

### VS Code (opcjonalne, ale zalecane)

- [ ] Pobierz z [code.visualstudio.com](https://code.visualstudio.com/)
- [ ] Zainstaluj z opcjami:
  - [x] Add "Open with Code" to context menu
  - [x] Add to PATH

---

## Etap 2: Instalacja Claude Code CLI

### Instalacja globalna

- [ ] Otwórz PowerShell (jako zwykły użytkownik, NIE admin)
- [ ] Zainstaluj Claude Code:

```powershell
npm install -g @anthropic-ai/claude-code
```

- [ ] Sprawdź instalację:

```powershell
claude --version
```

### Pierwsza konfiguracja

- [ ] Uruchom Claude Code:

```powershell
claude
```

- [ ] Przy pierwszym uruchomieniu Claude poprosi o klucz API
- [ ] Wklej klucz API z [console.anthropic.com](https://console.anthropic.com/)
- [ ] Klucz zostanie zapisany w konfiguracji

---

## Etap 3: Konfiguracja Git (tożsamość)

- [ ] Ustaw nazwę użytkownika:

```powershell
git config --global user.name "Twoje Imię"
```

- [ ] Ustaw email:

```powershell
git config --global user.email "twoj@email.com"
```

- [ ] Sprawdź konfigurację:

```powershell
git config --list
```

---

## Etap 4: Klucz SSH dla GitHub

### Generowanie klucza

- [ ] Wygeneruj klucz SSH:

```powershell
ssh-keygen -t ed25519 -C "twoj@email.com"
```

- [ ] Naciśnij Enter dla domyślnej lokalizacji
- [ ] Ustaw passphrase (lub zostaw puste)

### Dodanie klucza do GitHub

- [ ] Skopiuj klucz publiczny:

```powershell
cat ~/.ssh/id_ed25519.pub
```

- [ ] Idź do [GitHub → Settings → SSH Keys](https://github.com/settings/keys)
- [ ] Kliknij **New SSH key**
- [ ] Wklej klucz, nadaj nazwę (np. "VPS Contabo")
- [ ] Zapisz

### Test połączenia

- [ ] Przetestuj połączenie:

```powershell
ssh -T git@github.com
```

- [ ] Powinno pokazać: "Hi username! You've successfully authenticated..."

---

## Etap 5: Struktura katalogów

Utwórz strukturę podobną do obecnej:

- [ ] Utwórz katalog główny:

```powershell
mkdir C:\WORK
mkdir C:\WORK\projects
```

- [ ] Sklonuj projekt(y):

```powershell
cd C:\WORK\projects
git clone git@github.com:TWOJ-USER/TWOJ-REPO.git
```

---

## Etap 6: Rozszerzenie Claude Code do VS Code (opcjonalne)

- [ ] Otwórz VS Code
- [ ] Idź do Extensions (Ctrl+Shift+X)
- [ ] Wyszukaj: "Claude"
- [ ] Zainstaluj oficjalne rozszerzenie Anthropic
- [ ] Skonfiguruj klucz API w ustawieniach rozszerzenia

---

## Etap 7: Weryfikacja środowiska

### Test Claude Code

- [ ] Otwórz terminal w katalogu projektu:

```powershell
cd C:\WORK\projects\TWOJ-REPO
claude
```

- [ ] Sprawdź czy Claude działa poprawnie
- [ ] Przetestuj podstawowe operacje (odczyt pliku, edycja)

### Test Git

- [ ] Sprawdź status repo:

```powershell
git status
```

- [ ] Sprawdź czy push działa:

```powershell
# Zrób małą zmianę i sprawdź czy push przechodzi
git add .
git commit -m "test: weryfikacja połączenia"
git push
```

---

## Konfiguracja dodatkowa

### Aliasy PowerShell (opcjonalne)

Dodaj do profilu PowerShell (`$PROFILE`):

```powershell
# Otwórz profil
notepad $PROFILE
```

Dodaj aliasy:

```powershell
# Alias do szybkiego uruchamiania Claude
function cc { claude }

# Skrót do katalogu projektów
function proj { cd C:\WORK\projects }
```

### Zmienne środowiskowe

Jeśli chcesz ustawić klucz API jako zmienną środowiskową:

- [ ] Wyszukaj: "Environment Variables" w Windows
- [ ] Dodaj nową zmienną użytkownika:
  - Nazwa: `ANTHROPIC_API_KEY`
  - Wartość: `sk-ant-...`

---

## Troubleshooting

| Problem                           | Rozwiązanie                                      |
|-----------------------------------|--------------------------------------------------|
| `claude` nie rozpoznawane         | Zamknij i otwórz nowy terminal, sprawdź PATH     |
| Błąd klucza API                   | Sprawdź czy klucz jest aktywny na console.anthropic.com |
| Git push wymaga hasła             | Użyj SSH zamiast HTTPS, dodaj klucz do GitHub    |
| SSH permission denied             | Sprawdź czy klucz dodany do GitHub, `ssh-add`    |
| VS Code nie widzi Claude          | Przeładuj VS Code, sprawdź rozszerzenie          |

---

## Przydatne linki

- [Claude Code Documentation](https://docs.anthropic.com/claude-code)
- [Anthropic Console](https://console.anthropic.com/)
- [GitHub SSH Setup](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
- [Node.js Downloads](https://nodejs.org/)
- [Git Downloads](https://git-scm.com/)
