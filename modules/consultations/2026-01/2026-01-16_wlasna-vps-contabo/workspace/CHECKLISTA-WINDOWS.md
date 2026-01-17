# Checklista: Instalacja Windows 10 na VPS Contabo

> Wygenerowano: 16.01.2026
>
> **UWAGA:** Instalacja Windows na VPS Contabo odbywa się na własne ryzyko.
> Contabo oficjalnie wspiera tylko Windows Server (płatny).

---

## Wymagania

| Element               | Opis                                                    |
|-----------------------|---------------------------------------------------------|
| Konto Contabo         | Aktywny VPS (najlepiej SSD)                             |
| VNC Viewer            | Do połączenia z konsolą VPS                             |
| Windows ISO           | Własne ISO z VirtIO drivers (lub gotowy obraz)          |
| Remote Desktop Client | Do połączenia po instalacji                             |

---

## Metoda 1: Gotowy obraz (najprostsza)

Używa pre-built image z Internet Archive. Szybka, ale mniej kontroli.

### Krok 1: Uruchomienie Rescue Mode

- [ ] Zaloguj się do [my.contabo.com](https://my.contabo.com)
- [ ] Idź do **My Services** → **Manage** → **Rescue System**
- [ ] Wybierz: **Clonezilla-live**
- [ ] Ustaw hasło rescue
- [ ] Kliknij **Start Rescue System**
- [ ] Poczekaj na restart (~2-3 min)

### Krok 2: Połączenie VNC

- [ ] W panelu Contabo kliknij **VNC Information**
- [ ] Pobierz: IP, Port, hasło VNC
- [ ] Otwórz VNC Viewer
- [ ] Połącz: `IP:PORT` (np. `192.168.1.1:5901`)
- [ ] Podaj hasło VNC

### Krok 3: Instalacja obrazu Windows

W konsoli Clonezilla:
- [ ] Wybierz: `Enter shell`
- [ ] Wpisz komendę:

```bash
wget -O- https://archive.org/download/windows10_202406/windows10.gz | gunzip | dd of=/dev/sda
```

- [ ] Podaj hasło rescue (gdy zapyta)
- [ ] Poczekaj na zakończenie (może potrwać ~10-20 min)
- [ ] Wpisz: `reboot`

### Krok 4: Konfiguracja Windows

- [ ] Połącz się ponownie przez VNC
- [ ] Dokończ OOBE (konfiguracja początkowa Windows)
- [ ] Utwórz konto użytkownika
- [ ] Połącz z siecią (powinno działać automatycznie)

### Krok 5: Włączenie Remote Desktop

- [ ] Wyszukaj: "Remote Desktop Settings"
- [ ] Włącz: **Enable Remote Desktop**
- [ ] Zapisz IP publiczne VPS
- [ ] Teraz możesz łączyć się przez RDP zamiast VNC

### Krok 6: Rozszerzenie partycji (opcjonalne)

Obraz ma małą partycję. Żeby wykorzystać cały dysk:

- [ ] Otwórz CMD jako Administrator
- [ ] Wykonaj:

```cmd
diskpart
list disk
select disk 0
list partition
select partition 3
delete partition override
exit
```

- [ ] Wyszukaj: "Create and Format Hard Disk Partitions"
- [ ] Kliknij prawym na **C:** → **Extend Volume**
- [ ] Rozszerz do maksimum

---

## Metoda 2: Własne ISO z VirtIO (zaawansowana)

Pełna kontrola, ale wymaga przygotowania własnego ISO.

### Przygotowanie ISO (na innym komputerze z Windows)

#### A. Pobranie plików

- [ ] Pobierz Windows 10 ISO z [microsoft.com](https://www.microsoft.com/software-download/windows10)
- [ ] Pobierz VirtIO drivers: [fedorapeople.org/virtio-win](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso)
- [ ] Zainstaluj: [WinCDEmu](https://wincdemu.sysprogs.org/) (do montowania ISO)
- [ ] Zainstaluj: [ImgBurn](https://www.imgburn.com/) (do tworzenia ISO)

#### B. Modyfikacja ISO

- [ ] Zamontuj Windows 10 ISO przez WinCDEmu
- [ ] Skopiuj CAŁĄ zawartość do nowego folderu (np. `C:\Win10ISO\`)
- [ ] Zamontuj VirtIO ISO
- [ ] Utwórz folder: `C:\Win10ISO\drivers\`
- [ ] Skopiuj z VirtIO do `drivers\`:
  - `viostor\` (storage driver - **KRYTYCZNY**)
  - `NetKVM\` (network driver)
  - `vioscsi\` (SCSI driver)
  - `Balloon\` (memory driver)
  - `qxldod\` (display driver)

#### C. Utworzenie nowego ISO

- [ ] Otwórz ImgBurn
- [ ] Wybierz: **Create image file from files/folders**
- [ ] Dodaj folder `C:\Win10ISO\`
- [ ] Ustawienia:
  - File System: UDF
  - UDF Revision: 1.02
  - Label: WIN10_VIRTIO
- [ ] Zapisz jako: `Windows10_Contabo.iso`

### Upload ISO do Contabo

- [ ] Zaloguj do [my.contabo.com](https://my.contabo.com)
- [ ] Idź do: **Custom Images** → **Order Custom Image**
- [ ] Upload swojego ISO (może potrwać — duży plik)
- [ ] Poczekaj na potwierdzenie

### Instalacja z Custom Image

- [ ] Idź do: **My Services** → **Manage**
- [ ] Wybierz: **Reinstall** lub **Boot from Custom Image**
- [ ] Wybierz swoje ISO
- [ ] Połącz przez VNC
- [ ] Podczas instalacji Windows:
  - Gdy nie widzi dysku → **Load Driver**
  - Wskaż folder `drivers\viostor\w10\amd64\`
  - Dysk powinien się pojawić
- [ ] Kontynuuj normalną instalację

---

## Po instalacji (obie metody)

### Sterowniki i aktualizacje

- [ ] Zainstaluj wszystkie VirtIO drivers (jeśli brakuje)
- [ ] Windows Update → zainstaluj wszystkie aktualizacje
- [ ] Sprawdź Device Manager → czy brak żółtych wykrzykników

### Bezpieczeństwo

- [ ] Zmień hasło administratora na silne
- [ ] Włącz Windows Firewall
- [ ] Rozważ zmianę portu RDP (domyślny 3389 jest często atakowany)
- [ ] Zainstaluj antywirus (opcjonalne)

### Optymalizacja VPS

- [ ] Wyłącz efekty wizualne:
  - System → Advanced → Performance Settings → **Adjust for best performance**
- [ ] Wyłącz zbędne usługi:
  - Windows Search (jeśli nie potrzebujesz)
  - Superfetch/SysMain
  - Print Spooler (jeśli nie drukujesz)

---

## Troubleshooting

| Problem                        | Rozwiązanie                                        |
|--------------------------------|----------------------------------------------------|
| Nie widzi dysku przy instalacji| Załaduj VirtIO viostor driver                      |
| Brak sieci po instalacji       | Zainstaluj NetKVM driver z VirtIO                  |
| VNC nie działa                 | Sprawdź czy VPS jest uruchomiony, odśwież hasło VNC|
| RDP nie łączy                  | Sprawdź firewall, włącz RDP w ustawieniach         |
| Wolne działanie                | Sprawdź czy VirtIO balloon driver jest zainstalowany|

---

## Źródła

- [GitHub: Contabo-Windows10](https://github.com/oppositelocks/Contabo-Windows10)
- [erisa.dev: Install Windows on Contabo VPS](https://erisa.dev/install-windows-on-a-contabo-vps/)
- [Contabo Blog: VPS/VDS Guide](https://contabo.com/blog/install-connect-contabo-server/)
