# Transkrypcja: Claude Code od ZERA

> **Źródło:** https://youtu.be/ERB1JUobDIs
> **Autor:** Akademia Automatyzacji (Kacper Trzepieciński, Marcin)
> **Data webinaru:** Styczeń 2026
> **Czas trwania:** ~90 minut

---

## Opis

Webinar wprowadzający do Claude Code - narzędzia CLI od Anthropic. Omówione tematy:
- Instalacja i konfiguracja Claude Code
- Podstawy pracy z narzędziem
- Dobre praktyki i wskazówki (top 12)
- Rozszerzenia i integracje (MCP, serwery)
- Przykłady zastosowań (aplikacje webowe, osobisty asystent, landing page)
- Praca z plikiem CLAUDE.md
- Tryby pracy: Plan mode, nocna zmiana, równoległe zadania

---

## Transkrypcja


Momento. Zaraz zaczniemy. Jeszcze chwilkę czekamy na YouTubea, bo działamy na kilku po prostu platformach jednocześnie i potrzebujemy jeszcze YouTubea.
Dobra, super. Mam potwierdzenie, że już wszystkie nasze kanały działają, więc minutka, dwie mieliśmy obsuwy, ale już możemy zacząć. Super. Słuchajcie, witam serdecznie wszystkich zebranych. Bardzo
się cieszę, że udało się zebrać taką grupę osób, którzy tak jak my widzą potencjał w tym narzędziu, jeżeli chodzi o clot code, a ja mam dzisiaj jeden główny cel, żeby
przez te półtorej godziny opowiedzieć wam o tym narzędziu, wprowadzić was w to narzędzie, też pokazać jak na nim pracować. Więc zaraz sobie przejdziemy już do samej prezentacji, bo
przygotowaliśmy od groma ciekawych rzeczy. Jest dużo informacji. Ja trochę się obawiam, że wszystkim nie zdążę, więc postaram się też przekazywać te informacje w sposób
płynny. Jeżeli się martwicie trochę szybkością, to oczywiście nagranie będzie dostępne po naszym liveie, więc na spokojnie będziecie mogli sobie je obejrzeć, wrócić do tego w opisie, w
materiale na YouTubie i tak tak też na innych platformach powinien być link do Wimsala. To jest prezentacja, z którą będę pracował dzisiaj. Tam będzie dużo materiałów pomocniczych, które dla was
przygotowałem, więc jak coś chcecie być też na bieżąco z moją prezentacją, możecie sobie ją odpalić w drugim okienku i też scrollować tak naprawdę w międzyczasie, jeżeli chodzi o to. Więc
ja jeszcze raz się przedstawię. Na początek Kacper Trzepieciński, prowadzę wraz z Marcinem społeczność Akademia Automatyzacji. I jak powiedziałem wcześniej, naszym celem się na tym
liveie jest to, żeby wam przybliżyć narzędzie Cloud Code, tak abyście nabyli jakieś taką fundamentalną wiedzę, jak z nim pracować, jakie są dobre praktyki.
Pokażę wam kilka sztuczek, pokażę wam ciekawe rozszerzenia tego narzędzia, które pozwolą wam robić no interesujące rzeczy. Ale to wszystko przed wami. Więc przeskoczmy sobie teraz już do
bezpośrednio naszej prezentacji i na tym się skupmy i będziemy sobie lecieć już z całym cloud codem, jeżeli chodzi o to, co dla was przygotowaliśmy dzisiaj.
Okej. I jesteśmy teraz na naszej prezentacji. Słuchajcie, kilka kwestii takich organizacyjnych, które już wpadły w komentarzach, ludzie pytali, ale powtórzę. 90 minut 21:30. Mniej więcej
założyliśmy sobie, że skończymy tego live'a. No ale jak będzie dużo pytań, to oczywiście zostaniemy dłużej i będziemy na nie odpowiadać. Na końcu będzie sesja Q&A, więc słuchajcie, ja na pytania nie
będę odpowiadał w trakcie, bo ich nie będę widział. Muszę się skupić na tym, co wam przekazuję, ale Marcin obiecywał, że będzie po prostu dla mnie jest wszystkie tutaj ładnie zbierał. i na
samym końcu będziemy sobie je omawiać. No dobrze, teraz tak, oczywiście nagranie będzie dostępne na YouTubie po tym liveie i wszystkie materiały, jak mówiłem są dostępne w opisie. Tutaj
macie też link do repozytorium, którego będę używał podczas pracy z Clodem, ale to już sami też wywnioskujecie. Możecie sobie pobrać.
Ogólnie może na początek kilka takich przykładów, bo dużo osób się może zastanawiać. Obracuję z Clodem, z narzędziami Antropica. Ale ten clot code, do czego to służy, do czego to mi
się w ogóle może przydać? Więc mamy na początku przygotowane trzy przykłady dla was, co w ogóle możecie stworzyć za pomocą tego narzędzia. Więc w pierwszej kolejności skupmy się na aplikacjach
webowych, aplikacjach firmowych, jakiś mini SASach, mini produktach, które możecie z tym narzędziem tworzyć. Pokażę wam dwa przykłady. Jeden z tych przykładów to jest apka piszemy wirale,
którą byliśmy w listopadzie też za pomocą tego narzędzia. Ona głównie była przenoszona po to, aby po prostu też ją zmonetyzować, sprzedać, co się z sukcesem udało. Natomiast jeżeli chodzi
o nią, ona ma pomagać tak naprawdę w tworzeniu wiralowych treści. Nie będę teraz się zagłębiał jak ona działa, ale samą kwestią jest to, że zbudowaliśmy ją w pełni tak naprawdę na poprzez nazie
cloud code. Jak widzicie tutaj zaloguję się teraz na moje konto bezpośrednio, gdzie mam dostęp do wszystkich szablonów. Tutaj mamy obsługę płatności, więc za pomocą takiego to też możemy
sobie budować właśnie apki, które na przykład chcemy sobie zmonetyzować. A wiem, że wielu z was ma wiele świetnych pomysłów w głowie pochowanych po szufladach, a doars byli troszkę
ograniczeni przez barierę technologiczną. Po prostu nie umieli programować, mieli fajny pomysł. No ale no nie stać ich było na zespoły deweloperskie, więc to narzędzie w pełni
może z tym pomóc. Ale w mojej ocenie to co będzie rewolucją, jeżeli chodzi o to narzędzie bądź też bardzo podobne inne narzędzie, które mamy na rynku, to są produkty, które będziecie tworzyć na
własne potrzeby, czyli tule mają rozwiązywać bezpośrednio wasze problemy.
Ponieważ często jest tak, że dotychczas jak szukaliśmy jakiegoś narzędzia, ponieważ potrzebowaliśmy coś zrobić, no to co Google, mamy aplikację, okej, trzeba było kupić sobie abonament, no i
tak to było z tymi narzędziami, trzeba było za nie płacić, a w tym momencie możemy worzyć na własny użytek narzędzia, które są dla nas przydatne.
Tutaj właśnie mamy przykład tego, co Marcin stworzył w grudniu. To jest nie jest to piękny design designersko, ale robi świetną robotę. Już wam tłumaczę.
Ona rzędzie nazywa się Night and Warfall Animator i tworzy dla nas tak naprawdę materiały na YouTubie. na YouTubea filmy, które są w pełni stworzone przez AI i pokażę wam jak one wyglądają, bo
też sobie specjalnie założyliśmy kanał na YouTubie. Teraz możecie go sobie zobaczyć. Strefa Akademii Automatyzacji.
Wrzuciliśmy cztery materiały, które są w pełni wygenerowane przez AI.
Tutaj oczywiście przepraszam, ale nie mam płatnego YouTubea, więc chwilka, reklama przewinie się.
Okej. I tak naprawdę tutaj widzicie avatar, cały ten workflow, ta animacja, która tu jest, narracja, lektor jest wygenerowana przez AI, więc wszystko to sobie
stworzyśmy w tej aplikacji, którą Marcin sobie tak naprawdę wytworzył, stworzył za płacą narzędzia Cloud Code. No i to jest właśnie ten pierwszy przykład, co możecie otworzyć, czyli aplikacje
webowe, aplikacje firmowe. Druga rzecz to jest osobisty asystent i dla mnie to jest prawdziwa rewolucja, ponieważ działam z nim tak od trzech tygodni. yyy przeniosłem tak naprawdę całą swoją
pracę, całe swoje tudusy, wszystko co robię tak naprawdę przy komputerze do osobistego asystenta. Jak to narzędzie działa, już wam pokazuję jak to wszystko tutaj będzie wyglądało. Tylko pozwócie
sobie, że zmienię widok na ekranie i teraz przeniesiemy tutaj sobie konsolę.
Okej, tu mamy konsolę, tutaj mamy obsidiana. W dużym skrócie, słuchajcie, mam po prawej stronie obsidiana. Wiel może to kojarzyć. To jest taki trochę rozbudowany notatnik, ale służy jako
baza wiedzy. I w tym miejscu tak naprawdę trzymam wszystkie swoje informacje, całą bazę wiedzy o mnie, o firmie, o tym jak pracuję i jak piszę.
też mam przykład na przykład toy i w tym momencie jak sobie w terminalu, gdzie mam odpalonego cloda, wpiszę teraz na przykład komendę daily to uruchomi mi się tak naprawdę podsumowanie całego
mojego dnia, czyli klock sobie spojrzę jakie mam zadania, jakie wykonałem, zaktualizuję je, uporządkuję moją listę po prawej stronie, przy okazji pokażę mi jak wygląda zmiana moich obserwujących
na Xie, na LinkedInie i też wskaże mi zadania, którymi się powinienem zająć na przykład w pierwszej kolejności, bo są priorytetowe według niego, według klucza, który sobie ustaliliśmy. I to
jest naprawdę mega fajne podejście, ponieważ to przyspiesza pracę wielokrotnie niż jak pracowaliśmy takimi typowymi aplikacjami, jeżeli chodzi na przykład o chat GPT czy clot. No i
słuchajcie, on teraz mnie prosi czy zarchiwizować wykonane zadania. Daję mu znać, żeby je zarchiwizował. Za chwilkę prawej stronie wszystko ładnie zniknie i będę już miał wyczyszczoną listę. No i
przy okazji dostanę jeszcze od niego informację zwrotną, jeżeli chodzi o to, jak wygląda kwestia zmiany moich obserwujących, do czego też to używam, jeżeli chodzi o to cały content
marketing z tym tworzę, czyli mam tutaj po prawej stronie na przykład zakładkę marketing, gdzie zobaczcie mam wpisy z tego roku wszystkie utworzone i na przykład wpisy, które tworzyłem, które
są tutaj, tworzyłem bezpośrednio z clodem, czyli wrzucałem mu jakąś zajawkę, wrzucałem mu materiały z YouTubea, z Xa jakieś wpisy, no i dawałem mu konspekt, że chcę dzisiaj
opisać to, to i to. On zapoznał się z materiałami, wie jak pisze, ponieważ ma przygotowany ton of voice. Ma też przygotowane wszystkie złe praktyki, które AI tworzą do tekstu. I wraz z nim
sobie to wszystko iterowałem. Pisałem mu w konsoli, co mi się podoba, co mi się nie podoba, jak ma Hook poprawić, jak ma Hooka nie poprawić, jak było wszystko w porządku. Zapisywał i co robił dalej?
Mówiłem mu opublikuj to na XI, na LinkedInie. On ma bezpośrednio połączenie z moim kontem, za pomocą postizza i publikował to. Więc jeżeli chodzi o kwestię takiego osobistego
asystenta, personal OS, jak to nazywam, z tym będziemy do was wracać w lutym z kolejnym liveem, więc takim krótką zajawkę wam na razie zrobiłem, jak to będzie wszystko wyglądało. No dobrze,
przerzućmy się teraz na prezentację. No i teraz tak, kolejnym przykładem, który mamy jeszcze, jest to przykład takich wyspecjalizowanych agentów, których też mamy stworzonych. My na
przykład sobie stworzyliśmy w Cloud Code Agenda, który nam tworzy landing page i słuchajcie to jest mega, ponieważ te landing page są świetne. Może po prostu pokażę, żeby tutaj można powiedzieć,
żeby to miało bez pokrycia. Przykładowo, jeżeli chodzi o landing na naszego live'a, który Marcin stworzył dosłownie w półtorej dnia, jeżeli chodzi o to, jak on wygląda,
zaraz go przeskrolluję. Większość z was zapisała się, więc była na nim, ale na przykład wszystkie te rzeczy, animacje, które tutaj są, były tworzone przez Cloda. On tylko i wyłącznie ma
informacje, jak wygląda nasz design, jakie mamy informacje o naszej naszym biznesie, jak chcemy, żeby to wszystko wyglądało, jak mówimy, można powiedzieć do odbiorców i on to mniej więcej
tworzył w tym. Oprócz tego mamy też kilka jeszcze innych landing pageów stworzonych. Tutaj macie też landing stworzony typowo pod Natena gdzie celem było też budowanie le z góry i łapanie
nowych można potencjalnych odbiorców do naszego mailingu i też przy okazji afiliacja którą mamy tutaj zaszytą jeżeli chodzi na przykład o wprowadzenie instalację naenad gdzie rekomendujemy
hostingera i ostatnim landingiem który stworzył też Marcin niedawno jest landing właśnie już bezpośrednio po naszą społeczność w mojej ocenie wygląda w tym momencie najlepiej bo też Marcin
czas na niego poświęcił też kwestia animowania na przykład tych rzeczy które tutaj tutaj występują. Dla mnie to jest mega. Więc trzy rzeczy, o których wam wspomniałem do czego możecie wyktać
cloud code, czyli aplikacje webowe firmowe, osobisty asystent czy wyspecjalizowany po prostu agent do tworzenia na przykład landing pagey, jak my w tym sytuacji.
No dobra, słuchajcie, teraz tak mały spoiler, co będzie pokazane, co wyniesiecie po tym liveie. Pokażę wam jak zainstalować i skonfigurować. Pokażę wam jak sprawnie się po tym narzędziu
poruszać. Poznacie najważniejszą zasadę pracy ogólnie z z takimi narzędziami agentowymi jak Cloud Cod. Pokażę wam jak tworzyć, delegować zadania.
Przygotowałem dla was top 12 dobrych praktyk jeżeli chodzi i wskazówek z Cloud Code. Pokażę wam jak wysłać Cloda na nocną zmianę. Kiedy wyspicie wyśpicie on będzie pracował za was. Pokażę wam
narzędzia, które przyspieszają ogólnie pracę z Cloud Code. Pokażę wam jak wykorzystać kluczowe funkcje, których nie ma w innych narzędziach bądź są już można powiedzieć podbierane. No i też
pokazuję jak wykonywać wiele zadań równolegle. Więc po tym liveie mniej więcej tak wyglądacie obecnie. Macie duży znak zapytań nad głową, ale wyniesiecie dużo i można powiedzieć
zmienicie się w taką personę, która już zaczyna to ogarniać. Ja wam nie obiecuję od razu mówię gruszek na wzbie po tym liveie nie będziecie tworzyć aplikacji za tysiące doarów chodzi o to żebyście
nabyli fundamenty zrozumieli jak to narzędzie pracuje. To jak wasza droga, dal wasza droga się pokieruje z tym narzędziem zależy od was, ale ja po prostu chcę troszkę zaradzić tą zajawką
tego narzędzia i pokazać jak w nim pracować. I zastanawiam się troszkę jak Cloda opisać jakimś cytatem tak naprawdę jednym zdaniem i to co mi przyszło do głowy, że pracując z Cloudk czuję się
jakbyś delegował zdanie do kolegi, a nie po prostu promptował chatbota. I jak tak trochę to widzę, jeżeli chodzi o pracę z tym narzędziem, bardzo ważna informacja, dla kogo w ogóle jest ten live, bo ja
też nie ukrywam, że to nie jest live dla osób mega zaawansowanych. Skupialiśmy się głównie, aby dotrzeć do osób, które nigdy nie pracowały z tym narzędziem. Po prostu będzie ich pierwsza styczność
podczas tego live'a. Albo osoby, które używają, ale trochę się gubią, nie do końca ogarniają to narzędzie, bądź szukają jakichś sprawdzonych metod, wskazówek, dobrych praktyk, którymi też
będę chciał się podzielić podczas dzisiejszego spotkania.
Dobra, słuchajcie, więc teraz tak. Podczas tego live'a skupimy się na tej sekcji builderze projektów. Osobisty asystent to jest temat na kolejnego live'a.
Wyspecjalizowany agent też mniej więcej z tego livea będziemy mogli sobie wyciągnąć, ale skupimy się na tej pierwszej części, czyli jak się poruszać, jeżeli chodzi o budowanie
czegoś, tworzenie, jeżeli chodzi o jakieś projekty, aplikacje i tak dalej.
Okej, jeszcze dwa słowa, bo to jest też dla mnie bardzo ważne, ponieważ w tym momencie uważam, że powoli przechodzimy pewną transformację. Może tak trochę to brzmi górnolotnie, ale przechodzimy z
fazy 1.0 do 2.0, jeżeli chodzi o pracę z narzędziami AI, ponieważ dotychczas jeżeli chodzi na przykład pracy z Clodem w przeglądarce z czadem GPT, to często było tak, że wy kopiowaliście
informacje, przykleiliście tam, on dla was to generował, trzeba było to skopiować z powrotem do innego narzędzia i tak dalej i tak dalej, co było mega niewygodne. Tak, pomimo tego, że dałam
na tą wartość, to trzeba było dużo rzeczy robić wokół tego wszystkiego.
Natomiast z narzędziem Cloud Cod jest troszkę inaczej, ponieważ tylko zatwierdzasz, ty nadzorujesz jego pracę, ty nadajesz mu kierunek oraz konspekt tego, co ma zrobić. On tak naprawdę
pracuje na twoim komputerze, ma dostęp do plików, folderów, może mieć dostęp do serwisów zewnętrznych i on to wszystko dla ciebie będzie robił, co jest super w mojej ocenie. Tak, jest mega wygodne i
ułatwia bardzo codzienną pracę, jeżeli chodzi o różne aspekty.
No i słuchajcie, przechodzimy teraz tak naprawdę do instalacji i konfiguracji, która jest banalnie prosta i ona tak naprawdę powinna wam zająć dwie, trzy minuty, ponieważ wszystko sprowadza się
do tego, moi drodzy, że musicie po pierwsze troszkę pokochać terminal, więc dla niektórych to może być troszkę taki rocket science terminal. Trochę się kojarzy z jakimiś zbyt łatwymi rzeczami,
ale uwierzcie mi, terminal tak naprawdę nie jest waszym wrogiem. Sama praca z cloud codem w terminalu jest banalnie prosta. Jeżeli chodzi o instalację, musicie sobie otworzyć terminal. Na
Macu, wpisujecie wyszukiwarkę terminal. Na Windowsie PowerShell albo cmd uruchomicie sobie terminal i tu przygotowałem dla was komendę.
Instalujemy tak naprawdę Cloda za pomocą jednej komendy w terminalu, którą macie w tym miejscu. Wystarczy ją przekleić, wkleić, walnąć enter i on się instaluje.
Jeżeli otrzymacie błąd, że nie macie zainstalowanego pakietu npm, to nie martwcie się, bo tu przygotowałem dla was link, gdzie go pobierzecie. Jak go zainstalujecie, to ten problem zniknie.
Będziecie mogli go sobie zainstalować i to wszystko. Tak naprawdę instalacja jest za nami. Jak mówiłem, jest banalnie prosta. To jest jedna komenda, którą musicie po prostu wkleić bezpośrednio do
waszego terminala. A jak uruchomić cloda? Jak to wszystko wygląda, to już wam pokazuję. Przełączę sobie teraz na terminal. Okej, jesteśmy w terminalu. Ja w tym momencie jestem w Visual Studio
Code, o którym zaraz wspomnę. Chciałem wam tylko pokazać jak wygląda uruchomienie tego z terminala, czyli uruchamiam sobie nowy terminal. Wpisuję po prostu clod.
Wala, gotowe. Clot jest uruchomiony już bezpośrednio, więc to wszystko, czego potrzebujecie.
Natomiast zostaje jeszcze jedna rzecz, ponieważ żeby móc skorzystać z cloud kod potrzebujecie abonamentu, subskrypcji i na darmowej wersji on nie działa.
Musicie sobie wykupić u nich plan. Jeżeli chodzi o kwestie planów, jak one się kształtują, to już wam pokazuję.
Mamy dwa plany płatne. Mamy plan pro, który kosztuje 17 dolarów miesięcznie, albo mamy plan Max, który kosztuje 100 do$arów albo 200 $arów. Jeżeli jesteś osobą zaczynającą, no to oczywiście
rekomenduję kupić pro na maksa. Jeżeli możesz sobie pozwolić przejść dopiero jak poznasz to narzędzie, poczujesz, że będziesz mógł z nim pracować. Dla wielu osób na początku na planie Pro po kilku
godzinach te tokeny, te limity, ponieważ mamy tam limity zadań, które możemy wykonywać mogą się kończyć. Ale to dzisiaj wam pokażę kilka sztuczek jak zarządzać sesją odpaloną w Cloud Code,
tak aby oszczędzać troszkę te limity i szybko można powiedzieć na nie wskoczyć.
M taka wskazówka, limity się odnawiają co 4 godziny, czyli jakbyście teraz o 20:00 zainstalowali sobie Cloda, zaczęli z nim pracować, to o 24:00 zresentują się wam limity i będziecie mieli tak
naprawdę już możliwość potem pracy dalszej, tak jak się zresetują wykorzystacie wcześniej. Przy okazji to, o czym wam chciałem wspomnieć, to jest pierwsza
wskazówka, którą chciałem się z wami podzielić, czyli jak zadbać o to, aby wasz terminal wyglądał ładniej.
przejrzeliście miał więcej informacji. Przygotowujem dla was tutaj trzy, można powiedzieć, rozszerzenia.
Ja korzystam z tego rozszerzenia, które nazywa się Cloud Powerline i tak jak widzieliście w moim terminalu, do którego teraz sobie przeskoczymy, tutaj po prawej stronie to, co widać u
mnie, czyli to wszystko tutaj to są skustomizowane widoki. Czy na przykład ja teraz widzę, że jestem w folderze live, pracuję na modelu, na modelu na modelu 4,5 opus. Ile dzisiaj można
powiedzieć wydałem całkowicie kasy czy czy kasy tak naprawdę nie tutaj przelicza tokeny, które wykorzystacie na dolary i to bardzo fajnie wygląda, ponieważ ja często w ciągu dnia jestem w
stanie wydać 100 150 a płacę za abonament 200 miesięcznie, więc w skali miesiąca mi to się zwraca biorąc pod uwagę te ilości, które wykorzystuję na bieżąco. Przy okazji macie też
informacje o ilości tokenów, które są wykorzystane, ale tym się na razie nie martwcie, bo do tego sobie zaraz przejdziemy i zrozumiecie w ogóle co to znaczy, po co to jest i dlaczego to
występuje. Dobra, wróćmy sobie na chwilkę do prezentacji.
Okej, z takich dodatkowych skutkówek na start, to co jeszcze rekomenduję każdej osobie to jest wyposażyć się w narzędzie do pisania głosem. Jak wiecie i znacie moje wpisy, ja pracuję na voicinku,
którego troszkę mocno promuję i to nie dlatego, że mamy z nim afiliację, tylko chodzi to na świetne. Jeżeli chodzi o rzutników Maca, bo to jest tylko i wyłącznie na Maca od razu zdradzę, ona
rzędzie działa wyśmienicie dobrze. Ja tak naprawdę codziennie nie korzystam praktycznie z klawiatury. Jak pracuję z Clodem, wszystko mu dyktuje głosem i od razu się tu przepisuje do terminala.
Zaraz sami zobaczycie, jak będę z nim pracował. Natomiast wiem, że też jest spora grupa osób, które pracują na Windowsie. Też taką byłem do niedawna. I jest narzędzie Whisperflow, które też
mogę polecić. Dużo osób poleca. Ono jest dostępne również na Maca oraz na Windowsa. Więc też jest można powiedzieć propozycja dla osób, które na przykład chcą pracować na Windowsie z takimi
narzędziami, to polecam Whisperflow. I ostatnia rzecz dla osób, które uważają, że się nie przekonają do terminalu i nie chcą z tym pracować, to w narzędziu Visual Studio Code, które przed chwilą
widzieliście, tam gdzie byłem, jeżeli chodzi o terminal, przejdziemy sobie do tego ponownie.
Mamy natywny dodatek od firmy Antropi, który pozwala nam uruchomić bezpośrednio cloda tutaj. Ja na chwilkę zamknę mój terminal, trochę go zmniejszę, ten plik sobie zamknę. I zobaczcie, mamy taki
interfejs troszkę jak w normalnym klocie. Wygląda on inaczej niż terminal i dla wielu osób może on się bardziej bardziej być przekonująco takiej pracy z nim. Ja z tego nie korzystam, ponieważ
uważam, że praca w terminalu daje nam większe możliwości, jeżeli chodzi o pełne wykorzystanie tego narzędzia, ale jest to wygodne dla osób, na przykład trochę nie do końca robiony terminal,
chcą na początku iść tą drogą, spoznać to narzędzie, może się przekonają, może wrócą do terminala, wasza decyzja, ale też taka wskazówka dla osób, które na przykład nie lubią terminala, chcą mieć
troszkę inny interfejs, jeżeli chodzi o to. Więc tyle z pierwszej wskazówki, takie można powiedzieć na rozpoczęcie.
rozszerzamy terminal i wracamy jeszcze teraz do prezentacji, ponieważ będziemy teraz przechodzić już powoli do pracy bezpośrednio w tym narzędziu. I teraz to co nas czeka, to pierwsze kroki, czyli
tak naprawdę zobaczymy sobie jak to narzędzie działa, jak się z nim komunikować, jakie są elementy interfejsu i damy też pierwsze zadanie dla cloda, tak, w naszym terminalu, więc
przeskakujmy i działajmy. Dobra, a więc tak, jesteśmy w terminalu.
No i teraz tak, słuchajcie, jeżeli chodzi o może trochę to jeszcze powiększę.
Jeżeli chodzi o to, co tutaj widzimy na start, to zawsze będziemy tutaj mieć widok, można powiedzieć, początkowy, którą nas poinformuje o wersji. Takie można powiedzieć podstawowe informacje.
Jeżeli chodzi o pisanie bezpośrednio w terminalu, to oczywiście piszemy w tym miejscu, tak jak w normalnym można powiedzieć narzędziu, czyli na przykład można napisać mu cześć.
Tutaj pierwszy przykład tak naprawdę, jeżeli chodzi o to, on nam zaraz będzie tutaj odpisywał.
No i można powiedzieć, zaczynamy zabawę z tym wszystkim.
Wrzuciłem sobie tutaj dwa pliki CSV. Są to pliki pobrane z naszego Google Analytica z ostatnich dwóch i pół tygodnia, kiedy mieliśmy odpalony nasz landing page
bezpośrednio pod tego livea i tam troszkę danych się zebrało. No i nie do końca kumam. Nie jestem w to dobry. Więc wybrałem sobie te dane i będę chciał po prostu, żeby Klota nie zrzucił okiem,
powiedział mi co tam ciekawego widzi, podsumował mi je, tak żeby mógł troszkę lepiej zrozumieć co tam się wydarzyło, jakie są dane i informacje, więc po prostu spromptujemy go o to i damy znać.
Prosiłbym cię, abyś spojrzał na nasze dane z Google Analyticsa i przedstawił mi informacje, które tam są zawarte.
Chciałbym, żebyś przedstawił to w jasny i klarowny, prosty sposób, zrozumiały dla przeciętnej osoby, która nie do końca ma doświadczenie z Google Analyticsem. Chciałbym wiedzieć, co
zadziałało, skąd byli użytkownicy, jak wyglądały te sesje, czyli wszystkie najważniejsze informacje, które miałbyś przedstawić na przykład dla zarządu po tym, jak byłeś odpowiedzialny za jakąś
kampanię na danej stronie. Okej, voicing zadziałał.
I teraz kolejna rzecz. Jak pracujemy w tutaj z clodem, możemy mu wskazać pliki, które ma obejrzeć i do tego służy nam komenda małka. Wpisujemy małkę i potem na przykład wpisujemy z którym plikiem
ma się zapoznać. I tutaj zobaczcie, jest plik informacji ogólnotechnologii. I tutaj też jest ten plik. Następnie mu wskaże, żeby wziął jeszcze pod uwagę plik o nazwie zdobywanie potencjalnych
klientów, które jest w tym miejscu. No i tak naprawdę klikamy enter. No i tu już się dzieje tak naprawdę cała zabawa.
Czyli on przyjął tą wiadomość. Teraz tutaj widzicie mamy proces, który wykonuje. Zawsze mamy informacje ile trwa dany etap. Tutaj mamy też informacje ile tokenów zużył. I też mam
tutaj, zobaczcie od razu informację, że jest w trybie thinking. Jak pracujecie z nowymi modelami AI, to wiecie, że one mają tryby thinking, które działają na tej zasadzie, że jak zadajecie pytanie,
to zawsze model LLM najpierw rozkminia to sobie wewnętrznie, zanim wam przygotuje odpowiedź.
To zawsze daje, można powiedzieć, troszkę lepszą jakość odpowiedzi. Tryb thinking jest domyślnie włączony. Tym się nie musicie przejmować i też nie rekomendowałbym go wyłączyć tak
naprawdę. Okej, słuchajcie, dostaliśmy odpowiedź, ale ja tego nie chcę czytać w terminalu, więc po prostu poproszę go o to, żeby słuchaj, weź mi to podsumowanie zapisz do pliku Markdown, będzie mi
wygodniej to czytać. Okej. I on teraz mi to ładnie zapisze do formatu markdown.
I za chwilkę pojawi nam tutaj się plik, który będziemy mogli sobie otworzyć i z nim się zapoznać.
Okej, kolejna ważna rzecz dla początkujących osób. Cloud Code działa na zasadzie upoważnienia, czyli żeby mógł wykonywać akcje na przykład zapisywania plików na dysku,
musimy mu wyrazić zgodę na to. zobaczysz tutaj trzy opcje. Jest jest, jest kolejna jest i pozwalaj zawsze podczas tej sesji albo nie, nie pozwalamy mu na to. Tak. Ja oczywiście biorę sobie
dwójkę, ponieważ będę chciał, żeby zapisywał już bez ponownego pytania mnie o to, czy mogę coś zrobić, jeżeli chodzi o zapisanie pliku. Także po prostu mi się wygodniej pracuje. No i tutaj po
prawej stronie mamy, zobaczcie, naszą kampanię. Trochę zmniejszy ten terminal.
No i tu mamy podsumowanie, raport z kampanii Live Akademii Automatyzacji.
Mamy okres, to były cztery tygodnie, wybaczcie mi, powiedziałem 2,5. Mamy metryki, mamy wartości, czyli aktywni użytkownicy, nowi użytkownicy, prowracający użytkownicy. Skąd przyszli
użytkownicy, czyli mamy nasze płatne reklamy, to jest 63%, mamy organik oraz mamy również bezpośrednie wejścia, czyli łącznie tutaj ponad 33%. No i tak dalej, i tak dalej. Teraz to nie jest czas,
żeby zagłębiać się w te statystyki. Chodziło mi o to, żeby on po prostu zapisał co do plików, żeby pokazać, że on operuje bezpośrednio na naszym dysku, czytając, zapisując te pliki, które
potem możemy z nimi sobie zrobić co chcemy. Świetnie. Czyli udało nam się, można powiedzieć, zrobić takie pierwsze kroki, gdzie pokazałem wam jak właśnie promptuje się, jak wyglądają te
upoważnienia, które będą wyskakiwały. No i też takie bardzo, bardzo podstawowe operacje na plikach. I teraz mam dla was kolejną wskazówkę, którą chciałem się z wami podzielić.
Mianowicie, słuchajcie, styl komunikacji. I teraz co ja mam konkretnie na myśli? Jak zauważyliście w mojej rozmowie, on był taki bardzo, kurczę, jakby to powiedzieć, bardzo
techniczny, nie był taki mniej formalny i to jest standardowy, można powiedzieć, tryb odpowiedzi w cloud Code. Ale to co możemy zrobić to przygotować mu tak
zwany output style, czyli dopasować go do rozmówcy. Czyli jeżeli na przykład lubicie komunikować się troszkę w innym języku, bardziej konkretniej, zwięźle, krócej, albo na przykład, żeby wam
bardzo dobrze wyjaśniał aspekty technologiczne, bo nie kumacie tego i to jest okej. tak naprawdę w tych czasach to możemy przygotować dla niego output style. Domyślnie clot ma takie trzy
wgrane outputy, jeżeli chodzi o style. Mamy default, mamy y wyjaśniające i uczące. Tutaj sobie są wyjaśnione, ale ja na przykład lubię pracować na swoim stylu. Jak taki styl możemy zbudować?
Tutaj dla was przygotowałem taki krótki promcik, który sobie możemy otworzyć. On jest w tym miejscu. Nie będziemy go teraz czytać, bo nie ma na to czasu, ale powiem wam jak sobie z nim spracować.
Jak pracujecie na czacie GPT albo na clodzie wersji desktopowej, webowej, to one mają informacje o was, czyli tak zwaną pamięć tego, jak rozmawialiście z nim, jak się komunikujecie. I to co
robicie, bierzecie ten prompt, wklejacie go w swojego asystenta i on wam przygotuje wynik, który będzie mniej więcej wyglądał w ten w ten sposób jak tutaj przykład przygotowany przeze mnie.
Powiększę to. No i zobaczcie, tutaj mamy przykład Kacper Style. Brzmi górnoletnie, ale mam tutaj pragmatyczny partner, który widział za dużo teorii.
Teraz interesuje go tylko to, co działa. Konkret działanie, zero bullshitu.
Okej, to przygotowywał Clot, nie ja, więc uznał, że tak lubię się komunikować. I jak sobie wygenerujecie tego typu właśnie output style, jak w ogóle go potem dodać bezpośrednio do
waszego cloda. Ja to sobie skopiuję, żeby miał to w schowku.
I przeskoczymy sobie teraz bezpośrednio ponownie do naszego narzędzia. I słuchajcie, w każdym projekcie, w którym będziecie pracować, mamy folder clot. Tutaj
jeszcze jedna rzecz, o której nie wspomniałem, ale do niej chcę wrócić.
Jak pracujecie z Clodem to pamiętajcie o tym, żeby stworzyć sobie najpierw na dysku jakiś jeden folder, gdzie będziecie mieli wszystkie swoje projekty. Mówiąc projekt, mam na myśli
po prostu folder, czy jak macie nowy projekt, go rozpoczynacie, zwycie nowy folder i tam sobie uruchamiacie to wszystko i działacie z tym. Jeżeli chodzi o Visual Studio Cod, tak naprawdę
klikacie sobie na samej górze file, open folder i w tym miejscu po prostu wybieracie sobie folder, w którym chcecie pracować. Ja mam to tak rozwiązane, że mam folder po prostu
kodowanie, gdzie mam wiele różnych projektów. Zawsze sobie tworzę nowy folder, nazywam go, otwieram i tam bezpośrednio z nim pracuję. Więc do tego chciałem z wami wrócić. Natomiast mamy
tutaj folder o nazwie kropka clody. I to jest taki folder, który tworzy się zawsze dla cloda, w którym są umieszczone wszystkie ustawienia, tak to najłatwiej nazwać. I żeby wgrać właśnie
output style, to w folderze clot tworzymy sobie nowy folder. Nazywamy go po prostu output.
Output style, jak dobrze pamiętam. Muszę sobie jeszcze sprawdzić mojej dokumentacji.
Tak, nazywamy go output styles, tylko że on jest z myślnikiem. Używamy tutaj kebab case output styles. No i w tym folderze tworzymy sobie nowy plik. Ja go po
prostu nazwę kacperstyle. MD. Wklejam sobie to, co skopiowałem.
Zapisuję i teraz domyślnie on nie będzie wczytany. Kot ma tak, że dajemy coś do niego, musimy go zrestartować, czyli skrótem klawiszowym ctrol z po prostu wyłączę. Piszę jeszcze
raz komendę clod. Uruchomi się ponownie. No i teraz używamy pierwszej funkcji slashowej, czyli wpisujecie sobie slash i szukacie output style. Klikacie na to i w tym
miejscu zobaczcie pojawiły się trzy, które były domyślnie i mamy też Kacper Style. Wybieram sobie to wala gotowe. W tym momencie Cloud będzie troszkę się inaczej ze mną komunikował, więc to jest
wskazówka dla druga, którą dla was przygotowałem.
I teraz idąc dalej, jeżeli chodzi o dalszą część, przejźmy sobie do prezentacji. I teraz będziemy sobie przechodzić do planowania, ponieważ
cała siła i trochę potęga pracy z takimi narzędziami tkwi w bardzo rozmyślnym planowaniu tego, co on ma zrobić. I Clot ma domyślnie stworzony tak zwany tryb planowania, który wam za chwilę pokażę.
Natomiast zanim do tego przejdę, chciałem się z wami podzielić jedną wskazówką, którą też ostatnio odkryłem i moim zdaniem jest mega ciekawa. Trafiłem na nią na Xie od użytkownika o nazwie
Tarik, jeżeli dobrze go czytam. Tutaj macie źródło też wrzucone do tego wpisu, ale o co chodzi? Tarik podzieli się swoim podejściem, że zawsze jak na przykład chc stworzyć jakąś aplikację,
chcę stworzyć coś, zbudować z clodem, to tworzy sobie plik, gdzie wszystko opisuje, po prostu włącza na przykład jakieś narzędzie typu voicing, zaczyna tam mówić bezpośrednio opowiada co to ma
być, zapisuje to sobie, a następnie wrzuca ten prompt, który jest tutaj, zobaczcie, czyli przeczytaj. Tutaj jest nazwa pliku i przeprowadź mnie przez szczegółowy wywiad używając ask user
question tool o dosłownie wszystko. Implementację techniczną i tak dalej i tak dalej. I dzięki temu Clot troszkę przeskakuje na taki wyższy poziom planowania i zadaje wam bardzo dużo
pytań, czyli po prostu będzie was pytał o to, co chcecie zbudować, jaka technologia. Jak nie wiecie, to po prostu mówię wprost: zarekomenduj mi, powiedz dlaczego, jak to ma wyglądać.
Czyli jest takim powiedzmy sobie doświadczonym deweloperem, tak to nazwijmy, który wie o co zapytać, tak aby potem ułożyć plan, który będzie mu łatwiej zrealizować i
który będzie po prostu działał i to jest wygodne. Dobra, więc teraz zobaczmy sobie jak wygląda tryb planowania, jak go uruchomić i co się w ogóle za dzieje.
Więc wracamy do naszego terminalu. No i słuchajcie, teraz wyczyściłem sobie.
Yyy, mamy nową sesję, więc teraz mu powiem następującą rzecz. Yyy, w tym pliku masz podsumowanie stworzone odnośnie naszych kampanii z Google Analytics, odnośnie jednej strony.
Chciałbym, abyś przygotował dla mnie dashboard w postaci prostej aplikacji w Reaccie, który będzie mi służył do zrozumienia tych danych, które będą przedstawiony w sposób wizualny. Lubię
oglądać rzeczy, lubię rozumieć poprzez tak naprawdę interakcję z wykresami, diagramami, a nie ze surowym tekstem.
Więc chciałbym, żebyś przygotował na podstawie tych informacji dla mnie dashboard, na podstawie którego będzie mi łatwiej to wszystko zrozumieć.
Okej, tu nam wskoczyło i jeszcze jak pamiętacie małpka i nazwa pliku to było raport kampanii, który nam stworzył wcześniej. I teraz słuchajcie, mamy skó klawiszowy, który polega na tym, że
shift tabulator, zobaczcie, przełączamy się między trybami. Czyli teraz nie mam żadnego trybu. Teraz mam tryb accept edits on, o którym za chwilę opowiem, ale nas interesuje tryb plan i zawsze
tego trybu używacie, jak potrzebujecie coś zaplanować, coś rozwiązać, coś zrozumieć, coś naprawić. Czyli jeżeli na przykład rozpoczynacie projekt i chcecie zbudować dokumentację techniczną na
podstawie której on potem będzie coś tworzył to nie piszecie mu coś w stylu jak ja teraz stwórz mi dashboard enter kawka siemano nie do troszkę inaczej z rozmysłem i też można powiedzieć z
pewnym dystansem żeby dać mu przywiń do tego żeby on dobrze znac w ogóle zbudować bo im lepiej zaplanowany tak naprawdę początek czyli ten cały input który on dostanie można powiedzieć tej
dokumentacji i opisu tym lepiej wykona swoje zadanie. A jak to zrobicie po łebkach, to po łebkach będziecie mieli potem rezultat. Więc zawsze używamy trybu plan mode. Pamiętajcie, skrót
klawiszowy, shift tabulator, proste. To jest, można powiedzieć przycisk, który będziecie bardzo często używać. No i co? Klikam enter w tym momencie. No i teraz Clot zacznie myśleć, zacznie planować.
Możliwe zada mi jakieś pytania zaraz, żeby się czegoś dowiedzieć. Więc zobaczymy, co się wydarzy, jeżeli chodzi o to.
Okej, więc on zaczął swoje tutaj działanie, jak widzicie tutaj od razu na dole. O, dobra, to za chwilkę wam opowiem i są te pytania teraz, o których wam mówiłem. Czyli pyta mnie, jaki stak
technologiczny preferujesz? H, osobiste pytanie, ale niech będzie.
Chciałem Reacta, żeby to zrobił. Zobaczcie, macie już rekomendowane od razu na samej górze, czyli dla osób, któ na przykład teraz zobaczą te nazwy, powiedzą, co to jest React, co to jest
vite, co to jest Richard, nie mam pojęcia. Okej, co teraz? No to jest rekomendowany, można powiedzieć, sta technologiczny. Klikam jedynkę. Czy dane mają być hardcoded? Czy chcesz, czy
chcesz możliwość wygrywania CSVki? Nie, na razie jest hardcod, nie chcę zbudować n skomplikowanego, ma być szybko i konkretnie pokazane. Przekazałem mu odpowiedzi. Klikam enter, submit answer.
No i teraz on dostał informacje, które uznał, że musi ze mną doprecyzować. No i dzięki temu ma teraz jaśniejszy obraz, co musi przygotować. No i teraz planuje, knuje tutaj, rozmyśla, zastanawia się
jak zbudować ten plan, który potem będzie wykonywał, aby go jak najlepiej egzekwować. Więc teraz damy mu chwilę, a ja w międzyczasie pokażę wam kolejną wskazówkę,
która jest trochę, powiedzmy sobie, nierekomendowana, ale też chciałem się z nią wami podzielić. Ona jest w tym miejscu. Chodzi o tak zwany yolo mode.
Może osoby, które reprezentując k się z nim spotkały. Możemy dać całkowicie wolną rękę Clodowi do tego, żeby on robił co chciał. Brzu trochę niebezpiecznie, ale cała idea polega na
tym, że na przykład promptujemy go, co ma zrobić. Dajemy mu dokumentację, odpalamy go w trybie yolo mode i on nas nie pyta o żadnej zgody. po prostu leci, tworzy, działa, tworzy pliki, usuwa
pliki. To słowo usłuwa pliki jest trochę, można powiedzieć ważne, ponieważ dajemy mu dostęp do komputera, więc nie rekomenduje się odpalać yellow mode w waszym normalnym systemie. Są historie
na Redicie, na XIE. Mi się nie zdarzyło, żeby usunął coś poza folderem projektu, ale niektórym podobno usuwał no pliki systemowe, ponieważ stwierdził, że brakuje mu miejsca do wykonania
projektu, więc usły je wykonać. Więc nie chcę was straszyć, po prostu robimy to zawsze za pomocą izolowanego środowiska doker. Chciałem wam o nim opowiedzieć, może w innym przypadku, bo to jest
troszkę więcej, ale też żebyście mieli na uwadze to, że można dać taką wolną rękę Klodowi w jego działaniach. A z tego co słyszałem wykonał się już plan.
Możemy sobie do niego wrócić. Więc przeskakujemy ponownie.
Okej. I teraz słuchajcie, musimy trochę skrollowować do góry.
Tutaj zawsze zaczyna się plan. Jest od tej niebieskiej, można powiedzieć, części. No i teraz możemy zobaczyć, o, przeskoczyło mi, przepraszam. Możemy zobaczyć, że wymyślił jakiś stag
technologiczny, jaki ma być header, jakie mają być kpi, jakie mają być wykresy, jaka ma być sekcja retencji, jakie pliki utworzę.
Zobaczcie, tak będzie tyle tych plików, będzie weryfikacja. No i teraz tak naprawdę to co mogę zrobić to albo dodać sobie jedynkę, czyli włączyć mu tak działaj i daję ci auto accept. Możesz
wykonywać większość bez upoważnienia. Mogę dać mu tak, ale chcę manualnie wszystko zatwierdzać. Kto ma na to czas? Nie, no żartuję oczywiście. No i trójka na przykład. Napisz coś tutaj, jeżeli
chciałbyś, żeby kloc zrobił inaczej. Ja trójki najczęściej używam, kiedy zapoznam się z planem i coś mi nie pasuje na przykład i wtedy po prostu mu piszę tutaj bezpośrednio: "Słuchaj, to
to i to jest spoko, ale to to i to nie jest i chcę, żebyś to zrobił inaczej po prostu." No i w tym momencie na przykład, żeby wam pokazać wybiorę sobie opcję pierwszą. Oczywiście z dobrymi
praktykami, tak jakbym działał normalnie tworząc coś, takiego planu bym nie zaakceptował. Pokażę wam potem jak działam, jeżeli chodzi o pracę z takimi planami. Ale tak przeskoczymy sobie
wiecie oczko wyżej, jeżeli chodzi o to, co ch co wam pokazać na razie podstawy, czyli klikam tak. No i w tym momencie to co będzie się działo, on stworzy na nas bardzo prostą apkę według swojego planu
i będzie ją teraz wdrażał. tworzył pliki, debugował, tworzył kod, sprawdzał czy wszystko działa.
I teraz w międzyczasie mogę wam w końcu pokazać, że na moim pasku, o no właśnie teraz widzieliście, że też mnie prosi o upoważnienie, bo teraz na przykład chcę wykonać działanie w baszu. Co to jest
basz? To jest terminal po prostu. Czyli on teraz nie ma wolnej ręki na przykład, żeby użyć komendy npm w baszu. Dlatego mu tak i nie pytaj mnie o to ponownie.
No i teraz sobie działa. Więc wróćmy znowu tego paska, który widzicie tutaj.
Czyli teraz zobaczcie, mamy tryb accept edits on. Mamy tutaj, zobaczcie informację, jaka ilość tokenów została już wykorzystana. 38 000. Tutaj znowu mnie o coś prosi. Daję mu tak. I to jest
bardzo ważne. Do tego sobie przejdziemy, bo to się wiąże właśnie z tą najważniejszą rzeczą, o której powinniście wiedzieć, jeżeli chodzi o to narzędzie. On teraz sobie tutaj będzie
działał, pykał, budował to, więc mamy teraz chwilę czasu. Możemy sobie przeskoczyć do dalszych informacji, które dla was przygotowałem.
Okej, dobra. No i jesteśmy teraz z powrotem na arku.
Teraz mamy kolejną wskazówkę. To jest też rzecz, którą odkryłem niecałe dwa w trzy tygodnie temu, która dla mnie jest po prostu niesamowita, bo to jest tak proste, a tak zacne w tym wszystkim.
Clot może korzystać z innych modeli AI i jak on to robi? E, słuchajcie, mamy też narzędzia od Googlea, mamy narzędzia od Opena, czyli mamy Ginini CLI, który jest taką odpowiednikiem Cloud Code. Mamy też
Codex, który jest odpowiednikiem właśnie Cloud Code od od, przepraszam, od Open AI. I możemy w bardzo prosty sposób wykorzystać właśnie cloda, aby na przykład wykorzystał Gemini. Jak on to
robi? No te wszystkie narzędzia pracują w terminalu, a przed chwilą widzieliście, że dawałem mu dostęp do terminalu, więc on sobie samouruchomi celi, tak jakby to był ja po prostu
wejdzie sobie do niego, zacznie go promptować, wypytywać o różne rzeczy, weźmie od niego odpowiedź, którą mu wygeneruje i mi ją przekaże. I to samo możemy robić tak naprawdę z kodeksem,
jeżeli chodzi o openi. Natomiast ja dla was przygotowałem rozwiązanie oparte o Geminiu i za chwilkę jak zbuduję się tam to narzędzie pokażę wam jak ono działa.
Tutaj właśnie też macie link, który przygotowałem. On też był tutaj na samej górze wrzucony m w tym miejscu, ale też tutaj się dubluje drugi raz, jakby ktoś tego po prostu nie zauważył.
Tutaj oczywiście też mamy linka do Gini Celi, ponieważ musi być zainstalowane tak samo jak Cloud Code. A zobaczmy sobie jak mu idzie, jeżeli chodzi o tworzenie tych wszystkich komponentów.
No i jeszcze działa. Zostało tam mniej więcej chyba z trzy cy minutki pracy, więc możemy sobie jeszcze chwilę poobserwować co tam się dzieje i zrozumieć jakie tam zachodzą procesy.
Więc zobaczcie, że w tym momencie proces trwa już 3 minuty.
On tutaj po kolei wykonuje zadania. Jak spojrzymy sobie po lewo to zobaczcie, już utworzył nam całkiem sporą ilość plików. Mamy dashboard. Tutaj zobaczcie. Mamy foldery, mamy stworzone
pliki. On to zrobił w przeciągu niecałych czterech minut, więc tempo ma całkiem niezłe, jeżeli chodzi o to wszystko. Więc tutaj powoli sobie dubię, przygotowuję wszystkie komponenty, które
obiecał, że stworzy. Zobaczcie, że już zjadł nam 50 000 tokenów. To jest mniej więcej 1/4 całości, która ma do wykorzystania w danej sesji. Ja cały czas tylko na wam wspominam, bo to jest
bardzo ważna kwestia, o której sobie zaraz opowiemy. Tylko po prostu chciałem do niej przejść płynnie, jak uda mu się to wszystko tutaj zbudować, więc dajmy mu jeszcze, wydaje mi się, niecałą
minutkę. Jeżeli będzie potrzebował więcej czasu, to po prostu przeskoczymy sobie do prezentacji, żeby tego czasu nie tracić.
Okej, mamy uruchamiony serwer, czyli jest już jest już całkiem nieźle.
Zaraz powinien uruchomić serwery i powinniśmy to sobie wszystko zobaczyć.
Okej, jest. Serwer działa. No to czekajcie, ja sobie pozwolę to otworzyć.
Dobra, serwer działa, więc przeskoczymy teraz sobie widokiem.
Dobra, coś takiego nam tutaj wymyślił nasz szacowny, można powiedzieć, pracownik Cloud Cod, czyli to, co było wcześniej z pliku Mark w tym momencie w
ten sposób wygląda. Zobaczcie, mamy tutaj kafelki na górze z informacjami, mamy wykres, mamy kart, kanały pozyskania, źródła sesji, top 10 miast, urządzenia, kluczowe wnioski, retencja
użytkowników to jest spoko.
Mamy informację, że większość osób była na telefonach, więc na przykład optymalizacja jest bardzo ważna, większość ruchu była z Facebooka, page social się opłaca, no i tak dalej, i tak
dalej. I teraz przypuśćmy sobie, że przegładacie sobie taki dashboardzik i mówicie sobie: "Nie podoba mi się, nie wiem, ten wykres tutaj, który mamy P chart." To to co możecie zrobić to
robicie sobie screena tutaj tego wykresu kołowego, przechodzicie sobie bezpośrednio do cloda i robicie świet. To jest mega wygodna rzecz. Wklejam mu teraz ten screen.
Zobaczcie, tu się pojawił screen. Teraz na przykład mogę mu napisać: "Słuchaj, nie podoba mi się ten wykres kołowy, nie do końca jest dla mnie czytelny. Czy mógłbyś w jakiś sposób go zmienić, żeby
wyglądał inaczej? Podaj mi jakąś inną propozycję i wprowadź ją.
Klikamy enter. No i teraz Clot to co będzie wiedział to, że ma ode mnie screena, ma tą informację i na podstawie tego musi coś zmienić bezpośrednio w designnie. I to jest bardzo wygodne,
jeżeli na przykład pracujemy przy widokach, tworzymy sobie jakieś elementy, komponenty na stronie i chcemy w ten sposób po prostu wprowadzać zmiany.
No jak widzicie, on teraz tutaj sobie będzie działał, za chwilkę nam coś wymyśli. Zobaczcie, gotowe. Mogę odświeżyć stronę, więc już tutaj patrzę, co wymyślił.
Okej, słuchajcie. stwier, że jeżeli wykres kołowy mi nie pasuje, w sumie chyba poszedł dobrym tropem, bo nie powiedziałem mu, żeby dał inny wykres kołowy, to stworzył po prostu wykres
słupkowy inny, inny coś nowego. Tak wprowadził.
Okej, więc tak to wygląda. No i teraz właśnie chciałem wam o tym Geminiu powiedzieć, jak możemy go wykorzystać i jakie mam to przygotowane i jak te z tego będziecie mogli skorzystać
pobierając właśnie nasze materiały. Czyli teraz sobie znowu korzystam z komendy slashowej. Zobaczcie, wpisałem slash i wpiszę jemy gemy. Okej. I teraz mogę dać mu zadanie do wykonania. I na
przykład mogę go teraz promptować. Chciałbym, żeby zrobił analizę naszego widoku, jeżeli chodzi o dashboard. Co można poprawić, co może ładniej wyglądać krótko i konkretnie.
I co on teraz zrobi? On teraz odpali sobie Gemini celi, weźmie tą moją instrukcję Gemini, przeanalizuje jak wygląda kod i zwróci nam informację co poprawić i on
to wszystko nam zapisze w raporcie, co dla mnie jest mega pomocne. Dlaczego w ogóle z tego korzystam? Ponieważ Gemy no nie ukrad tworzy ładniejsze widoki.
Fajnie mi poprawia UX na stronie, fajnie poprawia elementy takie graficzne, animacje. Naprawdę świetnie się do tego sprawdza. Dlatego też właśnie jest takim wsparciem dla mnie. też często korzystam
z niego. Jak mam kod, który trzeba przeanalizować i robię sobie review, to jemin robi taki dodatkowe review, żeby mieć taki dwa źródła informacji i prawdy o tym wszystkim. Dobra, słuchajcie, on
tu sobie teraz będzie dubał, a my sobie przeskoczymy teraz do prezentacji, przejdziemy do kolejnej rzeczy, którą też musimy chwilę czasu poświęcić, ponieważ jest mega istotna.
No dobrze, drodzy państwo, przed nami context engineering. Brzmi skomplikowanie, ale już was wprowadzam o co w tym wszystkim chodzi i dlaczego jest to rzecz, którą trzeba zrozumieć
przy pracy z tego typu narzędziami, bo to jest kluczowe. To jest tak naprawdę wszystko, jeżeli chodzi o to, żeby dobrze działało to narzędzie, nie robiło wam baboli. Ogólnie na początku warto w
ogóle powiedzieć, czym jest okno kontekstowe. Każdy model LLM ma tak zwane okno kontekstowe i w tym oknie tak naprawdę może przyjąć maksymalną ilość informacji. Dla Opusa 4,5 to jest 200
000 tokenów i on nie przejmie więcej. Po prostu przerwie się sesja kaput, nie będzie działało dalej. Dlatego właśnie pracując takimi narzędziami właśnie jak modele LLM mamy tak zwany syndrom, który
nazywa się zjawiskiem context root i były robione badania przez naukowców.
Zgadnijcie jakich? Amerykańskich. One są potwierdzone. Oczywiście macie tutaj link do badania oraz wszystkich informacji. I o co w tym wszystkim chodzi? Modele LLM, które mają
załadowane bardzo dużo informacji zaczynają robić babole, popełniać błędy.
Spada im wydajność, po prostu ona się obniża, idzie w dół. Im więcej informacji, im więcej informacji, tym spada w dół jakość. Tu macie wykres pokazany i istnieje tak zwany efekt dump
zone. Najczęściej po 40 50% kontekstu, czyli około 100 000 kontekstu, jak wykorzystamy, modele zaczynają się obniżać jakościowo, tworzyć gorszy kod, robić błędy, mogą
się zapętlać z informacją, mogą robić rzeczy, które są niepożądane. Dlatego bardzo ważne jest to, żeby dbać o ilość informacji, które dostarczamy dla naszego narzędzia. jak w ogóle możemy o
to zadbać, jak to możemy zrobić. No i tu właśnie chciałem wam pokazać kilka takich, można powiedzieć, sposobów dla osób początkujących, żeby byli tego świadomi i wprowadzali sobie to
wszystko. A ja bardzo lubię to powiedzenie, że inżynieria kontekstu polega na tym, że budujemy systemy, których zadaniem jest dostarczenie tak małej ilości informacji, aczkolwiek tak
odpowiedniej, aby model LLM po prostu mógł wykonać swoją pracę skutecznie. I to jest, można powiedzieć, najłatwiejsze wyjaśnienie tego zjawiska.
Ale słuchajcie, przejdźmy sobie z powrotem do terminalu i pokażę wam kilka rzeczy. Po pierwsze, zwróćcie uwagę, że w tym momencie po kilku, można powiedzieć zadaniach jesteśmy na
poziomie 63000 tokenów, czyli to jest mniej więcej tam około 35 40% plus minus, więc jesteśmy w tej dobrej strefie. Jeszcze tutaj spokojnie możemy działać, wykonywać dalej zadania.
Natomiast mamy taką komendę, którą jak piszecie sobie w cloud kodzie o nazwie context, ją klikniecie, to pokaże się wam na co tak naprawdę idzie zużycie wszystkich
waszych, można powiedzieć, tokenów, ponieważ to nie jest tak, czę pokażę wam na nowej instancji, to nie jest tak, że wy z zerem zaczynacie. Nigdy nie zaczynacie z zerem. Na przykład
zobaczcie teraz napiszę do niego: "Hej, mamy zero tokenów i zaraz nam się pojawi" i zaaktualizuje liczba tych tokenów jest 32000 i to nie jest możliwe słowo hej
jego odpowiedź zajęła 32000 tokenów. Nie chodzi o to w tym że za każdym razem jak uruchamiamy sesję automatycznie wczytują się pewne informacje. Po pierwsze wczytuje się system prompt przygotowany
przez Antropica do tego narzędzia. Czytują się systemowe tule, z których korzysta clot, ponieważ clot musi móc przeglądać kod, musi wykonywać operacje w
internecie, tylko ma dużo takich wbudowanych narzędzi, które też się wczytują. Mamy tak zwane MCP Tools, czyli serwery MCP, o których też sobie opowiemy. I na przykład serwery MCP w
tym momencie są strasznie zasobów. Mamy plik pamięci, no i mamy obecnie informacje na co jest to zużywane.
Dlatego dobrą praktyką jest to jak pracujecie, żeby sobie sprawdzać ten plik i to nad czym wy możecie tak naprawdę mieć kontrolę to jest wszystko to co jest w dół tutaj czyli system prom
system tool z tego nie ruszamy na przykład narzędzia NCP które są dostarczone u mnie to jest 6000 tokenów mógłbym to oczywiście zbić ponieważ mamy komendę MCP i ponownie wpiszę kontekst
komendę zwróćcie uwagę że w tym momencie jest tego całkiem sporo.
I zrobiło mi się już 13000 tokenów, czyli dwa razy więcej. Soie zobaczcie ile możecie tracić włączając rzeczy, które nie są wam potrzebne, bo nie potrzebujecie za każdym razem każdego
serwera MCP, żeby wykonywać dane operacje. Je też tak naprawdę dopasujemy w momencie, kiedy jest nam to potrzebne.
Okej, kolejna taka wskazówka pracy z kontekstem. Jeżeli na przykład widzicie, że wykonaliście zadanie tak jak ja teraz, czyli poprawę, jeżeli chodzi o kwestie tego widoku, tak zmieniłem sobie
ten y wykres, jest spoko w tym momencie, tak i nic teraz na razie nowego nie chc wykonywać w tej sesji, to wtedy zawsze używamy sobie komendy clear. Po prostu czyścimy mu kontekst, on jest
wyzerowany, zaczynamy nową sesję i to jest dobra praktyka. Skończycie zadanie, jest okej, komenda clear, czyścimy kontekst. idziemy z kolejnym zadaniem i tak cały czas może się zdarzyć, że na
przykład będziecie pracowa nad trudnym zadaniem i będziecie na etapie 120 150 000 tokenów, czyli będziecie się zbliżali do, można powiedzieć takiego buforu, to wtedy na przykład możecie
sobie użyć komendy compact. Komenda compact jest to komenda, która robi jedną rzecz. Bierze całą waszą rozmowę, którą macie z clodem, kompresuje do krótkiej notatki i wstrzykuje ją w
kolejną waszą sesję. Zzeruje cały kontekst. Ale Clot będzie wiedział, bo ma taką notatkę krótką, co robiliście ostatnio, jakie są najważniejsze rzeczy z automatu. Clot ma w ustawieniach,
tutaj wam pokażę, macie config. O, tutaj coś nam się zaczęło terminal psuć. To też jest niestety takim zjawiskiem. Mamy komendę config i mamy tutaj możliwość
wyłączenia autokompaktu. Autoct jest to po prostu yyy funkcja, która jest automatycznie wdrożona w cloud code, która jak dochodzicie do 150 000 tokenów,
automatycznie kompresuje wam rozmowę i rozpoczyna nową sesję. Ja to mam z automatu wyłączone, ponieważ wolę mieć kontrolę nad tym, co się dzieje w mojej sesji, jak ona wygląda. Dlatego dobrze
jest po prostu kompaktować sobie to wszystko. Więc takich kilka wskazówek, jeżeli chodzi o zarządzenie kontekstem.
To jest bardzo długi temat, bo mamy też przygotowany materiał w akademii na pół godziny, więc chciałem wam takie podstawy przekazać, żebyście mieli w ogóle o tym pojęcie. Natomiast musimy
iść dalej, ponieważ jest dużo jeszcze rzeczy, o których chcę wam opowiedzieć.
Idziemy z dalszą wskazówką. To jest właśnie o tym, co wam mówiłem. Wskazówka piąta. Ludzie lubią sobie ściągać dużo serwerów MCP, z których potem nie korzystają i okazuje się, że włączają
sesję i nagle mają puf 40% zjedzone i są bardzo blisko Dumzonu. Bardzo blisko.
Okej. Natomiast możecie sobie myśleć, kurde, Kacper, ale trochę bez sensu.
Klot nic nie pamięta, ma pamięć krótkotrwałą tak naprawdę, która mu się co chwilę resetuje. No nie do końca.
Mamy też takemy sobie taką pamięć długofalową, długoterminową w clodzie i jest to plik, który nazywa się clot.m.
Tak nazywa się ten plik clot.m, gdzie clot przechowuje najważniejsze informacje o tym, co robicie w projekcie. I teraz Antropic trochę wyszła naprzeciw i ułatwiło życie,
ponieważ mamy taką komendę, która nazywa się init. Ja teraz ją mogę sobie użyć i ta komenda inicjuje cloda, który zaczyna przeglądać cały wasz projekt i mówi: "Okej, zbudował dashboard w reaccie".
Okej, to są komendy, które uruchamiają serwer. W porządku. Tutaj były pliki, z których wziął informacje. Jasne, zapiszę sobie taką informację i on tworzy taki plik, który za każdym razem dodaje mu
się do kontekstu i dzięki temu ma podstawowe informacje o waszym projekcie i co w nim robicie. Natomiast to nie jest miejsce, żeby przechowywać wszystkie informacje o nim. Ten plik
musi być krótki, konkretny. Najlepiej gdyby miał tak do 200, max, może 300 linijek. Jeżeli chodzi o to. Natomiast widziałem często pliki. Ja też taki sam błąd na początku popełniałem, że tam
wrzucałem wszystko co jest 1000 linijek, 1500 linijek i to był duży błąd. Też Antropik o tym jasno mówi. Plikot.m ma być krótki i konkretny. Zobaczcie, on mi się tutaj stworzył
i w tym momencie mamy łącznie 58 linijek. najważniejsze informacje, czyli co to jest za projekt, jakie są komendy, jaki jest stak technologiczny, jaka jest architektura projektu, gdzie są dane
zachowane, konwencje i tak dalej i tak dalej. Więc w ten sposób komendą INIT sobie ten plik tworzycie. Oczywiście sami go możecie pisać, dodawać do niego informacje, ale komenda in jest świetna
i pamiętajcie komendę init nie jak rozpoczynacie projekt, tylko jak już coś zrobicie, ponieważ na podstawie czego on ma stworzyć ten plik, jak nie ma informacji o projekcie. tworzycie
pierwszą warstwę, dopiero komenda init, aby to zainicjalizować sobie.
Okej, no to co, lecimy dalej. Tutaj też macie źródła do artykułów yyy od Antropica i te z blogu, więc polecam zapoznać się z nimi, poczytać.
Słuchajcie, przechodzimy teraz do kluczowych funkcji w Cloud Code. Mamy 2057.
Tak jak zwykle przygotowałem za dużo, więc będę teraz trochę przechodził na większy konkret, jeżeli chodzi o omawianie tych rzeczy i skupię się na najważniejszych informacjach. Czyli to
co świetne w ogóle w Antropicu to, że oni mają takie bardzo podejście nowoczesne w sensie tworzenia rozwiązań, które są szybko adoptowane przez innych.
I o co chodzi? Protokół MCP jest to protokół, który stworzył Andropic.
Skillsy jest to protokół, który stworzył Antropic. W tym momencie ten i ten jest wykorzystywany przez inne narzędzia. Po prostu jest tak świetny. Dlatego właśnie bardzo ceniam tą firmę i ich narzędzie,
ponieważ mają bardzo takie nowoczesne myślenie i też można powiedzieć przodują w wymyślaniu rozwiązań, które po prostu pomagają pracować z tego typu narzędziami. Mówiłem wam dużo o
serwerach MCP. Co to jest z definicji? Jest to protokół łączący cloda z zewnętrznymi narzędziami i bazami danych takich jak Google Drive, Notion czy dowolny serwis. No i teraz słuchajcie,
nie wiem dużo osób pracuje na Notion albo pracuje w Air Table i możemy sobie ściągnąć serwer MCP, który pozwala Cloudowi bezpośrednio z poziomu konsoli, z poziomu konsoli wejść na waszą notion,
dodać tam jakieś informacje, pobrać te informacje, stworzyć wam nową bazę w Notion, albo może wejść w table, zobaczyć jakie tam macie arkusze, jakie tam macie informacje. Można na przykład
wejść do Google Drive'a, stworzyć plik, usunąć plik. Na przykład jakbym teraz miał Google Drivea podpiętego, to mógłbym sobie ten raport, który tam zrobiłem w Markie zapisać na Google
Drivea na przykład. Jest to mega fajne narzędzie. Tak jak wam mówiłem, jeżeli chodzi o serwery MCP, dwie rzeczy.
Bezpieczeństwo. Używajcie tylko serwerów z wiarygodnych źródeł, ponieważ jest też dużo osób, które mogą tworzyć serwery MCP, które mogą być po prostu niebezpieczne i mogą spowodować pewne,
nazwijmy sobie to, nieprzyjemności dla was. Więc korzystajcie najlepiej z oficjalnych źródeł, tam gdzie na stronie na przykład Notion jest dostępny serwer MCP.
I jeżeli chodzi o serwery MCP, tutaj oczywiście wam link do dokumentacji.
Ja na przykład bardzo cenię sobie MCP od Subbase. Jeżeli są wśród nas osoby, które na przykład chcą budować jakieś apki, ale nie są techniczni, to jest taka platforma subbase, która pozwala
wam po pierwsze stworzyć bazę, stworzyć autoryzację przez logowanie się, rejestrację, logowanie się przez Facebooka, GitHuba, LinkedIna, Googlea i tak dalej. Ma też cały backend, który
tam możemy postawić. I to co jest świetne, clot może się z nią połączyć przez serwer MCP i wszystko robić za was, czyli zalogować się tam i tworzyć to wszystko bezpośrednio tam. Chcecie
stworzyć jakąś apkę z logowaniem, nie ma problemu. Klocz się łączy z subbasem i robi dla was to logowanie. Mega wygodne.
Tak samo Stripe do obsługi płatności. Chce coś monetyzować, też ma serwer MCP, z którym możecie bezpośrednio pracować.
Więc serwery MCP wam pokazałem. Teraz slash komendy. Slash komendy widzieliście już przed chwilką. Slash komenda gemini to właśnie była slash komenda, którą sam sobie stworzyłem.
Czyli jeszcze raz ją wam pokażę, żeby to dobrze zobrazować.
Slash komenda jest to nic innego jak po prostu powtarzalna czynność, która często jest wykonywana przez was i zrobiliście z niej można powiedzieć taki szablon. Czy
na przykład zobaczcie ja mam komendę Geminite, którą sobie wpisuję, ale ona jest zapisana tutaj, zobaczcie w folderze clot mam commands i mam jemini.
No i tutaj w tej komendzie po prostu jest jasna informacja, co on ma zrobić.
Czy jesteś agentem pośrednącym między użytkownikiem a Jemy CLI? No i tam mu pisze, że bierze prompt ode mnie, loguje się na Jemina, promptuje go, bierze informacje i zapisuje mi. I też
informacja, którą on stworzył, zobaczcie, zapisał mi tutaj w folderze def i tu mam analizę dashboardu zrobioną przez jemy czyli tu mam informację, co mógłbym poprawić, jeżeli chodzi o
widoki. Mam jakieś, można powiedzieć snpety kodu, które mogę zaimplementować.
I tego typu komendy możemy sobie stworzyć bezpośrednio właśnie prosząc cloda o to. Czy na przykład jeżeli widzicie, co jest powtarzane przez was, na przykład review kodu, możecie sobie
zrobić komendę na przykład w stylu code review i poproście po prostu cloda, że hej, robię tą czynność cały czas, spójrz na dokumentację slash command, którą masz wgraną, stwórz mi slash komendę
taką i taką, która ma robić to, to i to i on dla was tą komendę tworzy. I potem tylko sobie klikacie slash, wpisujecie cod review, pyk i wykonuje wam się, można powiedzieć analiza waszego kodu,
czy nie ma tam żadnych baboli. Okej, kolejną sekcją są suagenci, którzy tam występują. I dla mnie suagenci to jest po prostu coś niesamowitego, jeżeli chodzi o Cloda, ponieważ tak jak wam
mówiłem, mamy tutaj sesję odpaloną, nie mamy te swoje 200 000 do wykorzystania, ale możemy poprosić Cloda, żeby na przykład uruchomił sub agentów. I teraz pokażę wam przykład.
Wyszukaj mi proszę informacji w sieci odnośnie technologii, które są obecnie używane do przedstawiania danych w dashboardzie, jeżeli chodzi o analitykę, statystykę i tak dalej. Prosiłbym cię,
żebyś wyszukał to za pomocą dwóch subagentów, którzy będą mieli po prostu inny inną kwarendę, zapytania do wyszukiwarki, tak żeby zwróciły różne
informacje. Były one różnorodne. Okej. No ja teraz go poprosiłem o to, czyli w skrócie ma wyszukać informacje od po dwóch subaagentów mają szukać mi informacje o technologiach, które się
wykorzystuje do tworzenia dashboardów, statystyk i on za chwilkę uruchomi. I zaraz wam wyjaśnię bardzo kluczową rzecz, która wyróźnia właśnie sub agentów. Zobaczcie, jest pierwszy
uruchomiony. No tutaj mi przeskoczył wątek i jest też drugi uruchomiony. I teraz to, co jest świetne w suagentach to jest fakt, że oni mają swoje okno
kontekstowe, czyli w subagencie się wszystko wykonuje, a nie bezpośrednio w naszej sesji. Czyli teraz subaci wyszukają tych informacji. Oczywiście Club ma dostęp do internetu, jak
widzicie, i do stron internetowych w większości. I on mi tylko zwróci wynik.
Czyli jak mam tutaj 54000 tokenów, to nie jest tak, że ci agenci że wykorzystają po 50 000 i nagle zrobi się 150. Nie, nagle mi się zrobi na przykład, nie wiem, 58, bo mi zrzucą po
prostu output od siebie, nic więcej. Możemy taki słup agentów odpalić pięciu, 10. Każdy może wykonywać inne zadanie.
Możemy robić łańcuch agentów, który też jest świetny. Czyli na przykład teraz mogłem poprosić go o to, o co poprosiłem tych dwóch sub agentów, ale powiedzieć mu jeszcze słuchaj, ale uruchom też
dwóch kolejnych subagentów, którzy zrobią analizę względem naszego kodu, jak te technologie by się przydały i tych dwóch subaentów kolejnych będzie już uruchomionych, będzie po prostu co
tam czekała na ławce rezerwowych. Jak dostaną informacje od tych pierwszych, to wezmą te informacje, przeanalizują i dopiero do mnie wostaną informacją. I takich łańcuchów możemy tworzyć więcej
niż tylko dwa subagenty. Może być jeden, drugi, trzeci, którzy wykonują te zadania. I to są takie dosyć proste przykłady, które tu pokazałem, ale możemy sobie tworzyć subagentów, którzy
są przygotowani na konkretne zadania. Zobaczcie tutaj na przykład mam folder agents i mam tutaj na przykład słup agenta, który nazywa się plan reviewer i jego zadaniem jest to, żeby po prostu
wziąć plan, który stworzyliśmy z clodem, przejrzeć go, doszukać się baboli jakiś i dać mi informację zwrotną. i on tak samo robi to w swoim oknie kontekstowym.
Subagenci naprawdę są świetni do tego typu zadań. I z naszej prezentacji jest tam jeszcze jedna rzecz, o której wam chciałem wspomnieć. Są to skillsy. To jest najbardziej zaawansowany i taki
powiedzmy sobie skomplikowany temat, który dla osoby początkującej może być trudny do zrozumienia, ale postaram się w dwóch słowach też o nim opowiedzieć.
Mamy też ogólnie, zobaczcie w folderze clot skillsy. I do czego w ogóle skillsów używamy? Skills to jest tak naprawdę taka biblioteka praktyk instrukcji, informacji dla
cloda, jak ma postępować. Mam tutaj, zobaczcie, skilla o nazwie UX UI guidelines i w tym miejscu mam plik o nazwie skill. No i tutaj mam, zobaczcie, wytyczne UXowe dla Reacta,
czyli technologii od frontendu, która ma tworzyć na przykład jakieś widoki dla mnie. Ja używam tego skilla zawsze jak pracuję na przykład jakąś aplikacją bądź na mnie czy jakąś inną żeby tworzył mi
widoki jakby zgodnie z dobrymi praktykami. Ja nie jestem programistą, ja znam się na Reaccie. To co trochę u mnie to jest Python. Więc jeżeli chodzi o TypeScript i po prostu to nie jest mój
obszar. Więc stworzyłem sobie takiego skilla, który po pierwsze ma tutaj wytyczne na czym się musi skupić. Ma też folder resources. Zobaczcie. I w tym miejscu ma na przykład takie rzeczy jak
responsive design, czyli jak na mobilea na przykład można tworzyć ładne widoki, jakie są wzorce, jakie są dobre praktyki przy projektowaniu systemów, jakie są elementy UXowe. Te pliki są wielkie, one
mają, zobaczcie, po 700 linijek, więc to jest tak naprawdę taki podręcznik dla cloda z konkretnych obszarów, jak on ma wykonywać konkretne operacje. I ostatnia rzecz, którą trzeba wspomnieć odnośnie
skili, ponieważ skil działają tak, że my nie piszemy mu jakiego skilla. Znaczy możemy tak powiedzieć, nie, ale on sam powinien dobrać skilla do zadania. W każdym skillu mamy na samej górze taki
krótki opis. Mamy nazwę oraz opis. I za każdym razem jak promptujemy cloda, on przechodzi przez wszystkie nasze skillsy. Patrzę tylko i wyłącznie na to.
Jeżeli uzna, że ten skill będzie mu potrzebny, on dopiero wczytuje resztę informacji, dzięki czemu kontekst engineering, zarządzanie kontekstem nie wczytuje za dużej ilości informacji na
raz i na tym właśnie polegają skillsy. dobra, przeskakujemy do preski, bo to jeszcze dużo fajnych wskazówek, które przygotowałem dla was, które naprawdę tak ostatnio są mega i muszę je wam
pokazać. Ark. Dobra, jesteśmy.
Wskazówka szósta. Szybko opowiem. Przygotowałem dla was trzy strony, gdzie macie gotowe biblioteki, gotowe komponenty, tak jak skillsy/ash comendy, macie gotowych agentów, których sobie
możecie wgrać bezpośrednio do swojego projektu. Trzy strony, gdzie macie kompletną instrukcję, jak to zrobić.
Rekomenduję poprzeglądać i korzystać z materiałów przygotowanych przez inne mądrzejsze osoby, bardziej doświadczone.
Wskazówka siódma trochę się pokrywa z tym, o czym wam już powiedziałem, czyli przyspieszajcie swoją pracę poprzez właśnie slash komendy. Wykonujecie coś kilka razy w ciągu jednej sesji. Po co
robić to kilka razy, promptować to samo. Stwórcie sobie slash komendę, która zrobi to dla was. Wskazówka ósma. To co mi się bardzo podoba. Odpal armię agentów. O tym też wam już powiedziałem.
subagenci, z których możecie korzystać w cloud Codz niesamowity efekt. Tylko o czym nie wspomniałem jeszcze uwaga, one też oczywiście wykorzystują tokeny, czyli zjadają wasz limit, więc jeżeli
macie plan pro to nie odpalajcie 10 subagentów na raz, bo wam zaraz wystrzeli cały limit na czterogodzinny i wam się skończy możliwość pracy.
Natomiast warto korzystać z subagentów, tak jak powiedziałem, swój osobny kontekst. Jest to duża rzecz, która pozwala lepiej zarządzać cloud codem.
Przechodzimy do sekcji polecane dodatki od Kacpra i to są dodatki, z których ja sam korzystam i które wam serdecznie polecam. Pokrótce co to są za dodatki? Macie tutaj link, on prowadzi do
GitHuba, gdzie też będziecie mieli zawsze instrukcję jak to zainstalować.
Więc teraz opowiem wam co to robi. Sirena jest to dodatek, który ułatwia pracę z kodem jeżeli chodzi o cloud kod.
Często jest tak, że macie dużą ilość kodu już stworzoną. Jak jesteście na etapie jakimś takim średnio zaawansowanym, nagle macie 10 000 linijek kodu, to wyobraźcie sobie, że
prosicie Cloda, żeby czegoś poszukał dla was i on musi przeglądać to wszystko.
Wiecie, płynie przez ten kod, szuka, rozgląda się, nie traci kontekst, nie.
Natomiast Sirena działa w ten sposób, że ona sobie ładuje cały wasz wasz kod do pamięci i wyszukuje jako osobny proces informacje, o które pytasz i mówi tylko i wyłącznie wtedy głównemu wątkowi:
"Słuchaj, użytkownik pytał o to, tutaj znajduje się ta funkcja, szukaj tutaj".
Więc wtedy nie traci 1000 tokenów, tylko dostaje konkretną informację, gdzie coś ma sprawdzić. Mega przydatne. Kolejne to jest Cloud. Clodup jest to taki dodatek, który pozwala wam, pokażę wam może po
prostu tutaj w terminalu nowym zarządzać wszystkimi dodatkami. Okej, czyli to jest taki terminalowy dodatek.
Zobaczcie, tutaj mam wszystkie swoje pluginy, które mam dodane. Mogę też je zainstalować. One nie są zainstalowane.
Mogę je przeglądać. Mogę patrzeć jakie mam serwery MCP, które też mogę zainstalować, które mam zainstalowane i wiele innych. O, o, tu mi akurat jakiś bug wyskoczył i zamknęło. Natomiast idea
jest taka, łatwy sposób związania dodatkami. Jeżeli zaczcie instalować dużo rzeczy, poczujecie, że w pewnym momencie możecie stać nad tym kontrolę.
A mi się wydaje, że chyba wam nie pokazałem tego terminalu. Mój błąd, przepraszam, nie przełączyłem okna.
Więc jeszcze raz słuchajcie. Clot tak wygląda. Czyli możecie sobie przekonać wszystkie wasze dodatki, serwery MCP i w łatwy sposób je
instalować. Okej, przeskakujemy do arka.
Kolejny jest cloud mem. Cloud mem to jest kolejny taki dodatek jako taka warstwa pamięci. On odpala się przy każdej waszej sesji i zapisuje wszystkie rzeczy, które robicie z clodem. Mega
wygodne, ponieważ yyy jest tak często, że nie wiem, po dwóch tygodniach pracy nad jakimś projektem chcecie się cofnąć co robiliście jakiś czas temu i on zapisał wcześniej wasze sesje,
skompresował je po prostu do krótkich informacji i po prostu możecie spytać, że hej, sprawdź, robiłem tego i tego przy tej funkcji, wtedy po prostu się uruchamia ten dodatek cloudm i wyszukuje
właśnie bezpośrednio w swojej pamięci tych informacji i przekazuję wam je bezpośrednio, ponieważ no clot nie może ich zapamiętać, no bo jak rozmawialiśmy, pamięć długafalowa, czyli plik clot
clot.m MD nie przechowuje takich informacji. Kolejny dodatek jest to Death Browser, czyli przeglądarka, która nie zużywa dużo tokenów. przydatna, kiedy debuguje ciężk jakieś kwestii
związane z widokami. Zostawiam ją wam tutaj krótko opowiedziane. No i na końcu happy. Jak sama nazwa wskazuje, jak korzystasz z happy jesteś happy. Happy po prostu pozwala wam, słuchajcie, iść
na kanapę, uwalić się i pracować z telefonu. Po prostu łączycie się przez apkę mobilną z waszym terminalem na komputerze i sobie po prostu możecie robić to, co byście robili przy
komputerze. Więc jak przychodzi wieczór i na przykład jesteście już można powiedzieć w strefie rodzinnej i już nie możecie tam z kodem robić tego uzależniliście
niestety to możecie sobie na telefonie co tam jeszcze wystukać wypromptować go i zobaczyć co się dzieje. Więc takie dodatki osobiście polecam. Tutaj mam wskazówkę 10, o której już chyba nie
będę mógł dużo powiedzieć, ponieważ mam dwie ostatnie, które chciałem wam bardzo pokazać, ale w dużym skrócie.
Słuchajcie, mamy możliwość, aby w clodzie robić kilka rzeczy na raz i to nie tylko się i wyłącznie odnosi.
Czekajcie, przekaczę sobie na terminal, żeby wam to pokazać.
Okej, jesteśmy na terminalu, czyli to się tylko i wyłącznie odnosi, że odpalam sobie, nie wiem, na przykład trzy terminale, robię trzy rzeczy na raz. Tak też możemy robić, nie? Ale przypuśćmy,
mamy na naszej stronie jakiś komponent. Przypuśćmy sekcję Hero. Sekcja Heroj nie wiedzą, jest tu na samej górze. Jak odpalacie stronę czy jakąś aplikację produktową, która ma osobę zatrzymać na
stronie, macie jakiś mocny claim, jakąś animację, no i macie swój landing page i uważacie, nie podoba mi się ten landing page. Chciałbym coś z nim zrobić. No i teraz często jest tak, że promptujecie
cloda, prosicie go o zmiany, zmiany są wprowadzane. Okej, pierwsza wersja, nie podoba mi się, druga wersja, znowu praca, praca, praca, nie podoba mi się, ale jest taka funkcja, nazywa się git
work tree. To już nie będę teraz się rozwijał o co w tym chodzi konkretnie, ale zamysł jest taki, że tworzycie sobie swój projekt jako trzy osobne instancjiacie
subagenta, który wprowadza wam inną zmianę do waszego projektu. Ja mam tutaj przygotowane właśnie komendy, które do tego służą. Mamy tutaj, zobaczcie, trzy komendy. Pierwsza
nazywa się parallel prepare, druga execute, a trzecia cleanup. Te dwie pierwsze nas interesują, czyli pierwsza to będzie parallel prip. Się zobaczy, teraz by sobie ją wpisał, czyli parallel
prep. Podaję mu nazwę funkcji. Teraz bym to sobie nazwał, nie wiem, nowa sekcja Hero. Następnie pisz mu ile ma być wariantów. Tak na przykład nie wiem pięć i on mi otworzy wtedy pięć instancji
mojego kodu tak aby każdy subagent który coś tam zmienia nie zrobił konfliktu i czegoś nie zepsuł w moim głównym projekcie jak to sobie zrobię to się przygotuję następnie musicie zrobić
jedną rzecz poprosić Cloda, aby stworzył wam pomysł na pięć różnych wariantów waszej sekcji Hero. On to zapisze do pliku jakiegoś MD na przykład jak mamy o tą analizę tutaj z Google Analyticsa
będą przez Geminaja i wtedy używacie kolejnej komendy a zowacie na parallel execute i w tym miejscu podajecie nazwę funkcji którą wcześniej podaliście ścieżkę do planu czyli tą ścieżkę tutaj
za pomocą mał podajecie no i na końcu liczba, można powiedzieć wersji czyli było tam pięć klikacie enter chwilę się można powiedzieć rozsiadacie na fotelu albo sobie coś puszczacie robicie inną
rzecz on tam działa jak skończy, po prostu ma dla was pięć wariantów tej rzeczy, którą ma wam pokazać. Dobra, przeskakujemy dalej. Zostały jeszcze dwie najciekawsze rzeczy, więc mamy
akurat do 20 po chwilę czasu. Okej, większość z was już mogła wiedzieć.
Możemyć przeglądarki Chrome bezpośrednio w cloud code. Po prostu prosimy go, żeby odprawił sobie przeglądarkę i robił różne rzeczy. To tak samo się przydaje, kiedy na przykład widoki sobie
sprawdzamy. Bądź sobie wykonać jakąś operację na internecie. to po prostu zrobi. E, tutaj macie wymagania podane, ale to jest ta mniej ciekawa rzecz, więc no po prostu chciałbym wam bardzo
pokazać te dwie ostatnie, więc lecimy z nimi. Słuchajcie, wskazówka 12, ty śpisz, on pracuje. To jest dla mnie rzecz, którą też bawię się od od tygodnia, bo się hype na to mocny zrobił
na zachodzie. Jak ktoś ma XA i śledzi osoby ze Stanów, to wie, że po prostu jest mocny hype. O co chodzi? chodzi o tak zwaną technikę Ralph Wigum loop, czyli możemy z naszego cloda zarobić
pracownika, który dostaje zadanie i mieli te zadanie całą noc i kończy je, czyli możemy mu całą aplikację rozpisać i on od początku ją stworzy i wy sobie idziecie spać. Nie potrzebuje tak
naprawdę od was niczego. Ma plan i ten plan realizuje.
I teraz tak, słuchajcie, tutaj wam wrzuciłem kilka, można powiedzieć, przykładowych repozytoriów, gdzie są właśnie te techniki stworzone. Ja korzystam z tej tutaj. I też chciałem
wam ją pokazać. Czekajcie.
Okej, zobaczcie sobie mój terminal. Za chwilkę go dla was powiększę, ale okej.
Spójrzcie sobie. Tutaj właśnie mam uruchomioną tą technikę Ralph Loop. I tutaj widzicie już mam dokładnie 27 zadań, które wykonywały się dokładnie 4,5 godziny łącznie. Akurat wtedy byłem
na spacerze, co się załatwiłem jeszcze na mieście i przez 4 i pó godziny on mi stworzył od zera całą aplikację. A jaką aplikację tworzył? I chciałem ostatnio stworzyć sobie platformę do egzaminów z
Natena dla osób ze społeczności Akademii Automatyzacji. I stwierdziłem sobie: "Okej, jest ta technika, wypróbuję ją".
łą zrobiłem pięć tego typu platform, ponieważ tech testowałem różne techniki, ale ta ostatnio na lepiej go wykonała. I po drugie ma jeszcze interfejs i to działa w ten sposób, że w instrukcji tam
w repozytorium będzie to opisane, odpalacie sobie na początku jedną komendą i wraz z nim przechodzicie, co chcecie stworzyć, on was dopytuje, zapisuje plan i następnie ten plan
uruchamiacie. No i tutaj się uruchamia cały ten plan i zobaczcie sobie, że on tutaj ma informacje, co było robione, jakie były kryteria akceptacji, jakie są zależności, czyli wszystko po kolei mi
utworzył. Jeżeli chodzi o tą aplikację, ona działa, więc tak naprawdę jak ją uruchomiłem dosyć szybko zadziałała.
Dużo tam nie trzeba było poprawiać, więc ona jest w tym miejscu. Tutaj o mamy tą platformę. To jest panel administratora.
W tym miejscu mam dostęp właśnie jest ilu uczestników, ile osób podeszło do egzaminu. Mogę tworzyć pytania, mogę tworzyć kategorie pytań, mogę tworzyć egzaminy. Ogólnie jak się wylogujemy i
na przykład przejdziemy do sekcji login, też chciałem, żeby użytkownicy, którzy są w naszej społeczności nie musieli tworzyć konta, więc logują się tak zwanym magic linkiem, czyli podając na
przykład swojego maila automatyzacja.pl pl a automatyzację.
Okej, chyba musiałem jakiegoś ma z wpisać. Dobra, nieważne. Chodzi o to w tym, że w tym miejscu wpisują swojego maila, dostają linka na pocztę, za pomocą tego linka logują się do systemu
i tam automatycznie przystąpioną do egzaminu będzie się już liczyła ta sesja czasu, którą mają na skończenie tego zadania. Mam przy okazji też moduł AI w tym wszystkim, no bo jakby z modułu AI,
który też będzie na przykład wrzucał workflowy w Jasonie osób, które muszą zdanie wykonać i AI będzie to analizowało, czy to jest dobrze wykonane, ponieważ jak wiemy w Nitanie
możemy osiągnąć cel różnymi krokami, więc stworzył to w 4 i pó godziny. Mi teraz zostaje tak naprawdę poprawa trochę widoków, logiki, ale no wydaje mi się, że z tego będzie całkiem fajna
apka, którą stworzyłem dla społeczności, żeby trochę dodać kwestii egzaminacyjnej.
No i na samym końcu, słuchajcie, to jest coś co rozwaliło mi głowę kilka dni temu. Ja to Marcinowi pokazywałem, więc no mieliśmy niezły ubaw, ale wyobraźcie sobie, że jesteście, nie wiem, na
treningu tutaj jak ten kolega. Biegacie sobie po parku i w domu zostawiliście Cloda, który sobie tworzy projekt dla was i w pewnym momencie dzwoni do was telefon. Kto dzwoni? Dzwoni Clod i Clot
was pyta: "Hej, słuchajcie, mam problem, ponieważ nie wiem co wybrać, jaką bazę." Wy mówicie: "Nie wiem, nie znam się, podpowiedz mi on wyszukuje informacji w sieci". mówi: "Słuchaj stary, wybierz tą
bazę, bo ta jest rekomendowana tego projektu". Mówi: "Spoko, użyj SQL Lite" i on wtedy mówi: "Okej, zadzwonię do ciebie jak będę biegał dalej". I teraz wam pokażę przykład, ponieważ też nazywa
się narzędzie call me, które też macie tutaj link możecie wrzucić. Ale teraz przykładowo jak jesteśmy na przykład w tym narzędziu, to mu wyczyszczę, sprawdzę tylko czy ten
NCP jest uruchomiony. Okej, widzę, że nie jest uruchomiony.
Bardzo niedobrze, że nie jest Bardzo wam chciałem to pokazać na sam koniec jeszcze taka wisienka na torcie.
No nie jest trudno, nie jest uruchomiony, więc musimy to sobie zostawić, ale w dużym skrócie podłączamy tam sobie swój numer telefonu i Clot do was dzwoni jak wykona
zadanie. Więc to dzisiaj testowałem dwa razy, ale musiałem jakiś port zająć chyba jak przygotowałem dla was inne te projekty, które tutaj się odpalały. Ale tak też w ten sposób możecie się
komunikować z klonem. No i na samym końcu takie podsumowanie z mojej strony.
W tym tygodniu Boris, to jest twórca Cloud Code z Antropica, wypuścili nowe narzędzie o nazwie Cork. Jest to taka wersja aplikacyjna Cloud Code. No i przygotowali całkowicie nowe narzędzie i
na X się padło pytanie do Borisa o to, jaka ilość kodu została stworzona przez Cloda.
Więc tak, więc w tym momencie to rozwiązanie jest w stanie osobą z dużym doświadczeniem deweloperom tak naprawdę oddelegować większość zadań do robienia tych rzeczy. Tutaj macie link do tego
XA, jakbyście nie wierzyli. Udaj, że na końcu macie kilka materiałów, jeżeli chodzi o skróty klawisowe, które też przygotowałem dla was oraz komendy. Taka ściągawka na pewno wam też
się przyda. Okej, słuchajcie, więc nie ukrywając z części merytorycznej dużo powiedzieliśmy, ale ja też chciałbym też wykorzystać trochę okazję i opowiedzieć
wam trochę więcej o naszym projekcie, który tworzymy wraz z Marcinem i który rozwijamy już półtora roku i chodzi konkretnie o Akademię Automatyzacji.
Wiem, że dużo osób z Akademii jest z nami na tym liveie, więc serdecznie was wszystkich pozdrawiam, ale społeczność Akademia Aacji jest projektem. Tak wspomniałem, prowadzimy już pół półtora
roku z Marcinem i mamy już tam ponad 230 lekcji stworzonych. Mamy ponad 600 osób, które tam aktywnie uczą się, można powiedzieć, rozwijają wraz z nami, a przez ten okres o wiele więcej
użytkowników przez tą społeczność przeszło. Jeżeli chodzi o samą Akademię Automatyzacji, to nie jest tylko i wyłącznie platforma, którą możemy sobie nazwać platformą
edukacyjną, gdzie macie materiały i tyle, ponieważ naszym też głównym celem w tej społeczności jest to, żeby pomagać sobie i też rozwijać się z tym wszystkim. Czyli mamy dostęp tak
naprawdę do sekcji community, gdzie możemy się komunikować, rozmawiać. Mamy sekcję Classroom, która wygląda w ten sposób, ponieważ mamy takie podejście, że jak już coś przygotowujemy, jeżeli
chodzi o jakieś kursy, gotowe scenariusze, to zawsze dokładnie to tłumaczymy. Czy mamy ten kurs z Cloud Code, który rozpoczęliśmy w grudniu. W tym momencie on ma około 10 lekcji, cały
czas jest rozwijany. Właśnie skoczyliśmy na poziom średnio zaawansowany. To zobaczcie lekcja z kontekst inżyni do z pół godziny tak naprawdę z samego mięsa, gdzie tłumaczę krok po kroku dokładniej
to wszystko, ale zawsze macie prezentacje z lekcji, macie materiał wideo, gdzie to opowiadam krok po kroku, macie konkretne opisy z lekcji, więc jest to kurs, który będzie miał jeszcze
przypuśćmy, na pewno 10 15 lekcji. Też zaczęliśmy w grudniu otworzyć projekt od zera. Budujemy własną apkę, można powiedzieć, żeby sprawdzić jak za pomocą klatkod zmonetyzować kolejne
rozwiązanie, czyli od pomysłu od walidacji. W tym momencie będziemy budować rozwiązanie. Mały spoiler.
Wybraliśmy wstępny projekt. Będziemy teraz go walidować. Oprócz tego, oprócz Cloud Cod, my też mamy bardzo dużą ilość materiału związaną z automatyzacją, narzędziami no kodowymi, czyli Nathan,
make. To są, można powiedzieć takie korowe narzędzia, które nas występują.
Jeżeli chodzi na przykład o same gotowe scenariusze, które występują w Nenieie, z których możecie korzystać, jest to odgroma lekcji, które mamy podzielone na kategoria. na przykład słuchać sprzedaż,
marketing, optymalizacja pracy, Messenger, WhatsApp, scrapping. Jest tego bardzo dużo. Każda lekcja posiada gotowy szablon, który sobie po prostu pobieracie do swojego Natena
uruchamiacie i wala wszystko działa. A dla osób, które chcą się uczyć, jest zawsze wideo krok po kroku wyjaśniające powoli, dlaczego jak to zbudowałem, jak to działa. Tak, żeby po prostu zrozumieć
to. Oczywiście jeżeli ktoś chce po prostu to sobie włączyć i uruchomić to nie ma problemu. Też ma gotowy scenariusz, ale jeżeli ktoś chce to zrozumieć, a mamy bardzo dużo takich
osób, to po prostu bezpośrednio ma w lekcji wszystko dokładnie wytłumaczone.
Więc sekcja Classroom, ponad 230 materiałów. I to też nie jest tak, że te materiały u nas się pojawiają raz na kwartał i jest cisza wielka. Jeden do trzech materiałów tygodniowo zawsze się
pojawia na społeczności. Widać to nawet u nas w podpiętych postach, że c dni temu były dwie nowe lekcje, 6 dni temu jedna lekcja, czyli trzy nowe materiały. I też te materiały tworzymy w
oparciu o potrzeby osób, tak, które się są w społeczności. Mamy wątek podpięty, czy 50 różnych propozycji padło o to, co mamy stworzyć dla nich, jakie mają potrzeby, co chcieliby zobaczyć w
akademii. No i te staramy się tak powiedzieć w ten sposób, że jak temat jest ciekawy, jest możliwy do zrealizowania, to po prostu go realizujemy dla wszystkich osób. I tak
jak wam mówiłem, jeżeli chć doradzić składać kieruny, zrobił system do ewidencji czasu pracy, obecnie go testuje, ale prawdopodobnie będzie się mógł pozbyć abonamentu chyba na sześć s
stówek miesięcznie, więc sam to wymłodził. Sławek nie są techniczną, nie jest programistą, scoutkodem wszystko sobie stworzył, a to jest jeden z przykładów, które bezpośrednio się
pojawia właśnie u nas w akademii, jeżeli chodzi o pracę na tych projektach. Więc tak jak widzieliście bezpośrednio przygotowaliśmy dla was dzisiaj też taką możliwość dla osób którzy są na liveie
żeby wam trochę podziękować za wasz poświęcony czas z nami jesteście po prostu ofertę specjalną to jest minus 50% na obecny dostęp my nie mamy miesięcznych dostępów kupuje się dostęp
jednorazowo i ma się go na zawsze. Tak nieważne ile jeszcze wyjdzie materiałów co będziemy ciekawego robić kupujesz raz i jesteś z nami na zawsze. Jeżeli ktoś chce skorzystać, mam też opcję po prostu
ratalną, czyli dzwicie sobie tą płatność na trzy i możecie wtedy przez trzy miesiące ją opłacać i też po tych trzech miesiącach otrzymujecie dostęp bezpośrednio do tego wszystkiego.
Więc słuchajcie, to byłoby na tyle ode mnie, jeżeli chodzi o merytoryczną i krótką autopromocję, więc chciałbym teraz przejść do sekcji pytań oraz odpowiedzi, czyli lecimy z Q&Aem. Ja
dostaję pytania od Marcina bezpośrednio na Discordzie, więc on będzie mi je podsyłał. Teraz będę na nie odpowiadał, więc możemy z nimi lecieć. Mamy pierwsze tutaj pytanie, które się pojawiło. Póź,
że je przeczytam. Kacper, sam piszesz skille i te wszystkie instrukcje. Czy wykorzystujesz AI do tego? Wojtku, oczywiście, że AI wykorzystuję do tego. Nigdy nic nie
piszę samemu. Po prostu wspomagam się sztuczną inteligencją.
Może pokażę też jak to robię. też może być fajny taki tip dla was.
Czekajcie chwilkę, tylko przekroczę sobie klik na ten widok.
Okej, macie aplikację Cloda odpaloną w tym momencie. Przechodzę sobie na czat i na projects i stworzyłem sobie projekt, który nazywa się Cloud Code Infra Improver. Tutaj wgrałem sobie całą
dokumentację z ich oficjalnej dokumentacji. Wgrałem sobie bardzo fajne artykuły blogowe, które są tworzone przez deweloperów. Grałem sobie materiały z YouTubea, tak samo tworzone
przez deweloperów. czy członków z zespołu Antropica. No ja po prostu mu piszę, że słuchaj, chcę stworzyć taki taki skill, mam taki taki problem, wyszukaj informacje, przygotuj mi go. Ja
sobie z nim tutaj go młócę, tak? I z nim tutaj bezpośrednio działam. A to co robię, to robię zawsze dodatkową walidację, bo jak wam pokazywałem tego skilla odnośnie UXA, UA, to ja nie mam
wiedzy odnośnie frontendu. Po prostu to nie jest całkowicie moja działka. A ja też nigdy nie ufam jednemu źródłowi. Jak pisz, że clot mi pisze instrukcje, to mówię sobie: "No dobra, ale co jeżeli on
trochę halucynuje? jaką mam pewność, że pisze mi prawdę i potem to co mi napisze będzie bezpośrednio się przekładało na mój projekt i problemy, które będą się potem rozwiązować. Więc to co mi wymyśli
Clotz często idę do Gemini po prostu mam wygląda też konto w Geminiu 3.0 czatu GPT nie mamy, bo wyłączyliśmy, bo po prostu nie działa nam tak jakbyśmy chcieli, a modele od Jemina są świetne i
tak samo lubimy od Antropica i tam po prostu mu wkleją to i mówię: "Słuchaj, dostałem taką instrukcję od znajomego dewelopera, ale nie mam pewności, czy on to dobrze mi napisał. sprawdź,
weryfikuj, daj znać, czy popełnił błędy, czy czegoś brakło. No i słuchajcie, mam dwa źródła prawdy dzięki temu i dzięki temu też mam większą pewność. No nie mam 100%owej pewności. Nigdy nie mamy z tymi
narzędziami 100%owej pewności, ale w jakiś sposób staram się ją tutaj zmienić. Dokładnie. Dobra, lecimy z kolejnym pytaniem, które się pojawiło.
Do side projectu po godzinach. Myślisz, że styknie pro? Apkaowa 2h wieczorem.
Burzykowski tak styknie, ale domyślam się, że jak będziesz padał te limity szybko będziesz chciał zdecydować się na wykupienie planu max. Mamy ten najdroższy plan i w mojej ocenie jest to
najlepsza inwestycja w narzędzia AI oprócz voicinku, którą tak naprawdę co 10 wykładamy. Byliśmy na Pro, byliśmy na maie, teraz jesteśmy na najwyższym maie.
Na najwyższym maie nie wykorzystałem jeszcze limitów. Byłam na tym maksie za 100 $arlar i on naprawdę jest spoko dla osoby, która niedużo dubie, bo tam nie dojdziesz do limitów. Z pro wydaje mi
się, że na początek będzie dla ciebie w porządku. Jak będziesz dobrze tym kontekstem zarządzał, rekomenduję trochę więcej edukacji o zarządzaniu kontekstem, używania właśnie
slash comendów, innych subagentów, to powinieneś sobie z tym poradzić. Dwie godziny dziennie to nie jest dużo. Ja dziennie spędzam z tym narzędziem czasem no ponad 10 godzin. Tym bardziej mam
cały czas asystenta odpalonego mojego personalnego, z którym cały czas coś młucę. Plus mam jeszcze sesji gdzie coś koduję, więc no w tym momencie na tym planie najwyższym nie doszedłem jeszcze
do limitów i jest mega ciężko. Tym bardziej odpalałem tą pętlę Ralfa, która mi budowała projekt i nabudował mi ten projekt, a ja wcześniej już naprawdę dużo na niego korzystałem, więc prawo
powinno być w porządku, jeżeli o to pytasz na start. Okej, kolejne pytanie.
Czy rekomendujesz windsurfa do pracy z Clodem? Niestety nie odpowiem na to pytanie, ponieważ nigdy nie pracowałem z Windsurfem. Znam to narzędzie, ale nie wypowiem się na jego temat. Yyy, ja
obecnie troszkę nawet powiem wam szczerze, że odchodzę od narzędzi tych ID, terminali do programowania i robię wszystko bezpośrednio w terminalu, ponieważ y też duża ilość kodu, która
wychodzi m często jest taka, że jeem w stanie zweryfikować technicznie, więc bardziej operuję na planach i instrukcjach, które się pojawiają.
Na przykład też nam trochę brakło czasu, ale to też bezpośrednio w akademii jest omawiane. Będzie omawiane. To jeszcze wam pokażę jedną rzecz, która jest mega fajna.
Czekajcie, na ekran się przełączę na terminal.
Okej, tutaj mam w komendach tak zwane komendy defowe. Jest def, def, def, def.
I na przykład jak wam mówiłem, jak tworzy mi się planzie, to ja nigdy tego planu nie akceptuję za żadne skarby. To co robię to po pierwsze uruchamiam sobie subagenta do weryfikacji planu. Jeżeli
plan jest poprawnie zweryfikowany uruchamiam sobie wtedy slash komendę, która zapisuje cały mi ten plan.
O, przepraszam, zamknęło się. Cały ten plan mi zapisuje do pliku. Zapisuje mi go do pliku. Robi mi tam two listę, co trzeba wykonać w tym planie. Tworzy mi plikst, gdzie kod zapisuje notatki i
wtedy za każdym razem jak przyszę sobie sesję, żeby zachować kontekst i mówię mu: "Słuchaj, stworzyłem mu ci listę zadań, którą masz wykonać tutaj ona się znajduje wykonaj ją." I on wtedy
wykonuje ją i jak skończy jedną fazę, na przykład pięć zadań, odznacza je, testuje wszystko i czyszczę sesję.
Dodatkowo stworzyłem też komendę o nazwie review oraz execute, które z których skorzystam, aby wykonać zadanie.
Ja na przykład nie piszę mu wykonaj fazę pierwszą, tylko wpisuję sobie komendę def execute, podaję mu fazę, on to robi, a potem wykorzystuję komendę def review, aby za każdym razem kod, który on
stworzył był był, można powiedzieć zwalidowany. No bo słuchajcie, trzeba ograniczać błędy. Im mniej błędów, tym mniej potem będziecie się z tym wszystkim tak naprawdę bawić. A będzie
tych błędów, będzie jakaś ilość błędów, która się pojawia, to jest normalne. Tak więc jak najmniejsze zaufanie, jak największa walidacja, testy, testy, testy, dawajcie testy,
żeby on wpisał wam testy, tak, w tym wszystkim i dzięki temu macie zmieszać tak naprawdę ryzyko tego błędu.
lecimy z kolejnymi pytaniami, które się pojawiają.
Sonet versus opus. Kiedy, jak, po co? Opus is the king, można powiedzieć w tym momencie. Jest to niesamowity model.
Wielu deweloperów w tym momencie, jak czytam sobie ich wpisem na Xie czy na linku, no to jest po prostu zaskoczona jakością tego modelu. Naprawdę oprócz 4,5 robi niesamowitą robotę. E, i to
wszystko zależy. Mogę ci powiedzieć, ja pracuję na opusie non stop, bo mam wysoki plan i mogę sobie na to pozwolić.
Natomiast gdybym miał plan pro i był na twoim miejscu, to Opusa wykorzystywałbym do pracy analitycznej, czyli tworzenia planu, yyy, szukania błędów, rozwiązywania błędów, czyli znalezieniu,
dlaczego coś nie działa, a Soneta bym używał jako egzekucję po prostu.
Pamiętajmy o tym, że mamy jeszcze model HQ 4,5, który też nie jest najgorszy i możecie haq na przykład używać w swoich suagentach do jakiś prostszych zadań, które nie wymagają dużego stopnia
zaawansowania, więc trzeba tym trochę żonglować.
Czy dane są? Kolejne pytanie. Czy dane są udostępniane? Model uczy się na nich.
Odpowiedź możesz w ustawieniach zaznaczyć czy przekazywać dane do Antropica, aby mogli je wykorzystać do uczenia się twoich modeli.
Więc tak to wygląda. Jeżeli chodzi o bezpieczeństwo kodu, to nie, nie mają do tego dostępu. Oczywiście no praca na repozytorium, praca z Gitem jest podstawą, o której nie wspomnieliśmy. To
jest trochę bardziej zaawansowany temat, ale pracujemy zawsze z Gitem. Kod zapisujemy do repo. Pracuj oczywiście na prywatnych Repo, jak tworzysz coś, co nie chcesz, żeby wyszło, ale nie, to nie
wycieka. Co oznaczają tokeny w jasnoniebieskim kolorze w konsoli Cloda? Już wam tłumaczę, bo to też dla niektórych osób może być niezrozumiałe. Tokenyet tak
naprawdę to jest tekst. Wyobraź sobie, że przekazujesz jakiś tekst napisany i wklejasz go do cloda i on wtedy ten tekst dzieli na tokeny. Po prostu jednostką miary dla modeli AI, llmów nie
jest można powiedzieć wyraz, litera, cyferka, czyli tokeny. I tokeny to jest reprezentacja, można powiedzieć słowa.
Na przykład mamy słowo, nie wiem, opus to na przykład podzieli opus na dwa tokeny OP i US. I tokeny to jest można powiedzieć, jak ci mówiłem, mówiłem wam wcześniej, maksymalna ilość informacji,
które może przyjąć. Czyli mamy ten okno kontekstu, ono ma 20 000 tokenów i jak przekluczymy tą ilość tokenów, to on po prostu się wyłącza i musi nową sesję rozpocząć. Więc tak, tokeny możemy
zimpować. To jest po prostu jednostka miary, jeżeli chodzi o modele LLMowe.
Kolejne pytanie, jakie się pojawiło. Jak ustawić limity API przy korzystaniu z API z Cloda? Okej, od razu mówię, broń boża, nie korzystaj z API.
Jeżeli chodzi o Cloda, bo mówiąc kolokwialnie może trochę się zmieścić z planszy. Jest to całkowicie nieopłacalne. Tak jak wam mówiłem, ja dziennie wydaję w przeliczeniu na te
tokeny około 100, 150, nawet ponad 150, więc na sam abonament miesięcznie wydajemy 200, a w skali miesiąca ponad 1000, tam 2000 byśmy to przeliczyli na normalne zrzucie przez API. Nie pracuj
przez API, kup, jak chcesz sprawdzić na niej, pracuj, ponieważ to będzie niebezpieczne. A jak limity ustawić? No jak masz konsolę antropica to po prostu doładuj konto nie wiem za 20 dolców. No
i jeżeli ci tych kien jest szkoda, po prostu nie patrz na to, na zużycie. Po prostu pracuj sobie, a się zużyjesz.
Tak? No nie rekomenduję pracować przez API ogólnie.
Jest kolejne pytanie. Czy moje skille, moje komendy subagentów mam w języku polskim czy angielskim? Część mam w języku polskim, to są napisane przeze mnie. Cześć tym repo będzie po języku
angielskim, bo to są to można powiedzieć subagenty czy komendy, które po prostu wsiąłem tak naprawdę z tych agregatorów, więc ogólnie staram sięć po polsku, bo Klut nie ma z tym problemu. Nie ma
znaczenia, czy to będzie język polski czy angielski. On to rozumie. Tym bardziej wie, że się po polsku ze mną komunikuje. Tym bardziej jakiś czas temu było badanie pokazane, że język polski
jest bardzo dobrze interpretowany przez modele LLM. Więc nie bójmy się języka polskiego używać, jeżeli chodzi o to.
Okej. I ostatnie pytanie jest, czy na kursie uczysz jak wykorzystywać architekturę rag? Okej, słuchaj, jeżeli chodzi o kwestię raga, mamy u nas w skolu, może to pokażę, żeby to lepiej
było pokazane. Mamy u nas na schoolu projekt firmowa baza 2.0 zer i to jest rak, który jest oparty właśnie o Natena o Qrant oraz o bazę pozglesowską, gdzie tworzymy sobie bazę ragową na przykład
pod nasze materiały firmowe, tak aby potem chatbot mógł mieć do nich wiedzę.
Jeżeli chodzi o samego raga, to pokazywałem wam właśnie dodatek, który jest pokazany tutaj. On nazywa się Clodmem i on można powiedzieć taką bazągową jest bezpośrednio wdrożoną do
Cloud Code. Tak więc mamy gotowe rozwiązanie, z którego można korzystać i on można powiedzieć jest taką baz ragową pamięcią, ale jak szukasz typowo raga, no to mam to ma materiały bezpośredniowy
Akademii Automatyzacji, z których możesz skorzystać sobie.
to co to jeżeli chodzi o pytania to widzę, że powoli kończą się na Discordzie te pytania.
Pozwolę sobie spytać Marcina, czy są jakieś dodatkowe.
Czy mamy jeszcze jakieś pytania? Okej, widzę, że Marcin na razie nie odpowiada, więc chyba możemy przyjąć, że powoli one się wyczerpały, jeżeli chodzi o to. Ogólnie o klocie, słuchajcie,
można opowiadać godzinami. To 90, no nie 90, to godzina 15, którą poświęciłem na to. To jest naprawdę wdrożenie w takie mega podstawy. Mam nadzieję, że to co pokazałem zarazi wam zajawką do tego
narzędzia, bo ja jestem kurde mnie trochę przewicie zajarany tym narzędziem. Uważam, że wchodzimy w końcu taką erę 2.0, jeżeli chodzi o te narzędzia AIowe, że one rzeczywiście
bezpośrednio będą miały wpływ na to, jak pracujemy, jak zmienia się paradygmat ogólnie, jeżeli chodzi o technologię i budowanie tych rzeczy, ponieważ jak pokazywałem na początku mini tool dla
firmy, nie ma problemu, mogę sobie zbudować sam. Nawet ten wojsk, który wam pokazywałem, jak się tak naprawdę skupicie, możecie sami sobie to zbudować, takie narzędzie do
transkrypcji, które będzie u was działało i nie będziecie musieli narzędzia kupować.
Czyli firmy w tym momencie w mojej ocenie w najbliższym roku czasu, te które oczywiście będą chciały to robić, będą się skupiały właśnie na tym, żeby troszkę zwiększyć kompetencje w
zespołach, które mają, nawet tych nietchnicznych, po to, aby oni wykorzystywali tego typu tule do tworzenia rzeczy, które po prostu ułatwią robotę, ułatwią im po prostu
codzienną pracę, przyspieszą ją, zoptymalizują i też mogą obniżyć koszty i to niesamowicie. Przykład Sławka, o którym wam wspomniałem. Ewidencja czasu pracy co miesiąc, siedem stówek.
stworzył rozwiązanie. Trzymam kciuki, żeby dobrze mu poszło. Jak to wdroży tak naprawdę w skali roku prawie 10 000 oszczędności na jednym narzędziu. O ile takich narzędzi występuje, ile pluginów
występuje, które musimy, za które musimy płacić. Jest ich niesamowicie dużo.
Okej, widzę tu jeszcze Marcin mi kilka pytań podesłał, więc słuchajcie, jest po czasie, ale siedzimy, działamy dopóki są pytania. Jest pytanie, jak oceniasz, co przyniesie nam ten rok w zakresie
rozwoju AI, bo świat się zmienia błyskawicznie. Okej, no to słuchajcie, przed chwilą odpowiedziałem na to pytanie. M, no i wydaje mi się, że to co będzie
mega ciekawe, to też podejście z codziennej pracy. Jak wam mówiłem na początku, ja jestem asystentem AI, tym nowym, tym moim personal OSem tak zwanym. Pracuję trzy ctery tygodnie. Ja
widzę, że w skali dnia ja robotę przyspieszyłem mniej więcej no godzinkę, półtorej, a obecnie już sobie przyspieszam pracę moją taką codzienną na tych zadaniach, co wykonuję. A do
lutego, gdzie będzie kolejny live wam to pokażemy. Mam w głowie tyle pomysłów jak to wykorzystać jeszcze i ulepszyć, że no boję się o swój czas wolny. A teraz po prostu miałem mniej, bo skupiałeśmy się
na tym, na tym liveie, żeby go dobrze przygotować, ale to też będzie bomba.
Jeżeli chodzi o to, wydaje mi się, że po prostu zmieniły mega podejście do takiej pracy zdziennej przy komputerze.
Mam nadzieję taką, że te tego typu modele dostaną trochę więcej swobody w naszym systemie i będą mogły bardziej wykonywać pracę takie nazwijmy sobie bezpośrednio, na przykład zarządzanie
myszką, wykorzystywanie jakieś rzeczy w systemie, nie tylko i wyłącznie przez terminal, ale dostaną więcej swobody i też na przykład będą mogły wykonywać bardzo długie zadania, które będą
wymagały po prostu planowania, egzekwowania, refleksji i wykonywania tych zadań. Mówiłem wam o tej pętli Ralph Wigom, która służy do budowania projektów. Ale czemu tylko do budowania
projektu? Przecież możemy dzięki temu stworzyć sobie na przykład strategię wejścia na przykład nie wiem z nowym produktem. Może się dać mu zdają na 10 godzin, żeby on zmieli całą konkurencję
z sieci, przygotował wam swota, przygotował wam inne techniki, na których będzie się uczył i wróci do was kompletną strategią. Na przykład tak czemu nie w marketingu, czemu nie w
biznesie, czemu nie w obszarach, które wymagają tak naprawdę nie tylko i wyłącznie kodowania. Cloud code przez nazwę kod trochę może się mylnie mylić, że to tylko jest na rzecz wykodowania,
ale to jest błąd. Z tym narzędziem mamy tak naprawdę wiele możliwości i tylko trochę wyobraźnia w tym momencie ogranicza, więc to co przewiduję najbliższy kwartał hype i bum jaki się
pojawi na cloud code będzie niesamowity i on też powoli przychodzi do nas i widz na słyszyal patrzą na to wszystko. No widzicie coraz więcej kontentów z tym związanych. Też widzę po
zainteresowanych osobach, które są tutaj, że po prostu są głodni tej wiedzy. A my będziemy staralić się tą wiedzę dostarczać przystępny, ciekawy sposób, tak żebyście mogli ją
wykorzystać po pierwsze w swoim biznesie, na swoim stanowisku jako specjaliści bądź jako osoby na przykład, nie wiem, coś trochę przebranżowić, to jak najbardziej.
Dobra, czy mam jakieś kolejne pytania? Okej, Marcin daje mi znać, że dla osób, które ewentualnie tutaj się zastanawiają nad dołączeniem do akademii, to już mamy info, że poszło prawie 40% wszystkich
kodów z tych 100, więc jeszcze raz do poniedziałku, jeżeli chodzi o tą promocję, którą mamy tutaj włączoną.
Więc jeżeli ktoś się zastanawia, waha, niech mnie łapie tam na Facebooku, linku Xie na mailu, odpowiem na pytania. No ale ta promka może szybko się skończyć, bo już mamy całkiem sporą ilość osób,
które dołączają do nas. I mamy to jeszcze jedno pytanie od Mateusza.
Jakieś tipy dla kogoś z bardzo bardzo postanowią z programowania. Na czym się skupić na starcie? Mateusz, skup się na rozmowie z Clodem. Jeżeli czegoś nie kumasz, to nie ma problemu, ponieważ w
tym momencie na przykład wydaje mi się, że największym atutem jest to, czy masz pomysł na coś. Tak, jesteśem w stanie ten pomysł sobie zwalidować. Na przykład masz pomysł na
zrobić jakiś system dla siebie, który ci wpisze roboty, ale za cholerę nie wiesz jak to zbudować. No to idź do cloda, wądź sobie jakiegoś voicinka, zacznij gadać, opowiadaj jak by to miało
działać, czego ma ci to pomóc, jak to widzisz, jakby to mogło twój problem rozwiązać. Nawijaj tyle co ci przyniesie tak naprawdę sil na język jak skończysz po prostu powiedz Cludowi. Wykorzystaj
ten prom, który pokazywałem na początku, żeby zadawał jak najwięcej pytań, żeby zwalidować jak do tego podejść i on sam ci doradzi jaką technologię wybrać, jak to zbudować, bo on to zbuduje przecież.
Jakiej platformy użyć. Mówiłem ci o subbaseie. To jest świetne, jeżeli nie chcesz budować zbyt dużej infrastruktury. Skorzystaj z subbasea.
Jest to pas tak zwany, czyli platform as a service, który tak naprawdę jest agregatorem różnego rodzaju funkcji, które są niezmęne w przebudowie aplikacji. Ucz się przez rozmowę z nim
bezpośrednio. Proś go, żeby wyjaśnić to w prosty sposób. Jeżeli będzie jakieś wrażenie, którego nie kumasz, poproś go, żeby to opowiedział jak dla pięciolatka.
Staraj się to zrozumieć, zapisywać sobie to wszystko. To ci się przyda po prostu.
Niestety nie ma krótkiej drogi takiej bezpośrednio. Trzeba po prostu z nim pracować tak aż po czasie będzie ci łatwiej. Jeżeli nie chcesz go prosić, żeby cały czas ci to tłumaczył jak
pięciolatkowi, to stwórz na początku dla niego ten output style, który wam pokazywałem i zapisz tam te informacje, że są nietchniczną. Nie kumasz tego do końca i niech tłumaczy jak najdokładniej
po prostu. Więc tak bym do tego podszedł.
Dobra. Okej. Mamy kolejne pytanie od rajdowe.
Czy kot potrafi stworzyć stronę internetową? No słuchaj stary, jak najbardziej pokazywałem na samym początku nawet, więc mogę do tego jeszcze wrócić.
Wszystkie nasze stronki, które są tutaj zbudowane, które są w tym miejscu, zostały spocane przez Cloda od zera. Wszystko.
Kolejna strona ta te zbudowana przez Piszemy wirale. No to już apka zbudowana przez Cloda. Więc nawet ta tutaj tą taką fajną animacją, którą tu widzicie, też jest zbudowana przez cloda, więc jak
najbardziej. Clot, clot, clot da sobie z tym radę. Tak, okej. Jest pytanko. APK mobilne.
Tak, no jak najbardziej. Technologia to technologia pod tym względem, więc to nie ma takie dużego znaczenia, co budujesz. To ma być apka desktopowa, taka typowa z GUI na przykład, która
sobie odpowiedzieć na desktopie, na Windowsie czy na Macu. Ma być to apka mobilna też. Jak najbardziej możesz apki mobilne budować z cloud codem, tak? Jeżeli chodzi o to tutaj nie patrzmy na
to, czy jesteśmy w stanie coś zbudować pod tę stronę, no bo on technologicznie to uciągnie, tak? I bierzcie pod uwagę to, bo też nie chcę, żeby to wybrzmiało jako
rozwiązanie na wszystkie bolączki. Za chwilę wyjdzie z tego livea i zbudujecie jakieś sasy za 5000 dolców co miesiąc będziecie sobie zgarniać. Nie, to też nie działa w ten sposób. Chodzi o to, że
to narzędzie mega ułatwia pracę. Jeżeli będziemy mieli konkretny plan, poznamy dobre praktyki pracy z clodem, czyli też właśnie pracę z tym kontekstem, z planowaniem, zarządzaniem jego pracą, z
walidacją tego wszystkiego, na bez wiedzy technicznej, to możemy dojść daleko w tym wszystkim i sobie z tym poradzić.
Teraz widzę dużo komentarzy programistów, też mam dużo znajomych, którzy mówią, że cały czas nie działa, to jest bez sensu, nie? Ale słuchajcie, jeżeli twórca Cloud Code tworzy tak
naprawdę apkę, które są mega rozbudowane, mega skomplikowane i w całości kod jest napisany w będ właśnie przykład poć na koniec bezpośrednio za pomocą tego toa, no to jak się nie da.
Tak, ja kumam, że nie zbuduję takiej aplikacji dużej jak Antropic, no bo nie oszukuję się, nie jestem w stanie zbudować, nie brakuje mi wiedzy. A jeżeli doświadczeni programiści całą
pracę kodowania delogują na niego, oni nim zarządzają tylko, są nadzorcami, to jak się nie da, jak się da.
No dobrze. Jeszcze raz poproszę o krótki followup od Marcina, jeżeli chodzi o pytania.
Czy jest coś jeszcze? Okej. No widzę, że na razie Marcin tutaj jeszcze nic nie pisze prawdopodobnie coś tam jeszcze nam odpisuje. E, pamiętajcie o tym, że ja trochę w przyszłości jestem
tak pod tym względem, że nie widzę na bieżąco tego co piszecie. Po prostu stream ma opóźnienie 10, 15 sekundowe, więc też po prostu potrzebuję chwilę, żeby dowiedzieć się więcej. Ale okej.
Marcin jeszcze z jakimś pytankiem do mnie wrócił.
Lecimy dalej. Kolejne pytanie jest, czy mogę zbudować własnego AI, open source, AI, mieć lokalnego agenta prywatnego do tajnych do tajnych yyy danych. tajnych danych.
Okej. Yyy, drogi kolego, podać taki przykład. Yyy dwa tygodnie temu trafiłem też na wątek na Xie, gdzie ktoś zbudował skilla właśnie do trenowania modeli. No bo podstawy, mamy modele zamknięte oraz
modele otwarte. Model od Antropica jest modelem zamkniętym. niu nie możemy się do niego dostać i go wytrenować, ale są modele otwarte, które możemy sobie pobrać i możemy je wytrenować. Tylko
biorz pod uwagę jedną rzecz. Trzeba mieć kosmicznie dobry sprzęt, żeby uruchomić model, który ma dużą ilość parametrów.
Przypuśćmy 100 miliardów parametrów. Może otworzyć sobie mniejsze modele. Takim przykładem na przykład jest Bielik, nasz polski flagowy model, który też jest właśnie
wytrenowanym modelem na innych modelach, które są open sourceowe. Są tego zdania wytrenowany. Żeby taki model wytrenować, potrzebujesz dużej bazy treningowej, która będzie się składała najczęściej z
pytań i odpowiedzi. Mamy różne techniki trenowania modeli, mamy trenowanie ze wzmocnieniem, mamy trenowanie nadzorowane. Jest tego naprawdę sporo, więc jesteś w stanie to zrobić. Po
prostu jesteś w stanie to zrobić, ale jest tu długa droga, żeby to wykonać.
Bardziej rekomendowałbym ci, żebyś pobrał sobie na przykład jakiś otwarty model, którego nie wytrenujesz, uruchomisz go sobie lokalnie. Polecam ci narzędzie Olama.
Ona się nazywa olama. Wpisz sobie po prostu olamacom.
Możesz pobrać sobie na kompa aplikację OLAMA i pobrać sobie modele otwarte.
Tutaj wszystkie masz wszystkie modele dostępne i możesz po prostu go sobie odpalić bezpośrednio na swoim komputerze. Możesz go podpiąć bezpośrednio pod toa i
wykorzystać go jako asystenta AI. Nie zrobisz tego bezpośrednio w cloud Cod. Znaczy są jakieś tam dodatki, ale to jest trochę ryzyko, że mogą zbanować ci konto, ale są też na przykład takie
opcje jak Open Cod, które pozwalają na to podąć taki model lokalny, jeżeli chciałbyś na przykład.
Więc tak, da się. Okej, tutaj jeszcze Marcin mnie prosił o jedną rzecz, bo ktoś pyta odnośnie naszego schula i materiałów.
Jeżeli chodzi o wszystkie nasze materiały, to przypominam was, w schoolu w sekcji Classroom mamy wszystko podzielone na moduły, czyli modułów mamy,
jak widzicie całkiem sporo. I w każdy taki moduł zawiera gotowe lekcje, gotowe scenariusz. Tutaj na przykład mamy makea, no to jest olbrzymia ilość materiałów. Tak samo jeżeli chodzi na
przykład o kurs z Nightena, też mamy dedykowany kurs, który was wprowadza w to narzędzie, prowadzi krok po kroku wszystkie najważniejsze moduły jak scout code i tak to występuje, jeżeli chodzi o
to. Więc tutaj Marcin mnie o to poprosił, bo jedna osoba nie mogła tego znaleźć.
Tutaj jeszcze oczywiście na screenie za mną jest też lista tych materiałów.
Dobrze, słuchajcie, mamy zaraz 22 prośba, możecie mnie złapać na wielu kanałach. Jestem na XI, jestem na linku, jestem na fejsie. Macie naszego maila jeżeli chodzi o akademię. Dla osób,
które są u nas w akademii, łapcie mnie na privie.
Jeżeli czegoś się nie dowiedzieliście, co jest dla was niejasne, śmiało atakujcie mnie. odpowiem na wszystkie wiadomości, które się pojawiają, a my powoli będziemy zmierzać ku końcowi.
Więc słuchajcie, jeszcze raz przypominam o tym, że obecnie do poniedziałku jest promocja minus 50%, jest kolejna aktualizacja, że zeszły kolejne te dostępy, więc jeżeli się zastanawiacie,
warto skorzystać zastanowić się nad tym, bo taka kolejna promocja nie wiemy kiedy będzie dostępna. A jak wam mówiłem w mojej ocenie, jeżeli chodzi o te chcecie się dalej rozwijać z tym narzędziem,
szukacie wartościowych materiałów, które będą w języku polskim, będą prowadzone na bieżąco aktualizowane. Otóż jestem serduchem polecam wam akademię i też jak zobaczycie opini naszych użytkowników
nie mieliśmy jeszcze osoby, która była niezadowolona po dołączeniu do naszej społeczności, więc ja też zawsze staram się tutaj pomagać, rozwiązywać wszystkie tematy, które się pojawią po drodze,
więc to jest też taki datowy atut mojego mentoringu, który się tam pojawia.
Więc słuchajcie, jeżeli chodzi o dzisiejszego livea, jeszcze raz serdecznie wam dziękuję.
Prawie dwie godziny. Uwierzcie mi, że powoli mnie zasycha już w gardle, więc będę powoli kończył. Fajnie, że się pojawiliście. Pokazuje mi to, jak wiele osób jest w ogóle zaciekawionych tą
technologią i w ogóle chcę ją poznawać. To jest plus dla was. To jest, słuchajcie, już naprawdę duży krok do przodu, który zrobiliście, że chcecie tak naprawdę z tym rozwijać i jesteście
na tym liveie. Trzymaj po prostu kciuki, że pójdziecie dalej, zainstalujecie sobie cloda, zacznie z nim pracować, a my do was wrócimy, wydaje mi się już w lutym z kolejnym liveem, gdzie mamy w
mojej ocenie jeszcze kolejną większą, fajniejszą bombę, jeżeli chodzi o tego asystenta i uwierzcie mi, że naprawdę no mówiąc po prostu wprost kopara opada.
Takie są jego możliwości, jak waszą pracę może przyspieszyć. Też te materiały na pewno wcześniej się pojawią w akademii, jeżeli chodzi o budowanie tego personal OSA w naszej społeczności.
Trochę tych materiałów już zbudujemy dla osób, które są też wyjdziemy z liveem i pokażemy wam jak to w ogóle wygląda, jeżeli chodzi o rezultaty, żebyście mogli zobaczyć jego wciwości. Więc
słuchajcie, dzięki wam za dzisiaj. To wszystko z mojej strony. Pamiętajcie, live będzie dostępny na YouTubie.
Możecie do niego sobie wrócić, spokojnie obejrzeć. A tymczasem żegnam was i do zobaczenia. Trzymajcie się. Cześć.