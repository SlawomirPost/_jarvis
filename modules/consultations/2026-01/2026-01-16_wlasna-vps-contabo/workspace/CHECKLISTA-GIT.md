# Checklista: Pobranie projektu z GitHub

> Wygenerowano: 16.01.2026
>
> Szybka checklista do sklonowania jednego projektu z GitHub na nowym VPS.

---

## Wymagania wstępne

Przed rozpoczęciem upewnij się, że masz:

- [ ] Zainstalowany Git (patrz: CHECKLISTA-CLAUDE-CODE.md)
- [ ] Skonfigurowaną tożsamość Git (`user.name` i `user.email`)
- [ ] Dodany klucz SSH do GitHub (patrz: CHECKLISTA-CLAUDE-CODE.md)

---

## Krok 1: Przygotowanie struktury

- [ ] Utwórz katalog na projekty:

```powershell
mkdir C:\WORK\projects
cd C:\WORK\projects
```

---

## Krok 2: Pobranie URL repozytorium

Na GitHubie:
- [ ] Idź do repozytorium które chcesz sklonować
- [ ] Kliknij zielony przycisk **Code**
- [ ] Wybierz zakładkę **SSH**
- [ ] Skopiuj URL (format: `git@github.com:user/repo.git`)

---

## Krok 3: Klonowanie

- [ ] Sklonuj repozytorium:

```powershell
git clone git@github.com:TWOJ-USER/NAZWA-REPO.git
```

- [ ] Wejdź do katalogu:

```powershell
cd NAZWA-REPO
```

- [ ] Sprawdź status:

```powershell
git status
git log --oneline -5
```

---

## Krok 4: Weryfikacja

- [ ] Sprawdź czy remote jest ustawiony:

```powershell
git remote -v
```

Powinno pokazać:
```
origin  git@github.com:TWOJ-USER/NAZWA-REPO.git (fetch)
origin  git@github.com:TWOJ-USER/NAZWA-REPO.git (push)
```

- [ ] Sprawdź czy możesz push'ować (test):

```powershell
# Utwórz testową zmianę
echo "test" >> test.txt
git add test.txt
git commit -m "test: weryfikacja połączenia z nowego VPS"
git push

# Jeśli zadziałało, cofnij zmianę
git revert HEAD --no-edit
git push
```

---

## Troubleshooting

| Problem                          | Rozwiązanie                                       |
|----------------------------------|---------------------------------------------------|
| Permission denied (publickey)    | Sprawdź klucz SSH: `ssh -T git@github.com`        |
| Repository not found             | Sprawdź URL, uprawnienia do repo                  |
| Could not read from remote       | Sprawdź połączenie internetowe, firewall          |
| Detached HEAD                    | `git checkout main` lub `git checkout master`     |

---

## Przydatne komendy Git

| Komenda                          | Opis                                              |
|----------------------------------|---------------------------------------------------|
| `git pull`                       | Pobierz najnowsze zmiany                          |
| `git status`                     | Sprawdź status lokalnych zmian                    |
| `git log --oneline -10`          | Ostatnie 10 commitów                              |
| `git branch -a`                  | Lista wszystkich gałęzi                           |
| `git stash`                      | Schowaj lokalne zmiany                            |
| `git stash pop`                  | Przywróć schowane zmiany                          |

---

## Po sklonowaniu

Jeśli projekt ma plik `CLAUDE.md`:
- [ ] Przeczytaj go — zawiera instrukcje dla Claude Code
- [ ] Uruchom `claude` w katalogu projektu

Jeśli projekt wymaga instalacji dependencies:
- [ ] Node.js: `npm install`
- [ ] Python: `pip install -r requirements.txt`
- [ ] Inne: sprawdź README.md
