-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Kwi 2020, 14:49
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `quiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'GEOGRAFIA'),
(2, 'HISTORIA'),
(3, 'PRL'),
(4, 'JĘZYK'),
(5, 'PRZYRODA'),
(6, 'KSIĄŻKA'),
(7, 'FILM'),
(8, 'LOGIKA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `qanda`
--

CREATE TABLE `qanda` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `question` text COLLATE utf8_polish_ci NOT NULL,
  `answer_a` text COLLATE utf8_polish_ci NOT NULL,
  `answer_b` text COLLATE utf8_polish_ci NOT NULL,
  `answer_c` text COLLATE utf8_polish_ci NOT NULL,
  `correct_answer` enum('A','B','C') COLLATE utf8_polish_ci NOT NULL,
  `assent` enum('0','1') COLLATE utf8_polish_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `qanda`
--

INSERT INTO `qanda` (`id`, `id_category`, `question`, `answer_a`, `answer_b`, `answer_c`, `correct_answer`, `assent`) VALUES
(0, 2, '23-F, czyli nieudany zamach stanu z 23 II 1981 r., miał miejsce w:', 'Grecji', 'Hiszpanii', 'Bułgarii', 'B', '1'),
(1, 1, 'Rogal Świętomarciński to przysmak regionalny:', 'Poznania', 'Lublina', 'Krakowa', 'A', '1'),
(2, 1, 'Pierwsze polskie miasto, którego zabytkowa część została wpisana na listę UNESCO to:', 'Kraków', 'Warszawa', 'Gdańsk', 'A', '1'),
(3, 1, 'Najdłuższy rynek Europy znajduję się w:', 'Gdańsku', 'Pułtusku', 'Toruniu', 'B', '1'),
(4, 1, 'Które z podanych miast otrzymało prawa miejskie najwcześniej?', 'Kraków', 'Złotoryja', 'Toruń', 'B', '1'),
(5, 1, 'Największe święto wina w Polsce odbywa się w:', 'Zielonej Górze', 'Lublinie', 'Krakowie', 'A', '1'),
(6, 1, 'Które z polskich miast położone jest na siedmiu wzgórzach?', 'Kazimierz Dolny', 'Sandomierz', 'Płock', 'B', '1'),
(7, 1, 'Mazowieckie to największe województwo w Polsce. Które jest drugie co do wielkości?', 'Zachodniopomorskie', 'Wielkopolskie', 'Lubelskie', 'B', '1'),
(8, 1, 'Które z miast Trójmiasta jest najmłodsze?', 'Gdańsk', 'Gdynia', 'Sopot', 'B', '1'),
(9, 1, 'Długi Targ to reprezentacyjny plac:', 'Gdańska', 'Olsztyna', 'Sandomierza', 'A', '1'),
(10, 1, 'Który pomnik można zobaczyć w Rynku Starego Miasta w Warszawie?', 'Adama Mickiewicza', 'Syrenki Warszawskiej', 'Zygmunta III Wazy', 'B', '1'),
(11, 1, 'Miasto założone przez Zakon Krzyżacki w XIII wieku to:', 'Gdańsk', 'Bydgoszcz', 'Toruń', 'C', '1'),
(12, 1, 'Które z poniższych miast jest czwarte w Europie pod względem liczby mostów?', 'Bydgoszcz', 'Wrocław', 'Warszawa', 'B', '1'),
(13, 1, 'Polski biegun zimna to miasto:', 'Suwałki', 'Siedlce', 'Łódź', 'A', '1'),
(14, 1, 'Kopiec Kościuszki to atrakcja:', 'Krakowa', 'Wrocławia', 'Poznania', 'A', '1'),
(15, 1, 'Które miasto w Polsce położone jest na 44 wyspach?', 'Łeba', 'Słupsk', 'Świnoujście', 'C', '1'),
(16, 2, 'Który napoleoński marszałek był \'najdzielniejszym z dzielnych\'?', 'Michel Ney', 'Józef Poniatowski', 'Jean Baptiste Bernadotte', 'A', '1'),
(17, 2, 'Etiopia w 1896 r. obroniła swoją niepodległość pokonując wojska:', 'Hiszpanii', 'Włoch', 'Francji', 'B', '1'),
(18, 2, 'Które z tych bałkańskich państw stanęło po stronie Niemiec w I wojnie światowej?', 'Rumunia', 'Grecja', 'Bułgaria', 'C', '1'),
(19, 2, 'Jak nazywano chińskich powstańców, walczących z kolonistami pod koniec XIX wieku?', 'Karatekami', 'Zapaśnikami', 'Bokserami', 'C', '1'),
(20, 2, 'Na początku IX w. judaizm stał się państwową religią w:', 'Chanacie Awarskim', 'Bizancjum', 'Kaganacie Chazarskim', 'C', '1'),
(21, 2, 'Teodoro Picado Michalski - syn Polki - w 1944 r. został prezydentem:', 'Brazylii', 'Hiszpanii', 'Kostaryki', 'C', '1'),
(22, 2, 'Kto był członkiem pierwszego triumwiratu obok Juliusza Cezara i Pompejusza?', 'Marek Antoniusz', 'Oktawian August', 'Marek Krassus', 'C', '1'),
(23, 2, 'Benedykt Polak odbył w XIII wieku wielką podróż do:', 'Pańtw-miat Mozambiku', 'Wysp Indonezji', 'Imperium Mongołów', 'C', '1'),
(24, 2, 'Gdańsk stał się głównym portem ziem obecnej Polski po upadku:', 'Urborga', 'Biskupina', 'Truso', 'C', '1'),
(25, 2, 'Jaki tytuł nosił władca Niderlandów od 1572 r. do 1795 r.?', 'Namiestnika', 'Marszałka', 'Strażnika', 'A', '1'),
(26, 2, 'Terenu którego z tych obecnych państw nie zajął Rzym w starożytnośći?', 'Słowacji', 'Ukrainy', 'Irlandii', 'C', '1'),
(28, 2, 'Gdzie panowali Medyceusze?', 'W Neapolu', 'W Wenecji', 'We Florencji', 'C', '1'),
(29, 2, 'Raguza to stara nazwa:', 'Nicei', 'Monako', 'Dubrownika', 'C', '1'),
(30, 3, 'Z pewnością słyszałeś o grze w kapsle. Na czym polegała?', 'Na pstrykaniu palcami w kapsle tak, by przesuwały się w stronę mety.', 'Na podrzucaniu do góry i łapaniu w dłoń coraz większej liczby kapsli. ', 'Na rzucaniu kapslami do celu, czyli kółka narysowanego patykiem na piachu.', 'A', '1'),
(32, 3, 'Można to toczyć za pomocąpatyka lub kręcić wokół pasa. O czym mowa?', 'Cymbergaj', 'Skakanka', 'Hula-hop', 'C', '1'),
(35, 3, 'O co chodzi w zabawie z tą wyliczanką \"Raz, dwa, trzy, Baba Jaga patrzy\"?', 'Gracz, gdy usłyszy tę formułę, musi włożyć chusteczkę w ręce jednego z uczestników ', 'Celem gry jest \"zbicie\", czyli rzucenie piłką tak, żeby się odbiła, a nie została złapana', 'Gracze, gdy usłyszą tę formułę, muszą znieruchomieć. ', 'C', '1'),
(36, 3, 'Jakiego słowa używa się podczas skakania w gumę, gdy osoba skacząca popełni błąd?', 'Gapa!', 'Skucha!', 'Łamaga!', 'B', '1'),
(38, 3, 'W której zabawie jedna z osób jest \"bezdomnym\"?', 'Berek łańcuszkowy', 'Zośka', 'Komórki do wynajęcia', 'C', '1'),
(39, 3, 'Jakiej Wołgi należało się obawiać?', 'Czerwonej', 'Czarnej', 'Białej', 'B', '1'),
(40, 3, 'Repasację wykonywało się za pomocą:', 'Agrafki', 'Zapałki', 'Igły', 'C', '1'),
(41, 3, 'Musztardówka była zrobiona:', 'Ze szkła', 'Z wełny', 'Z szarego papieru', 'A', '1'),
(42, 3, 'Parmalatkę można było:', 'Nosić - to rodzaj kurtki', 'Włączyć - to rodzaj radia', 'Nalać - to rodzaj kolorowej oranżady', 'A', '1'),
(43, 3, 'W konsumach zakupy mogły zrobić:', 'Tylko kobiety w ciąży', 'Tylko członkowie partii', 'Osoby z konkretnego zakładu pracy', 'C', '1'),
(44, 3, '\"Grzybek\" to była potoczna nazwa:', 'Budki telefonicznej', 'Wejścia do schronu', 'Posterunku milicji', 'B', '1'),
(45, 3, 'Przemysławka sprzedawana była:', 'W szklanych buteleczkach z drewnianym korkiem', 'W szklanych buteleczkach z plastikowym korkiem', 'W plastikowych buteleczkach z plastikowym korkiem', 'B', '1'),
(46, 3, 'Polkrem trzymaliśmy:', 'W łazience', 'W kuchni', 'W barku', 'B', '1'),
(47, 3, 'Praktyka robotnicza trwała:', 'Miesiąc', 'Tydzień', 'Dwa miesiące wakacji', 'A', '1'),
(48, 3, 'Olimpijka miała być:', 'Autostradą', 'Największą halą sportową w PRL', 'Rozgłośnią radiową dla młodzieży szkolnej', 'A', '1'),
(49, 3, 'Czym NIE był Belweder?', 'Papierosami', 'Telewizorem', 'Lodami', 'C', '1'),
(50, 4, 'Mam nadzieję, że pod koniec quizu nie będziecie myśleć \"mam dosyć tych...\"', 'mąk', 'męk', 'mękk', 'A', '1'),
(51, 4, 'Podczas porządków znalazłam (...) papier', 'porzaszały', 'poszarzały', 'poszażały', 'B', '1'),
(52, 4, 'Na samej górze, w (...), zapisany był tytuł', 'cudzysłowiu', 'cudzesłowie', 'cudzysłowie', 'C', '1'),
(53, 4, '(...) Bernadeta na tropie', 'Cesarzuwna', 'Cesażówna', 'Cesarzówna', 'C', '1'),
(54, 4, 'Tekst był (...), ale niezwykle interesujący', 'króciusieńki', 'kruciusieński', 'kruciósieńki', 'A', '1'),
(55, 4, 'W Paryżu możesz spotkać:', 'paryżankę', 'paryżaninkę', 'mieszkankę Paryża (poprawna tylko forma opisowa)', 'A', '1'),
(56, 4, 'W Bogocie mieszka:', 'bogotczyk', 'bogocianin ', 'mieszkaniec Bogoty (poprawna tylko forma opisowa)', 'B', '1'),
(57, 4, 'Jak nazywa się mieszkaniec Rygi?', 'ryżanin', 'ryganin', 'mieszkaniec Rygi (poprawna tylko forma opisowa)', 'A', '1'),
(58, 4, 'Mieszkaniec Oslo to inaczej:', 'oślanin', 'oslak', 'mieszkaniec Oslo (poprawna tylko forma opisowa)', 'C', '1'),
(59, 4, 'W Kopenhadze poznasz:', 'kopenhażka', 'kopenhażanina', 'mieszkańca Kopenhagi (poprawna tylko forma opisowa)', 'B', '1'),
(60, 4, 'Mieszkaniec Bukaresztu to inaczej:', 'bukareszteńczyk', 'bukareszczanin', 'mieszkaniec Bukaresztu (poprawna tylko forma opisowa)', 'A', '1'),
(61, 4, 'W Walencji spotkasz:', 'walencjanina', 'walencyjczyka', 'mieszkańca Walencji (poprawna tylko forma opisowa)', 'A', '1'),
(62, 4, 'Mieszkanka Moskwy to oczywiście:', 'moskwijka', 'moskwianka', 'mieszkanka Moskwy (poprawna tylko forma opisowa)', 'B', '1'),
(63, 4, 'Mieszkanka Monako to:', 'monakianka', 'monakijka', 'mieszkanka Monako (poprawna tylko forma opisowa)', 'C', '1'),
(64, 4, 'W Damaszku możesz poznać:', 'damasceńczyka', 'damaszczyka', 'mieszkańca Damaszku (poprawna tylko opisowa forma)', 'A', '1'),
(65, 4, 'Mieszkaniec Brna to oczywiście:', 'berneńczyk', 'brneńczyk', 'mieszkaniec Brna (poprawna tylko forma opisowa)', 'B', '1'),
(66, 4, 'Jak nazwiesz mieszkankę Pilzna?', 'pilznianka', 'pilźnianka', 'mieszkanka Pilzna (poprawna tylko forma opisowa)', 'B', '1'),
(67, 4, 'Jak nazwiesz mieszkankę Frankfurtu?', 'frankfurtka', 'frankfurcianka', 'mieszkanka Frankfurtu (poprawna tylko forma opisowa)', 'A', '1'),
(68, 5, 'Wypluwka to grudka niestrawionego pokarmu - na przykład kości i piór wydalana przez:', 'sowy', 'kotowate', 'łasice', 'A', '1'),
(69, 5, 'Grupę wspólnie polujących wilków zaywamy', 'basiorem', 'waderą', 'watahą', 'C', '1'),
(70, 5, 'Kuguar to inna nazwa:', 'pumy', 'dingo', 'szakala', 'A', '1'),
(71, 5, 'Pancerniki zamieszkują:', 'obie Ameryki', 'Amerykę Południową i Australię', 'Azję i Amerykę Północną', 'A', '1'),
(72, 5, 'Ten drapieżny ssak jest w niektórych rejonach Bliskiego Wschodu hodowany w domach dla ochrony przed ', 'jenota', 'kunę ', 'ichneumona', 'C', '1'),
(73, 5, 'Hieny nie występują w środowisku naturalnym...', 'w Afryce', 'w Azji Mniejszej', 'na Bałkanach', 'C', '1'),
(74, 5, 'Ssaki drapieżne są wyposażone w łamacze, czyli mocne, silne rozwinięte...', 'kły', 'zęby trzonowe', 'pazury', 'B', '1'),
(75, 5, 'Manul stepowy to zamieszkujący Azję drapieżny:', 'ptak', 'gad', 'ssak', 'C', '1'),
(76, 5, 'Charakterystyczne \"kitki\" z pęczków dłuższej sierści ma:', 'żbik', 'ryś', 'oceolt', 'B', '1'),
(77, 5, 'Postać tygrysa szablozębnego o imieniu Diego pojawia się w cyklu filmów animowanych:', '\"Epoka Lodowcowa\"', '\"Kraina Lodu\"', '\"Madagaskar\"', 'A', '1'),
(78, 5, 'Charakterystyczny jaśniejszy \"śliniak\" pod szyją ma:', 'fretka', 'kuna', 'foka', 'B', '1'),
(80, 5, 'Kość sitowa znajduje się w:', 'czaszce', 'nadgarstku', 'stopie', 'A', '1'),
(81, 5, 'Kość księżycowata wchodzi w skład kości:', 'klatki piersiowej', 'nogi', 'nadgarstka', 'C', '1'),
(82, 5, 'Kość kulszowa jest częścią:', 'ręki', 'miednicy', 'nogi', 'B', '1'),
(83, 5, 'Łopatka jest częścią:', 'obręczy barkowej', 'ramienia', 'przedramienia', 'A', '1'),
(84, 5, 'Kość łzowa znajduje się w:', 'nigdzie, taka kość nie istnieje ', 'przedniej części czaszki', 'palcu', 'B', '1'),
(85, 5, 'Kość gnykowa znajduje się w:', 'szyi', 'przedramieniu', 'tułowiu', 'A', '1'),
(86, 5, 'Kość strzałkowa to kość:', 'kończyny dolnej', 'kończyny górnej', 'mózgoczaszki', 'A', '1'),
(87, 5, 'Kość łódkowatą znajdziemy w:', 'miednicy', 'obręczy barkowej', 'stopie', 'C', '1'),
(88, 5, 'Kość klinowa to część:', 'dłoni', 'czaszki', 'kręgosłupa', 'B', '1'),
(89, 6, '\"Sto lat samotności\" opowiada smutną historię pewnego rodu. Kto ją opisał?', 'Jose Ortega y Gasset', 'Jose Carlos Somoza ', 'Gabriel Garcia Marquez', 'C', '1'),
(90, 6, 'Poodobno każdy wykształcony człowiek musi przeczytać \"Czarodziejską górę\". Kto jest jej autorem?', 'Tomasz Mann ', 'Albert Camus', 'Rainer Maria Rilke', 'A', '1'),
(91, 6, '\"Ulisses\" cieszy się sławą najtrudniejszej do przeczytania książki. Autorem jest:', 'James Joyce', 'Robert Byron', 'Daniel Defoe', 'A', '1'),
(92, 6, 'Trudno znaleźć kogokolwiek, kto by nie wiedział, że \"Romeo i Julia\" to dzieło:', 'Williama Szekspira', 'Williama Faulknera', 'Samuela Becketta', 'A', '1'),
(93, 6, '\"Lolita\" to powieść, o której wszyscy chyba słyszeli. Kto ją stworzył?', 'Virginia Woolf', 'Marcel Proust', 'Vladimir Nabokov', 'C', '1'),
(94, 6, '\"Mistrz i Małgorzata\" od lat zachwyca swoją pokrętną fabułą. Wyszła spod pióra:', 'Fiodora Dostojewskiego', 'Michaiła Bułhakowa', 'Mikołaja Gogola', 'B', '1'),
(95, 6, '\"Blaszany bębenek\" to książka o której głośno było na całym świecie. To dzięło:', 'Oskara Marii Graf', 'Guntera Grassa', 'Johanna Wolfganga von Goethego', 'B', '1'),
(96, 6, '\"Anna Karenina\" to prawdziwe arcydzieło. Tragiczną historię młodej kobiety stworzył:', 'Lew Tołstoj', 'Fiodor Dostojewski', 'Aleksander Puszkin', 'A', '1'),
(97, 6, '\"Rok 1984\" to jedna z najpopularniejszych powieści antyutopijnych. Zawdzięczamy ją kreatywności:', 'Samuela Becketta', 'Laurence\'a Sterne\'a', 'Georga Orwella', 'C', '1'),
(98, 6, '\"Duma i uprzedzenie\" to klasyka angielskiej powieści. Rozsławiła nazwisko:', 'Emily Bronte', 'Jane Austen', 'Mary Shelley', 'B', '1'),
(100, 6, 'Kto napisał \"Moby Dicka\"?', 'Herman Melville', 'Charles Dickens', 'John Keats', 'A', '1'),
(101, 6, '\"Proces\" to niezwykła powieść. Jej przenikliwym autorem jest nikt inny jak:', 'Lew Tołstoj', 'Erich Maria Remarque', 'Franz Kafka', 'C', '1'),
(102, 6, 'Trudno nie znać książki \"Dżuma\", a razem z nią nazwiska:', 'Albert Camus', 'Marcel Proust', 'Antoine de Saint-Exupery', 'A', '1'),
(103, 6, 'Kiedy mówimy o powieści \"Zbrodnia i kara\", mówimy też o:', 'Antonim Czechowie', 'Fiodorze Dostojewskim', 'Stefanie Żeromskim', 'B', '1'),
(104, 6, 'Pierwszy list z Hogwaru otrzymuje się w dniu (...) urodzin', 'siódmych', 'dziewiątych', 'jedenastych ', 'C', '1'),
(105, 6, 'Z którego peronu odjeżdża pociąg do Hogwartu?', '9 i 1/4', '9 i 2/4', '9 i 3/4', 'C', '1'),
(106, 6, 'Pierwszy tom Harrego Pottera zadebiutował w Polsce w:', '1997 roku', '2000 roku', '2004 roku', 'B', '1'),
(107, 6, 'Gdzie w Harrym Potterze pojawił się kamień filozoficzny?', 'w Tiarze Przydziału', 'w kieszeni spodni Harry\'ego ', 'w turbanie profesora Quirrella', 'B', '1'),
(108, 6, 'Eliksir Felix Felicis jest nazywany:', 'szczęśliwą miłością', 'płynnym szczęściem', 'niecodzienną przemianą', 'B', '1'),
(109, 6, 'W Harrym Potterze światło z końca różdżki wydobywa się dzięki zaklęciu:', 'portus', 'wingardium leviosa', 'lumos', 'C', '1'),
(110, 6, 'Ilu graczy jest w drużynie quidditcha?', 'czterech', 'siedmiu', 'dziewięciu', 'B', '1'),
(111, 6, 'Charłak to:', 'wilkołak przed pierwszą przemianą', 'czarodziej, któremu odebrano magiczne zdolności', 'osoba bez magicznych zdolności, która pochodzi z rodziny czarodziejów', 'C', '1'),
(112, 6, 'Eliksir, który ożywiał spetryfikowanych przygotowano:', 'ze skrzelozieli', 'z mandragor', 'z tykobulw', 'B', '1'),
(113, 6, 'Symbolem Hufflepuffu jest:', 'sowa', 'borsuk', 'jeleń', 'B', '1'),
(114, 6, 'Zgredek został wolny, ponieważ dostał:', 'skarpetkę', 'rękawiczkę', 'krawat', 'A', '1'),
(115, 6, 'Cedrik Diggory przynależał do:', 'Gryfonów', 'Puchonów', 'Krukonów', 'B', '1'),
(116, 6, 'Kto zabił Nagini w Harrym Potterze?', 'Hermiona', 'Neville', 'Ginny', 'B', '1'),
(117, 6, 'Jak ma na imię Hagrid?', 'Remus', 'Rebeus', 'Gellert', 'B', '1'),
(118, 6, 'Prawie Bezgłowy Nick jest duchem:', 'Ravenclawu', 'Gryffindoru', 'Hufflepuffu', 'B', '1'),
(119, 6, 'Kto - na polecenie Voldemorta - miał zabić Dumbledore\'a?', 'Bellatriks Lestrange', 'Nimfadora Tonks', 'Draco Malfoy', 'C', '1'),
(120, 6, 'Szczurowi Rona brakowało:', 'końcówki ogona', 'wąsa', 'palca', 'C', '1'),
(124, 7, '\"- Kocham cię. - Wiem o tym\".', 'Duma i uprzedzenia', 'Imperium kontratakuje', 'Cztery wesela i pogrzeb', 'B', '1'),
(126, 7, '\"Może jestem głupi, ale wiem co to miłość\".', 'Forrest Gump', 'Amelia', 'Pamiętnik', 'A', '1'),
(128, 7, '\"Wolę jedno życie z Tobą niż samotność przez wszystkie ery tego świata\".', 'Drużyna Pierścienia', 'Uwierz w ducha', 'Zakochany bez pamięci', 'A', '1'),
(130, 7, '\"Jestem po prostu dziewczyną, która stoi przed chłopakiem i prosi, aby ją pokochał\".', 'Notting Hill', 'To właśnie miłość', 'Pretty Woman', 'A', '1'),
(131, 7, '\"Jestem po prostu dziewczyną, która stoi przed chłopakiem i prosi, aby ją pokochał\".', 'Przeminęło z wiatrem', 'Dirty Dancing', 'Rzymskie wakacje', 'B', '1'),
(133, 7, '\"Serce kobiety to ocean pełen tajemnic. A teraz wiecie, że istniał kiedyś Jack Dawson, który mnie ocalił. W każdym możliwym znaczeniu tego słowa. Nie mam nawet jego zdjęcia. Teraz istnieje tylko w mojej pamięci\".', 'Titanic', 'Pamiętnik', 'Bezsenność w Seattle', 'A', '1'),
(134, 7, 'Osioł, ciasteczko, zielony - to zestawienie haseł kojarzy się z filmem:', 'Madagaskar', 'Sherek', 'Jak wytresować smoka', 'B', '1'),
(135, 7, 'Ruda, łuk, zamek - tym razem chodzi nam o film:', 'Zwierzogród', 'Merida Waleczna', 'Coco', 'B', '1'),
(136, 7, 'Ojciec, śmierć, skała - chodzi o film pod tytułem...', 'Aladyn', 'Król Lew', 'Persepolis', 'B', '1'),
(137, 7, 'Ocean, akwarium, zaniki pamięci - te słowa kojarzą się z filmem:', 'Iniemamocni', 'Rybki z ferajny', 'Gdzie jest Nemo?', 'C', '1'),
(138, 7, 'Robot, samotność, roślina - film, o który pytamy, to:', 'WALL-E', 'W głowie się nie mieści', 'Toy Story', 'A', '1'),
(139, 7, 'Duch, lampa, księżniczka - na pewno wiesz, że pytamy o film:', 'Pocahontas', 'Herkules', 'Aladyn', 'C', '1'),
(140, 7, 'Guzik, kot, przeprowadzka - te trzy słowa kojarzą się z filmem:', 'Koralina i tajemnicze drzwi', 'Minionki', 'Podniebna poczta Kiki', 'A', '1'),
(141, 7, 'Duchy, czarownica, miasteczko - film, o który pytamy, to:', 'Trolle', 'Paranorman', 'Fantastyczny Pan Lis', 'B', '1'),
(142, 7, 'Siostry, magia, kłótnia - te słowa kojarzą się z filmem:', 'Księżniczka Mononoke', 'Epoka lodowcowa', 'Kraina Lodu', 'C', '1'),
(143, 7, 'Wróżki, sen, wrzeciono - na pewno kojarzysz te słowa z filmem:', 'Piękna i bestia', 'Śpiąca królewna', 'Kopciuszek', 'B', '1'),
(144, 7, 'Urodziny, zamek, wampiry - film, o który pytamy, to:', 'Misteczko Halloween', 'Hotel Transylwania', 'Frankenweenie', 'B', '1'),
(145, 7, 'Paryż, szczur, restauracja - na pewno wiesz, że chodzi nam o film:', 'Ratatuj', 'Wpuszczony w kanał', 'Gang wiewióra', 'A', '1'),
(146, 7, 'Jazz, karnawał, krokodyl - te słowa przywodzą na myśl film:', 'Trio z Belleville', 'Gnijąca Panna Młoda', 'Księżniczka i żaba', 'C', '1'),
(147, 7, 'Kot-autobus, przeprowadzka, magia - film, o który pytamy, to:', 'Sekretne życie zwierzaków domowych', 'Mój sąsiad Totoro', 'Jak ukraść księżyc', 'B', '1'),
(148, 7, 'Małpka, origami, opowieść - te słowa kojarzą się z filmem:', 'Szkarłatny pilot', 'Kubo i dwie struny', 'Mulan', 'B', '1'),
(149, 8, 'Kompas, jeż, gramofon - te słowa łączy...', 'technika', 'igła', 'podróż', 'B', '1'),
(150, 8, 'Cynober ma się tak do czerwieni jak ugier do:', 'zieleni', 'bieli', 'brązu', 'C', '1'),
(151, 8, 'Z liter E, P, K, N, O, R, S, T, Y, Z, Ż (litery mogą się powtarzać) da się ułożyć słowa:', 'przeżytek, Paryż, rzęsy', 'krosty, styk, rżenie', 'pszenżyto, tron, korzenny', 'C', '1'),
(152, 8, 'Policjant, bęben, kij - wyraz łączący te słowa to:', 'defilada', 'pałka', 'marsz', 'B', '1'),
(153, 8, 'Metal ma się tak do X, jak piasek do Y. W miejsce X i Y pasują słowa:', 'atom, oaza', 'rdza, Afryka', 'śruba, pustynia', 'C', '1'),
(154, 8, 'Według popularnego powiedzenia mysz kościelna jest:', 'cicha', 'biedna', 'głodna', 'B', '1'),
(155, 8, 'Kręgle, bierki, petanka, bilard - słowo, które tu najmniej pasuje, to:', 'petanka', 'bierki', 'kręgle', 'B', '1'),
(156, 8, 'Anagramem wyrazu \'\'monter\'\' jest', 'remont', 'mechanik', 'naprawa', 'A', '1'),
(157, 8, 'Herkules, Zeus, Jowisz, Posejdon - do tego zestawu imion postaci z mitologii nie pasuje:', 'Jowisz', 'Posejdon', 'Zeus', 'A', '1'),
(158, 8, 'Zarost, sum, pęd - pojęciem, które łączy te trzy hasła, jest:', 'wędka', 'wąs', 'wuj', 'B', '1'),
(159, 8, 'Według znanego powiedzenia z konopi niespodziewanie wyskakuje:', 'lolek', 'janek', 'filip', 'C', '1'),
(160, 8, '...a ktoś niespokojny tłucze się jak... po piekle', 'jarek', 'marek', 'darek', 'B', '1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranking`
--

CREATE TABLE `ranking` (
  `id_user` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `max_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ranking`
--

INSERT INTO `ranking` (`id_user`, `points`, `max_points`) VALUES
(2, 100, 100),
(3, 100, 100),
(4, 100, 100),
(1, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `role` enum('0','1') COLLATE utf8_polish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(2, 'madzix', 'ff953e606008f183014125564359bae6', '0'),
(3, 'monia', '32b58001c82ef3e6444562f36899ed25', '0'),
(4, 'ala', 'e88e6128e26eeff4daf1f5db07372784', '0');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `qanda`
--
ALTER TABLE `qanda`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `qanda`
--
ALTER TABLE `qanda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
