# Konsultacja: Migracja VPS Contabo

> **Klient:** WŁASNA
> **Data rozpoczęcia:** 17.01.2026
> **Status:** 🟡 W trakcie
> **Termin:** ~19.01.2026 (odnowienie starych VPS)

---

## Problem

Zakup 2 nowych VPS Contabo (Hub EU, nowsza platforma). Czy opłaca się migrować obrazy z istniejących VPS zamiast instalacji od zera?

---

## Stan obecny

### Nowe VPS (kupione)

| VPS | Lokalizacja | Platforma | Status |
|-----|-------------|-----------|--------|
| Nowy #1 | Hub EU | nowsza | Czeka na konfigurację |
| Nowy #2 | Hub EU | nowsza | Czeka na konfigurację |

### Istniejące VPS (do decyzji)

| VPS | Lokalizacja | Platforma | Zawartość | Odnowienie |
|-----|-------------|-----------|-----------|------------|
| Stary #1 | Hub EU | starsza | ? | ~19.01.2026 |
| Stary #2 | Indie | starsza | ? | ~19.01.2026 |
| Stary #3 | Australia | starsza | ? | ~19.01.2026 |

**ISO w storage Contabo:** Windows 10 (używane wcześniej)

---

## Analiza opcji migracji

### 1. Snapshot/Clone (najprostsza — NIE DZIAŁA)

- Contabo oferuje snapshoty VPS w panelu
- **Problem:** snapshoty są przypisane do TEGO SAMEGO VPS-a (restore, nie migration)
- **Wniosek:** NIE można przenieść snapshot między różnymi VPS-ami

### 2. Manual disk image (techniczna — RYZYKOWNA)

| Krok | Opis | Ryzyko |
|------|------|--------|
| 1 | Utworzyć obraz dysku (dd, clonezilla) na starym VPS | Wymaga miejsca |
| 2 | Przesłać na nowy VPS przez SFTP/rsync | Zależne od rozmiaru |
| 3 | Restore na nowym VPS z Rescue Mode | Problemy z bootowaniem |
| 4 | Fix driverów i reaktywacja Windows | WYSOKIE RYZYKO |

**Problem:** Windows wymaga reaktywacji, możliwe problemy z driverami na innej platformie.

### 3. Rsync/robocopy (tylko dane — BEZPIECZNA)

| Krok | Opis |
|------|------|
| 1 | Zainstalować czysty Windows na nowym VPS |
| 2 | Zainstalować potrzebne aplikacje |
| 3 | Przenieść dane (robocopy/rsync) |
| 4 | Skonfigurować usługi |

**Wniosek:** Najczystrza metoda, ale wymaga rekonfiguracji aplikacji.

### 4. Contabo Support (zależne od supportu)

- Czasem robią migracje na życzenie (ticket)
- Zależne od obciążenia supportu
- Bez gwarancji terminowości

---

## Rekomendacja

**Wariant pragmatyczny (2 dni):**

| Stary VPS | Rekomendacja | Uzasadnienie |
|-----------|--------------|--------------|
| **Australia** | REZYGNACJA | Najwolniejsze połączenie z EU, bez sensu utrzymywać |
| **Indie** | Świeża instalacja | Nowy Hub EU będzie szybszy |
| **Stary Hub EU** | Migracja danych | Robocopy na nowy Hub EU |

**Uzasadnienie:**
- Migracja obrazów w 2 dni = zbyt ryzykowne
- Czysta instalacja + przeniesienie danych = pewność
- Australia i tak była najwolniejsza z PL

---

## Pytania otwarte

1. **Co dokładnie jest na tych starych VPS-ach?**
   - Lista aplikacji
   - Ilość danych (GB)
   - Czy są rzeczy trudne do odtworzenia?

2. **Czy Australia rzeczywiście niepotrzebna?**
   - Może backup site?
   - Może testing z innej strefy czasowej?

3. **Do czego mają służyć nowe VPS-y?**
   - Ten sam cel co stare?
   - Nowe zastosowania?

---

## Log sesji

### 17.01.2026 — Sesja 1

- Rozpoczęcie konsultacji
- Analiza opcji migracji
- Wstępna rekomendacja: świeże instalacje + migracja danych
- Czekam na informacje o zawartości VPS-ów

### 17.01.2026 — Sesja 2

**Dylemat użytkownika:**
- Świeża instalacja = łatwiejsze, ale porzucenie konfiguracji
- Zachowanie całości = trudniejsze, ale "wszystko jak było"

**Kluczowe rozważanie:**
Nie chodzi tylko o dane (pliki) — chodzi o:
- Zainstalowane programy
- Konfiguracje (ścieżki, ustawienia, integracje)
- Środowisko (zmienne, uprawnienia, usługi)
- "To działa i nie wiem dlaczego" — efekt wielu prób i błędów
- **LICENCJE** — oprogramowanie które może nie dać się ponownie aktywować

---

## RESEARCH: Czy migracja obrazu jest możliwa?

### Oficjalne opcje Contabo

| Opcja | Możliwość | Uwagi |
|-------|-----------|-------|
| Snapshot → inny VPS | ❌ NIE | Snapshoty tylko do rollback na TYM SAMYM VPS |
| Live Migration (region) | ✅ TAK | Ale to przenosi TEN SAM VPS, nie klonuje na NOWY |
| Custom Images (QCOW2) | ⚠️ CZĘŚCIOWO | Wspierane, ale "Windows licensing rules" — nie można użyć własnej licencji Windows |

**Koszt Live Migration:** €33 / $38.50 (jednorazowo)

**Źródła:**
- [Contabo: Transfer VPS to Another Region](https://contabo.com/blog/transfer-contabo-vps-to-another-region/)
- [Contabo: Custom Images](https://help.contabo.com/en/support/solutions/articles/103000274171)

### Metoda ręczna: Clonezilla + Rescue Mode

**Czy jest możliwa?** ✅ TAK, technicznie wykonalne

**Procedura:**
1. Wyłącz stary VPS
2. Uruchom w Rescue Mode (Clonezilla ISO)
3. Utwórz obraz dysku → wyślij przez SSH na nowy VPS
4. Na nowym VPS: Rescue Mode → restore obrazu
5. Boot i naprawa

**Alternatywa (dd przez SSH):**
```bash
dd if=/dev/sda | gzip | ssh root@nowy_vps 'gzip -d | dd of=/dev/sda'
```

**Źródła:**
- [LinuxBabe: Clonezilla VPS Migration](https://www.linuxbabe.com/linux-server/use-clonezilla-back-up-migrate-vps)
- [Klocker-Mark: VPS Migration](https://www.klocker-mark.eu/migrating-a-linux-server-from-one-vps-to-another-over-network/)
- [Hostzealot: Clonezilla Guide](https://www.hostzealot.com/blog/how-to/simplify-vps-migration-with-clonezilla-a-step-by-step-guide)

### Problem: Windows i licencje

**Kluczowe ustalenie:** Windows rozpoznaje "zmianę hardware" przy migracji między VPS-ami, nawet jeśli oba są na KVM!

| Sytuacja | Efekt |
|----------|-------|
| Ten sam hypervisor, inna wersja | Może wymagać reaktywacji |
| Inna platforma (starsza → nowsza) | PRAWDOPODOBNIE wymaga reaktywacji |
| Różne UUID maszyny | Windows widzi jako "nowy komputer" |

**Co to oznacza dla Twoich licencji:**

| Typ licencji | Przy migracji |
|--------------|---------------|
| OEM (przypisana do hardware) | ❌ Nie przeniesie się |
| Retail (kupiona osobno) | ✅ Można reaktywować (telefon/online) |
| Volume (KMS) | ✅ Reaktywuje automatycznie |
| Subskrypcja (O365 linkowana) | ✅ Powinno działać po zalogowaniu |

**Źródła:**
- [Qubes Forum: Windows activation after QCOW2 migration](https://forum.qubes-os.org/t/converting-windows-10-qcow2-vm-to-qubes-hvm-results-in-change-of-hardware-and-stops-activation-of-windows-license/25252)
- [Proxmox Forum: Clone KVM Windows VM](https://forum.proxmox.com/threads/how-to-clone-a-kvm-windows-virtual-machine.1265/)

### Dodatkowe oprogramowanie z licencjami

**Ryzyko przy migracji obrazu:**
- Programy "node-locked" (licencja = konkretna maszyna)
- Aktywacje przez hardware fingerprint
- Oprogramowanie antypirackie (Denuvo-style)

**Zwykle OK przy migracji:**
- Licencje przypisane do konta użytkownika (Adobe, JetBrains, Office 365)
- Open source
- Freeware

### WNIOSKI Z RESEARCHU

| Pytanie | Odpowiedź |
|---------|-----------|
| Czy migracja obrazu jest możliwa? | ✅ TAK, przez Clonezilla/dd |
| Czy Contabo to wspiera oficjalnie? | ❌ NIE (snapshoty nie przenoszą się) |
| Czy Windows się uruchomi? | ⚠️ PRAWDOPODOBNIE (mogą być problemy z driverami) |
| Czy licencja Windows będzie działać? | ⚠️ WYMAGA REAKTYWACJI (chyba że KMS) |
| Czy inne licencje będą działać? | ❓ ZALEŻY od typu licencji |

### REKOMENDACJA PO RESEARCHU

**Jeśli masz oprogramowanie z wrażliwymi licencjami:**
1. Zrób listę programów i typów licencji
2. Sprawdź czy każdy pozwala na "zmianę hardware"
3. Przygotuj klucze/loginy do reaktywacji

**Warianty:**

| Wariant | Dla kogo | Ryzyko |
|---------|----------|--------|
| A: Świeża + dane | Nie pamiętasz co instalowałeś | NISKIE |
| B: Clonezilla clone | Masz czas na debugging | ŚREDNIE |
| C: Hybrid (clone + test → świeża jeśli problem) | Chcesz spróbować zachować | ŚREDNIE |

**Wariant C (hybrid) — szczegóły:**
1. Sklonuj obraz na JEDEN z nowych VPS
2. Przetestuj czy działa (boot, licencje)
3. Jeśli OK → masz działający VPS
4. Jeśli NIE → świeża instalacja (masz drugi nowy VPS)
5. Dane przenieś osobno (robocopy)

---

## Decyzja

[Do wypełnienia po odpowiedzi na pytania]

---

## Następne kroki

Po decyzji:
- [ ] Backup danych ze starych VPS
- [ ] Instalacja Windows na nowych VPS
- [ ] Przeniesienie danych
- [ ] Konfiguracja usług
- [ ] Test działania
- [ ] Rezygnacja ze starych VPS

---

> **Koniec notatek konsultacji**
