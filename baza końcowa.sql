-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Cze 2020, 20:18
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
  `correct_answer` text COLLATE utf8_polish_ci NOT NULL,
  `assent` enum('0','1') COLLATE utf8_polish_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `qanda`
--

INSERT INTO `qanda` (`id`, `id_category`, `question`, `answer_a`, `answer_b`, `answer_c`, `correct_answer`, `assent`) VALUES
(0, 2, '23-F, czyli nieudany zamach stanu z 23 II 1981 r., miał miejsce w:', 'Grecji', 'Hiszpanii', 'Bułgarii', 'Hiszpanii', '1'),
(1, 1, 'Rogal Świętomarciński to przysmak regionalny:', 'Poznania', 'Lublina', 'Krakowa', 'Poznania', '1'),
(2, 1, 'Pierwsze polskie miasto, którego zabytkowa część została wpisana na listę UNESCO to:', 'Kraków', 'Warszawa', 'Gdańsk', 'Kraków', '1'),
(3, 1, 'Najdłuższy rynek Europy znajduję się w:', 'Gdańsku', 'Pułtusku', 'Toruniu', 'Pułtusku', '1'),
(4, 1, 'Które z podanych miast otrzymało prawa miejskie najwcześniej?', 'Kraków', 'Złotoryja', 'Toruń', 'Złotoryja', '1'),
(5, 1, 'Największe święto wina w Polsce odbywa się w:', 'Zielonej Górze', 'Lublinie', 'Krakowie', 'Zielonej Górze', '1'),
(6, 1, 'Które z polskich miast położone jest na siedmiu wzgórzach?', 'Kazimierz Dolny', 'Sandomierz', 'Płock', 'Sandomierz', '1'),
(7, 1, 'Mazowieckie to największe województwo w Polsce. Które jest drugie co do wielkości?', 'Zachodniopomorskie', 'Wielkopolskie', 'Lubelskie', 'Wielkopolskie', '1'),
(8, 1, 'Które z miast Trójmiasta jest najmłodsze?', 'Gdańsk', 'Gdynia', 'Sopot', 'Gdynia', '1'),
(9, 1, 'Długi Targ to reprezentacyjny plac:', 'Gdańska', 'Olsztyna', 'Sandomierza', 'Gdańska', '1'),
(10, 1, 'Który pomnik można zobaczyć w Rynku Starego Miasta w Warszawie?', 'Adama Mickiewicza', 'Syrenki Warszawskiej', 'Zygmunta III Wazy', 'Syrenki Warszawskiej', '1'),
(11, 1, 'Miasto założone przez Zakon Krzyżacki w XIII wieku to:', 'Gdańsk', 'Bydgoszcz', 'Toruń', 'Toruń', '1'),
(12, 1, 'Które z poniższych miast jest czwarte w Europie pod względem liczby mostów?', 'Bydgoszcz', 'Wrocław', 'Warszawa', 'Wrocław', '1'),
(13, 1, 'Polski biegun zimna to miasto:', 'Suwałki', 'Siedlce', 'Łódź', 'Suwałki', '1'),
(14, 1, 'Kopiec Kościuszki to atrakcja:', 'Krakowa', 'Wrocławia', 'Poznania', 'Krakowa', '1'),
(15, 1, 'Które miasto w Polsce położone jest na 44 wyspach?', 'Łeba', 'Słupsk', 'Świnoujście', 'Świnoujście', '1'),
(16, 2, 'Który napoleoński marszałek był \'najdzielniejszym z dzielnych\'?', 'Michel Ney', 'Józef Poniatowski', 'Jean Baptiste Bernadotte', 'Michel Ney', '1'),
(17, 2, 'Etiopia w 1896 r. obroniła swoją niepodległość pokonując wojska:', 'Hiszpanii', 'Włoch', 'Francji', 'Włoch', '1'),
(18, 2, 'Które z tych bałkańskich państw stanęło po stronie Niemiec w I wojnie światowej?', 'Rumunia', 'Grecja', 'Bułgaria', 'Bułgaria', '1'),
(19, 2, 'Jak nazywano chińskich powstańców, walczących z kolonistami pod koniec XIX wieku?', 'Karatekami', 'Zapaśnikami', 'Bokserami', 'Bokserami', '1'),
(20, 2, 'Na początku IX w. judaizm stał się państwową religią w:', 'Chanacie Awarskim', 'Bizancjum', 'Kaganacie Chazarskim', 'Kaganacie Chazarskim', '1'),
(21, 2, 'Teodoro Picado Michalski - syn Polki - w 1944 r. został prezydentem:', 'Brazylii', 'Hiszpanii', 'Kostaryki', 'Kostaryki', '1'),
(22, 2, 'Kto był członkiem pierwszego triumwiratu obok Juliusza Cezara i Pompejusza?', 'Marek Antoniusz', 'Oktawian August', 'Marek Krassus', 'Marek Krassus', '1'),
(23, 2, 'Benedykt Polak odbył w XIII wieku wielką podróż do:', 'Pańtw-miat Mozambiku', 'Wysp Indonezji', 'Imperium Mongołów', 'Imperium Mongołów', '1'),
(24, 2, 'Gdańsk stał się głównym portem ziem obecnej Polski po upadku:', 'Urborga', 'Biskupina', 'Truso', 'Truso', '1'),
(25, 2, 'Jaki tytuł nosił władca Niderlandów od 1572 r. do 1795 r.?', 'Namiestnika', 'Marszałka', 'Strażnika', 'Namiestnika', '1'),
(26, 2, 'Terenu którego z tych obecnych państw nie zajął Rzym w starożytnośći?', 'Słowacji', 'Ukrainy', 'Irlandii', 'Irlandii', '1'),
(28, 2, 'Gdzie panowali Medyceusze?', 'W Neapolu', 'W Wenecji', 'We Florencji', 'We Florencji', '1'),
(29, 2, 'Raguza to stara nazwa:', 'Nicei', 'Monako', 'Dubrownika', 'Dubrownika', '1'),
(30, 3, 'Z pewnością słyszałeś o grze w kapsle. Na czym polegała?', 'Na pstrykaniu palcami w kapsle tak, by przesuwały się w stronę mety.', 'Na podrzucaniu do góry i łapaniu w dłoń coraz większej liczby kapsli. ', 'Na rzucaniu kapslami do celu, czyli kółka narysowanego patykiem na piachu.', 'Na pstrykaniu palcami w kapsle tak, by przesuwały się w stronę mety.', '1'),
(32, 3, 'Można to toczyć za pomocąpatyka lub kręcić wokół pasa. O czym mowa?', 'Cymbergaj', 'Skakanka', 'Hula-hop', 'Hula-hop', '1'),
(35, 3, 'O co chodzi w zabawie z tą wyliczanką \"Raz, dwa, trzy, Baba Jaga patrzy\"?', 'Gracz, gdy usłyszy tę formułę, musi włożyć chusteczkę w ręce jednego z uczestników ', 'Celem gry jest \"zbicie\", czyli rzucenie piłką tak, żeby się odbiła, a nie została złapana', 'Gracze, gdy usłyszą tę formułę, muszą znieruchomieć. ', 'Gracze, gdy usłyszą tę formułę, muszą znieruchomieć. ', '1'),
(36, 3, 'Jakiego słowa używa się podczas skakania w gumę, gdy osoba skacząca popełni błąd?', 'Gapa!', 'Skucha!', 'Łamaga!', 'Skucha!', '1'),
(38, 3, 'W której zabawie jedna z osób jest \"bezdomnym\"?', 'Berek łańcuszkowy', 'Zośka', 'Komórki do wynajęcia', 'Komórki do wynajęcia', '1'),
(39, 3, 'Jakiej Wołgi należało się obawiać?', 'Czerwonej', 'Czarnej', 'Białej', 'Czarnej', '1'),
(40, 3, 'Repasację wykonywało się za pomocą:', 'Agrafki', 'Zapałki', 'Igły', 'Igły', '1'),
(41, 3, 'Musztardówka była zrobiona:', 'Ze szkła', 'Z wełny', 'Z szarego papieru', 'Ze szkła', '1'),
(42, 3, 'Parmalatkę można było:', 'Nosić - to rodzaj kurtki', 'Włączyć - to rodzaj radia', 'Nalać - to rodzaj kolorowej oranżady', 'Nosić - to rodzaj kurtki', '1'),
(43, 3, 'W konsumach zakupy mogły zrobić:', 'Tylko kobiety w ciąży', 'Tylko członkowie partii', 'Osoby z konkretnego zakładu pracy', 'Osoby z konkretnego zakładu pracy', '1'),
(44, 3, '\"Grzybek\" to była potoczna nazwa:', 'Budki telefonicznej', 'Wejścia do schronu', 'Posterunku milicji', 'Wejścia do schronu', '1'),
(45, 3, 'Przemysławka sprzedawana była:', 'W szklanych buteleczkach z drewnianym korkiem', 'W szklanych buteleczkach z plastikowym korkiem', 'W plastikowych buteleczkach z plastikowym korkiem', 'W szklanych buteleczkach z plastikowym korkiem', '1'),
(46, 3, 'Polkrem trzymaliśmy:', 'W łazience', 'W kuchni', 'W barku', 'W kuchni', '1'),
(47, 3, 'Praktyka robotnicza trwała:', 'Miesiąc', 'Tydzień', 'Dwa miesiące wakacji', 'Miesiąc', '1'),
(48, 3, 'Olimpijka miała być:', 'Autostradą', 'Największą halą sportową w PRL', 'Rozgłośnią radiową dla młodzieży szkolnej', 'Autostradą', '1'),
(49, 3, 'Czym NIE był Belweder?', 'Papierosami', 'Telewizorem', 'Lodami', 'Lodami', '1'),
(50, 4, 'Mam nadzieję, że pod koniec quizu nie będziecie myśleć \"mam dosyć tych...\"', 'mąk', 'męk', 'mękk', 'mąk', '1'),
(51, 4, 'Podczas porządków znalazłam (...) papier', 'porzaszały', 'poszarzały', 'poszażały', 'poszarzały', '1'),
(52, 4, 'Na samej górze, w (...), zapisany był tytuł', 'cudzysłowiu', 'cudzesłowie', 'cudzysłowie', 'cudzysłowie', '1'),
(53, 4, '(...) Bernadeta na tropie', 'Cesarzuwna', 'Cesażówna', 'Cesarzówna', 'Cesarzówna', '1'),
(54, 4, 'Tekst był (...), ale niezwykle interesujący', 'króciusieńki', 'kruciusieński', 'kruciósieńki', 'króciusieńki', '1'),
(55, 4, 'W Paryżu możesz spotkać:', 'paryżankę', 'paryżaninkę', 'mieszkankę Paryża (poprawna tylko forma opisowa)', 'paryżankę', '1'),
(56, 4, 'W Bogocie mieszka:', 'bogotczyk', 'bogocianin ', 'mieszkaniec Bogoty (poprawna tylko forma opisowa)', 'bogocianin ', '1'),
(57, 4, 'Jak nazywa się mieszkaniec Rygi?', 'ryżanin', 'ryganin', 'mieszkaniec Rygi (poprawna tylko forma opisowa)', 'ryżanin', '1'),
(58, 4, 'Mieszkaniec Oslo to inaczej:', 'oślanin', 'oslak', 'mieszkaniec Oslo (poprawna tylko forma opisowa)', 'mieszkaniec Oslo (poprawna tylko forma opisowa)', '1'),
(59, 4, 'W Kopenhadze poznasz:', 'kopenhażka', 'kopenhażanina', 'mieszkańca Kopenhagi (poprawna tylko forma opisowa)', 'kopenhażanina', '1'),
(60, 4, 'Mieszkaniec Bukaresztu to inaczej:', 'bukareszteńczyk', 'bukareszczanin', 'mieszkaniec Bukaresztu (poprawna tylko forma opisowa)', 'bukareszteńczyk', '1'),
(61, 4, 'W Walencji spotkasz:', 'walencjanina', 'walencyjczyka', 'mieszkańca Walencji (poprawna tylko forma opisowa)', 'walencjanina', '1'),
(62, 4, 'Mieszkanka Moskwy to oczywiście:', 'moskwijka', 'moskwianka', 'mieszkanka Moskwy (poprawna tylko forma opisowa)', 'moskwianka', '1'),
(63, 4, 'Mieszkanka Monako to:', 'monakianka', 'monakijka', 'mieszkanka Monako (poprawna tylko forma opisowa)', 'mieszkanka Monako (poprawna tylko forma opisowa)', '1'),
(64, 4, 'W Damaszku możesz poznać:', 'damasceńczyka', 'damaszczyka', 'mieszkańca Damaszku (poprawna tylko opisowa forma)', 'damasceńczyka', '1'),
(65, 4, 'Mieszkaniec Brna to oczywiście:', 'berneńczyk', 'brneńczyk', 'mieszkaniec Brna (poprawna tylko forma opisowa)', 'brneńczyk', '1'),
(66, 4, 'Jak nazwiesz mieszkankę Pilzna?', 'pilznianka', 'pilźnianka', 'mieszkanka Pilzna (poprawna tylko forma opisowa)', 'pilźnianka', '1'),
(67, 4, 'Jak nazwiesz mieszkankę Frankfurtu?', 'frankfurtka', 'frankfurcianka', 'mieszkanka Frankfurtu (poprawna tylko forma opisowa)', 'frankfurtka', '1'),
(68, 5, 'Wypluwka to grudka niestrawionego pokarmu - na przykład kości i piór wydalana przez:', 'sowy', 'kotowate', 'łasice', 'sowy', '1'),
(69, 5, 'Grupę wspólnie polujących wilków zaywamy', 'basiorem', 'waderą', 'watahą', 'watahą', '1'),
(70, 5, 'Kuguar to inna nazwa:', 'pumy', 'dingo', 'szakala', 'pumy', '1'),
(71, 5, 'Pancerniki zamieszkują:', 'obie Ameryki', 'Amerykę Południową i Australię', 'Azję i Amerykę Północną', 'obie Ameryki', '1'),
(72, 5, 'Ten drapieżny ssak jest w niektórych rejonach Bliskiego Wschodu hodowany w domach dla ochrony przed ', 'jenota', 'kunę ', 'ichneumona', 'ichneumona', '1'),
(73, 5, 'Hieny nie występują w środowisku naturalnym...', 'w Afryce', 'w Azji Mniejszej', 'na Bałkanach', 'na Bałkanach', '1'),
(74, 5, 'Ssaki drapieżne są wyposażone w łamacze, czyli mocne, silne rozwinięte...', 'kły', 'zęby trzonowe', 'pazury', 'zęby trzonowe', '1'),
(75, 5, 'Manul stepowy to zamieszkujący Azję drapieżny:', 'ptak', 'gad', 'ssak', 'ssak', '1'),
(76, 5, 'Charakterystyczne \"kitki\" z pęczków dłuższej sierści ma:', 'żbik', 'ryś', 'oceolt', 'ryś', '1'),
(77, 5, 'Postać tygrysa szablozębnego o imieniu Diego pojawia się w cyklu filmów animowanych:', '\"Epoka Lodowcowa\"', '\"Kraina Lodu\"', '\"Madagaskar\"', '\"Epoka Lodowcowa\"', '1'),
(78, 5, 'Charakterystyczny jaśniejszy \"śliniak\" pod szyją ma:', 'fretka', 'kuna', 'foka', 'kuna', '1'),
(80, 5, 'Kość sitowa znajduje się w:', 'czaszce', 'nadgarstku', 'stopie', 'czaszce', '1'),
(81, 5, 'Kość księżycowata wchodzi w skład kości:', 'klatki piersiowej', 'nogi', 'nadgarstka', 'nadgarstka', '1'),
(82, 5, 'Kość kulszowa jest częścią:', 'ręki', 'miednicy', 'nogi', 'miednicy', '1'),
(83, 5, 'Łopatka jest częścią:', 'obręczy barkowej', 'ramienia', 'przedramienia', 'obręczy barkowej', '1'),
(84, 5, 'Kość łzowa znajduje się w:', 'nigdzie, taka kość nie istnieje ', 'przedniej części czaszki', 'palcu', 'przedniej części czaszki', '1'),
(85, 5, 'Kość gnykowa znajduje się w:', 'szyi', 'przedramieniu', 'tułowiu', 'szyi', '1'),
(86, 5, 'Kość strzałkowa to kość:', 'kończyny dolnej', 'kończyny górnej', 'mózgoczaszki', 'kończyny dolnej', '1'),
(87, 5, 'Kość łódkowatą znajdziemy w:', 'miednicy', 'obręczy barkowej', 'stopie', 'stopie', '1'),
(88, 5, 'Kość klinowa to część:', 'dłoni', 'czaszki', 'kręgosłupa', 'czaszki', '1'),
(89, 6, '\"Sto lat samotności\" opowiada smutną historię pewnego rodu. Kto ją opisał?', 'Jose Ortega y Gasset', 'Jose Carlos Somoza ', 'Gabriel Garcia Marquez', 'Gabriel Garcia Marquez', '1'),
(90, 6, 'Poodobno każdy wykształcony człowiek musi przeczytać \"Czarodziejską górę\". Kto jest jej autorem?', 'Tomasz Mann ', 'Albert Camus', 'Rainer Maria Rilke', 'Tomasz Mann ', '1'),
(91, 6, '\"Ulisses\" cieszy się sławą najtrudniejszej do przeczytania książki. Autorem jest:', 'James Joyce', 'Robert Byron', 'Daniel Defoe', 'James Joyce', '1'),
(92, 6, 'Trudno znaleźć kogokolwiek, kto by nie wiedział, że \"Romeo i Julia\" to dzieło:', 'Williama Szekspira', 'Williama Faulknera', 'Samuela Becketta', 'Williama Szekspira', '1'),
(93, 6, '\"Lolita\" to powieść, o której wszyscy chyba słyszeli. Kto ją stworzył?', 'Virginia Woolf', 'Marcel Proust', 'Vladimir Nabokov', 'Vladimir Nabokov', '1'),
(94, 6, '\"Mistrz i Małgorzata\" od lat zachwyca swoją pokrętną fabułą. Wyszła spod pióra:', 'Fiodora Dostojewskiego', 'Michaiła Bułhakowa', 'Mikołaja Gogola', 'Michaiła Bułhakowa', '1'),
(95, 6, '\"Blaszany bębenek\" to książka o której głośno było na całym świecie. To dzięło:', 'Oskara Marii Graf', 'Guntera Grassa', 'Johanna Wolfganga von Goethego', 'Guntera Grassa', '1'),
(96, 6, '\"Anna Karenina\" to prawdziwe arcydzieło. Tragiczną historię młodej kobiety stworzył:', 'Lew Tołstoj', 'Fiodor Dostojewski', 'Aleksander Puszkin', 'Lew Tołstoj', '1'),
(97, 6, '\"Rok 1984\" to jedna z najpopularniejszych powieści antyutopijnych. Zawdzięczamy ją kreatywności:', 'Samuela Becketta', 'Laurence\'a Sterne\'a', 'Georga Orwella', 'Georga Orwella', '1'),
(98, 6, '\"Duma i uprzedzenie\" to klasyka angielskiej powieści. Rozsławiła nazwisko:', 'Emily Bronte', 'Jane Austen', 'Mary Shelley', 'Jane Austen', '1'),
(100, 6, 'Kto napisał \"Moby Dicka\"?', 'Herman Melville', 'Charles Dickens', 'John Keats', 'Herman Melville', '1'),
(101, 6, '\"Proces\" to niezwykła powieść. Jej przenikliwym autorem jest nikt inny jak:', 'Lew Tołstoj', 'Erich Maria Remarque', 'Franz Kafka', 'Franz Kafka', '1'),
(102, 6, 'Trudno nie znać książki \"Dżuma\", a razem z nią nazwiska:', 'Albert Camus', 'Marcel Proust', 'Antoine de Saint-Exupery', 'Albert Camus', '1'),
(103, 6, 'Kiedy mówimy o powieści \"Zbrodnia i kara\", mówimy też o:', 'Antonim Czechowie', 'Fiodorze Dostojewskim', 'Stefanie Żeromskim', 'Fiodorze Dostojewskim', '1'),
(104, 6, 'Pierwszy list z Hogwaru otrzymuje się w dniu (...) urodzin', 'siódmych', 'dziewiątych', 'jedenastych ', 'jedenastych ', '1'),
(105, 6, 'Z którego peronu odjeżdża pociąg do Hogwartu?', '9 i 1/4', '9 i 2/4', '9 i 3/4', '9 i 3/4', '1'),
(106, 6, 'Pierwszy tom Harrego Pottera zadebiutował w Polsce w:', '1997 roku', '2000 roku', '2004 roku', '2000 roku', '1'),
(107, 6, 'Gdzie w Harrym Potterze pojawił się kamień filozoficzny?', 'w Tiarze Przydziału', 'w kieszeni spodni Harry\'ego ', 'w turbanie profesora Quirrella', 'w kieszeni spodni Harry\'ego ', '1'),
(108, 6, 'Eliksir Felix Felicis jest nazywany:', 'szczęśliwą miłością', 'płynnym szczęściem', 'niecodzienną przemianą', 'płynnym szczęściem', '1'),
(109, 6, 'W Harrym Potterze światło z końca różdżki wydobywa się dzięki zaklęciu:', 'portus', 'wingardium leviosa', 'lumos', 'lumos', '1'),
(110, 6, 'Ilu graczy jest w drużynie quidditcha?', 'czterech', 'siedmiu', 'dziewięciu', 'siedmiu', '1'),
(111, 6, 'Charłak to:', 'wilkołak przed pierwszą przemianą', 'czarodziej, któremu odebrano magiczne zdolności', 'osoba bez magicznych zdolności, która pochodzi z rodziny czarodziejów', 'osoba bez magicznych zdolności, która pochodzi z rodziny czarodziejów', '1'),
(112, 6, 'Eliksir, który ożywiał spetryfikowanych przygotowano:', 'ze skrzelozieli', 'z mandragor', 'z tykobulw', 'z mandragor', '1'),
(113, 6, 'Symbolem Hufflepuffu jest:', 'sowa', 'borsuk', 'jeleń', 'borsuk', '1'),
(114, 6, 'Zgredek został wolny, ponieważ dostał:', 'skarpetkę', 'rękawiczkę', 'krawat', 'skarpetkę', '1'),
(115, 6, 'Cedrik Diggory przynależał do:', 'Gryfonów', 'Puchonów', 'Krukonów', 'Puchonów', '1'),
(116, 6, 'Kto zabił Nagini w Harrym Potterze?', 'Hermiona', 'Neville', 'Ginny', 'Neville', '1'),
(117, 6, 'Jak ma na imię Hagrid?', 'Remus', 'Rebeus', 'Gellert', 'Rebeus', '1'),
(118, 6, 'Prawie Bezgłowy Nick jest duchem:', 'Ravenclawu', 'Gryffindoru', 'Hufflepuffu', 'Gryffindoru', '1'),
(119, 6, 'Kto - na polecenie Voldemorta - miał zabić Dumbledore\'a?', 'Bellatriks Lestrange', 'Nimfadora Tonks', 'Draco Malfoy', 'Draco Malfoy', '1'),
(120, 6, 'Szczurowi Rona brakowało:', 'końcówki ogona', 'wąsa', 'palca', 'palca', '1'),
(124, 7, '\"- Kocham cię. - Wiem o tym\".', 'Duma i uprzedzenia', 'Imperium kontratakuje', 'Cztery wesela i pogrzeb', 'Imperium kontratakuje', '1'),
(126, 7, '\"Może jestem głupi, ale wiem co to miłość\".', 'Forrest Gump', 'Amelia', 'Pamiętnik', 'Forrest Gump', '1'),
(128, 7, '\"Wolę jedno życie z Tobą niż samotność przez wszystkie ery tego świata\".', 'Drużyna Pierścienia', 'Uwierz w ducha', 'Zakochany bez pamięci', 'Drużyna Pierścienia', '1'),
(130, 7, '\"Jestem po prostu dziewczyną, która stoi przed chłopakiem i prosi, aby ją pokochał\".', 'Notting Hill', 'To właśnie miłość', 'Pretty Woman', 'Notting Hill', '1'),
(131, 7, '\"Jestem po prostu dziewczyną, która stoi przed chłopakiem i prosi, aby ją pokochał\".', 'Przeminęło z wiatrem', 'Dirty Dancing', 'Rzymskie wakacje', 'Dirty Dancing', '1'),
(133, 7, '\"Serce kobiety to ocean pełen tajemnic. A teraz wiecie, że istniał kiedyś Jack Dawson, który mnie ocalił. W każdym możliwym znaczeniu tego słowa. Nie mam nawet jego zdjęcia. Teraz istnieje tylko w mojej pamięci\".', 'Titanic', 'Pamiętnik', 'Bezsenność w Seattle', 'Titanic', '1'),
(134, 7, 'Osioł, ciasteczko, zielony - to zestawienie haseł kojarzy się z filmem:', 'Madagaskar', 'Sherek', 'Jak wytresować smoka', 'Sherek', '1'),
(135, 7, 'Ruda, łuk, zamek - tym razem chodzi nam o film:', 'Zwierzogród', 'Merida Waleczna', 'Coco', 'Merida Waleczna', '1'),
(136, 7, 'Ojciec, śmierć, skała - chodzi o film pod tytułem...', 'Aladyn', 'Król Lew', 'Persepolis', 'Król Lew', '1'),
(137, 7, 'Ocean, akwarium, zaniki pamięci - te słowa kojarzą się z filmem:', 'Iniemamocni', 'Rybki z ferajny', 'Gdzie jest Nemo?', 'Gdzie jest Nemo?', '1'),
(138, 7, 'Robot, samotność, roślina - film, o który pytamy, to:', 'WALL-E', 'W głowie się nie mieści', 'Toy Story', 'WALL-E', '1'),
(139, 7, 'Duch, lampa, księżniczka - na pewno wiesz, że pytamy o film:', 'Pocahontas', 'Herkules', 'Aladyn', 'Aladyn', '1'),
(140, 7, 'Guzik, kot, przeprowadzka - te trzy słowa kojarzą się z filmem:', 'Koralina i tajemnicze drzwi', 'Minionki', 'Podniebna poczta Kiki', 'Koralina i tajemnicze drzwi', '1'),
(141, 7, 'Duchy, czarownica, miasteczko - film, o który pytamy, to:', 'Trolle', 'Paranorman', 'Fantastyczny Pan Lis', 'Paranorman', '1'),
(142, 7, 'Siostry, magia, kłótnia - te słowa kojarzą się z filmem:', 'Księżniczka Mononoke', 'Epoka lodowcowa', 'Kraina Lodu', 'Kraina Lodu', '1'),
(143, 7, 'Wróżki, sen, wrzeciono - na pewno kojarzysz te słowa z filmem:', 'Piękna i bestia', 'Śpiąca królewna', 'Kopciuszek', 'Śpiąca królewna', '1'),
(144, 7, 'Urodziny, zamek, wampiry - film, o który pytamy, to:', 'Misteczko Halloween', 'Hotel Transylwania', 'Frankenweenie', 'Hotel Transylwania', '1'),
(145, 7, 'Paryż, szczur, restauracja - na pewno wiesz, że chodzi nam o film:', 'Ratatuj', 'Wpuszczony w kanał', 'Gang wiewióra', 'Ratatuj', '1'),
(146, 7, 'Jazz, karnawał, krokodyl - te słowa przywodzą na myśl film:', 'Trio z Belleville', 'Gnijąca Panna Młoda', 'Księżniczka i żaba', 'Księżniczka i żaba', '1'),
(147, 7, 'Kot-autobus, przeprowadzka, magia - film, o który pytamy, to:', 'Sekretne życie zwierzaków domowych', 'Mój sąsiad Totoro', 'Jak ukraść księżyc', 'Mój sąsiad Totoro', '1'),
(148, 7, 'Małpka, origami, opowieść - te słowa kojarzą się z filmem:', 'Szkarłatny pilot', 'Kubo i dwie struny', 'Mulan', 'Kubo i dwie struny', '1'),
(149, 8, 'Kompas, jeż, gramofon - te słowa łączy...', 'technika', 'igła', 'podróż', 'igła', '1'),
(150, 8, 'Cynober ma się tak do czerwieni jak ugier do:', 'zieleni', 'bieli', 'brązu', 'brązu', '1'),
(151, 8, 'Z liter E, P, K, N, O, R, S, T, Y, Z, Ż (litery mogą się powtarzać) da się ułożyć słowa:', 'przeżytek, Paryż, rzęsy', 'krosty, styk, rżenie', 'pszenżyto, tron, korzenny', 'pszenżyto, tron, korzenny', '1'),
(152, 8, 'Policjant, bęben, kij - wyraz łączący te słowa to:', 'defilada', 'pałka', 'marsz', 'pałka', '1'),
(153, 8, 'Metal ma się tak do X, jak piasek do Y. W miejsce X i Y pasują słowa:', 'atom, oaza', 'rdza, Afryka', 'śruba, pustynia', 'śruba, pustynia', '1'),
(154, 8, 'Według popularnego powiedzenia mysz kościelna jest:', 'cicha', 'biedna', 'głodna', 'biedna', '1'),
(155, 8, 'Kręgle, bierki, petanka, bilard - słowo, które tu najmniej pasuje, to:', 'petanka', 'bierki', 'kręgle', 'bierki', '1'),
(156, 8, 'Anagramem wyrazu \'\'monter\'\' jest', 'remont', 'mechanik', 'naprawa', 'remont', '1'),
(157, 8, 'Herkules, Zeus, Jowisz, Posejdon - do tego zestawu imion postaci z mitologii nie pasuje:', 'Jowisz', 'Posejdon', 'Zeus', 'Jowisz', '1'),
(158, 8, 'Zarost, sum, pęd - pojęciem, które łączy te trzy hasła, jest:', 'wędka', 'wąs', 'wuj', 'wąs', '1'),
(159, 8, 'Według znanego powiedzenia z konopi niespodziewanie wyskakuje:', 'lolek', 'janek', 'filip', 'filip', '1'),
(160, 8, '...a ktoś niespokojny tłucze się jak... po piekle', 'jarek', 'marek', 'darek', 'marek', '1');

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
(10, 6, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_polish_ci NOT NULL,
  `role` enum('0','1') COLLATE utf8_polish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `login`, `email`, `password`, `role`) VALUES
(10, 'adam', 'aaa@aaa.com', '$2y$10$YmjFc1/YG497cOPIpUyuA.Pr3pmABTCpi.bqSp.PAtDyi//kDnsYK', '0'),
(11, 'admin', 'admin@admin.admin', '$2y$10$PMHfi0o3bN.l1TSY6CGA8OSJ8fFGmpooHoQddlxZuNMI2Uyat022G', '1'),
(12, 'madzia', 'madzia@madzia.pl', '$2y$10$4Q6CixizmT5kVy.6YHqh8.FgnxJsMd7Y5EeA8BqKo.9kbYO7NPXDS', '0'),
(13, 'monia', 'monia@monia.pl', '$2y$10$URRgxtg.kMvmYwlA.N/zxO6zyAyJdDsyK2OBUfjwKco3muRdjSON6', '0'),
(14, 'ala', 'ala@ala.pl', '$2y$10$aku6spsmFJ6kjBUOZFSweeCScsq3azhwu17VedyOzti6bN3FdH/.K', '0');

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
-- Indeksy dla tabeli `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_user`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
