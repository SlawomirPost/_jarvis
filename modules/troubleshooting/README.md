# Troubleshooting - Baza rozwiązań problemów

Repozytorium rozwiązań problemów technicznych napotykanych u Klientów i we własnych projektach.

---

## Kategorie

| Katalog | Zakres | Przykłady |
|---------|--------|-----------|
| [windows/](windows/) | Systemy Windows | BSOD, sterowniki, uprawnienia, rejestry, usługi |
| [wordpress/](wordpress/) | WordPress i WooCommerce | Wtyczki, motywy, bazy danych, migracje, SSL |
| [n8n/](n8n/) | Automatyzacje n8n | Workflow, credentials, node'y, błędy wykonania |
| [hosting/](hosting/) | Hostingi i serwery | cPanel, DNS, SSL, FTP, email, limity |
| [linux/](linux/) | Systemy Linux | Uprawnienia, procesy, cron, bash, pakiety |
| [networking/](networking/) | Sieci i połączenia | DNS, firewall, VPN, proxy, porty |
| [databases/](databases/) | Bazy danych | MySQL, PostgreSQL, backup, recovery, optymalizacja |
| [other/](other/) | Inne problemy | Wszystko co nie pasuje do powyższych |

---

## Jak dodawać rozwiązania

1. **Wybierz kategorię** - katalog odpowiadający technologii
2. **Utwórz plik** - nazwa: `OPIS-PROBLEMU.md` (np. `wordpress-bialy-ekran.md`)
3. **Użyj szablonu** - skopiuj z [templates/PROBLEM_TEMPLATE.md](../templates/PROBLEM_TEMPLATE.md)
4. **Wypełnij sekcje** - problem, środowisko, rozwiązanie, weryfikacja

## Konwencja nazewnictwa plików

```
[technologia]-[krótki-opis].md
```

**Przykłady:**
- `windows-bsod-ntfs.md`
- `wordpress-bialy-ekran.md`
- `n8n-timeout-http-request.md`
- `hosting-ssl-mixed-content.md`

## Szybkie wyszukiwanie

W katalogu `_tools-and-lab` użyj:
```bash
grep -ri "słowo kluczowe" troubleshooting/
```

---

## Statystyki

| Kategoria | Liczba rozwiązań |
|-----------|------------------|
| windows | 0 |
| wordpress | 0 |
| n8n | 0 |
| hosting | 0 |
| linux | 0 |
| networking | 0 |
| databases | 0 |
| other | 0 |
| **RAZEM** | **0** |

> Aktualizuj tabelę przy dodawaniu nowych rozwiązań.
