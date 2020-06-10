Autorzy aplikacji: Monika Leszniewska, Magdalena Słyk
# Aplikacja do rozwiązywania quizów "Quizomania"
Celem aplikacji jest umożliwenie użytkowniką rozwiązywania quizów oraz tworzenie ich dla siebie i innych. 


## Spis treści
1. [Technologie](README.md#technologie)
2. [Sposób użycia](README.md#sposób-użycia)
   - [Diagramy przypadków użycia: użytkownik](README.md#diagramy-przypadków-użycia-użytkownik)
   - [Diagramy przypadków użycia: administrator](README.md#diagramy-przypadków-użycia-administrator)
3. [Struktura i opis katalogów aplikacji](README.md#struktura-i-opis-katalogów-aplikacji)
   - [Katalog: css](README.md#katalog-css)
   - [Katalog: dokumantacja](README.md#katalog-dokumentacja)
   - [Katalog: images](README.md#katalog-images)
   - [Katalog: js](README.md#katalog-js)
   - [Katalog: php](README.md#katalog-php)
   - [Katalog: style](README.md#katalog-style)
   - [Plik: index.php](README.md#plik-indexphp)
   - [Plik: quiz v2_3.sql](README.md#plik-quiz-v2_3sql)
   - [Plik: README.md](README.md#plik-readmemd)
4. [Struktura bazy danych](README.md#struktura-bazy-danych)
   - [Schemta bazy danych](README.md#schemat-bazy-danych)
   - [Tabela: category](README.md#tabela-category)
   - [Tabela: quanda](README.md#tabela-quanda)
   - [Tabela: ranking](README.md#tabela-ranking)
   - [Tabela: user](README.md#tabela-user)
5. [Struktura klas](README.md#struktura-klas)
   - [Klasa: DBConnection.php](README.md#dbconnectionphp)
   - [Klasa: Question.php](README.md#questionphp)
   - [Klasa: User.php](README.md#userphp)
6. [Nawigacja na stronie](README.md#nawigacja-na-stronie)
   - [Nawigacja podstawowa](README.md#nawigacja-podstawowa)
   - [Nawigacja użytkownika](README.md#nawigacja-użytkownika)
   - [Nawigacja administratora](README.md#nawigacja-administratora)
   - [Nawigacja na urządzeniach mobilnych](README.md#nawigacja-na-urządzeniach-mobilnych)
   - [Stopka](README.md#stopka)
7. [System rejestracji](README.md#system-rejestracji)   
8. [System logowania](README.md#system-logowania)
9. System dodawania nowych pytań
10. System akceptacji pytań przez administratora
11. Podstawowe zależności wyglądu aplikacji
12. System wykonywania quizów 
   
## Technologie
Do stworzenia oprogramowania wykorzstałyśmy skryptowy język PHP oraz hipertekstowy język znaczników HTML. Takie połączenie pozwala 
zaprojektować w pełni funkcjonalną stronę internetową. Składnia HTML pozwala opisać strukturę informacji zawartych wewnatrz strony nadając w
ten sposób odpowiednie znaczenie semantyczne odpowiednich kawałków kodu.
Język PHP pozwala na tworzenie skryptów po stronie serwera WWW, ale również może być używany do przetwarzania danych z poziomu wiersza poleceń.
Baza danych została utworzona w MySQL przy wykorzystaniu narzędzia phpMyAdmin,ponieważ w pełni współpracuje z językiem PHP.

Część graficzna została napisana w języku CSS,którego lista dyrektyw ustala w jaki sposób ma być wyświetlona przez przeglądarkę zwartość
wybranego elementu HTML.


## Sposób użycia
### Diagramy przypadków użycia: użytkownik
![](dokumentacja/Przypadki%20użycia/Użytkownik.jpg)

### Diagramy przypadków użycia: administartor
![](dokumentacja/Przypadki%20użycia/Admin.jpg)


## Struktura i opis katalogów aplikacji
//tutaj wstawiamy zdjęcie katalogów aplikacji
### Katalog: css
Katalog zwiera wszystkie pliki odpowiedzialne za wygląd strony, napisane w języku CSS.
### Katalog: dokumentacja
Katalog przechowuje plik pdf, którego zawartość została wykorzystana podczas tworzenia dokumentacji. W podkatalagou *Przypadki użycia* znajduję się zdjęcia diagramów UML przypadków użycia. Pozostałe pliki to screeny katalogów programu oraz diagramów klas UML.
### Katalog: images
Przechowuje wszystkie zdjęcia wykorzystywane w aplikacji o rozrzerzeniach jpg. png. oraz svg. 
### Katalog: js
W tym katalogu znajduje się plik `main-navigation.js` napisany w języku JavaScrip, który odpowiada za wykonanie akcji po naciśnieciu na mobilny button podczas korzystania z aplikacji na telefonie. Powodując przeniesienie do mobilnej nawigacji w aplikacji. Krótki opis kodu znajduje się w punkcie [Nawigacja na urządzeniach mobilnych](README.md#nawigacja-na-urządzeniach-mobilnych)
### Katalog: php
Odpowiada za przechowywanie głównych plików projektu napisanych w języku PHP oraz HTML. W jego podkatalogu o nazwie `class` znajdują się klasy, które zostały utworzone do wykonywania akcji między bazą danych a aplikacją. W podpunkcie [Struktura klas](README.md#struktura-klas) zostały one dokładniej opisane.
### Katalog: style
Zawiera pliki odpowiedzialne za opcje nawigacji w zależności od statusu zalogowania na konto ( brak zalogowania `nawigacja.php`, zalogowany jako użytkownik `nawigacja_user.php` oraz zalogowany jako administrator `nawigacja_admin.php`). W podpukcie [Nawigacja na stronie](README.md#nawigacja-na-stronie) zostały dokładniej opisane.
### Plik: index.php
Ten plik zawiera kod strony głównej aplikacji i stanowi on najważniejszą cześć projektu, ponieważ od niego rozpoczynają się kolejne zależności w projekcie.
### Plik: quiz v2-3.sql
Plik formatu sql. przechowujące dane z bazy danych, którego struktura jest opisana w [Struktura bazy danych](README.md#struktuta-bazy-danych).
### Plik: README.md
Ten plik zawiera całą dokumentację aplikacji.Posiada rozrzeszenie md co powoduje,że musi być otwierany za pomocą takiego programu systemu Windows jak Windows Notepad lub poprzez platformę github.com .

## Struktura bazy danych
### Schemat bazy danych
 //Tu wrzucimy zdjęcie shcematu bazy danych
 
### Tabela: category
Tabela przechowuje informacje o kategoriach.

| Kolumna | Typ danych | Opis |
| --- | --- | --- |
| **id** | int | Klucz podstawowych tabeli *category*, zawiera numer id kategorii. |
| **name** | varchar | Nazwa kategorii. |

### Tabela: quanda
Tabela przechowuje informacje na temat pytań do quizów.

| Kolumna | Typ danych | Opis |
| --- | --- | --- |
| **id** | int | Klucz podstawowy tabeli *quanda*, zawiera numer id pytań. |
| **id_category** | int | Klucz obcy z *category.id*, zawiera numer id kategorii do której przypisane jest pytanie. |
| **question** | text | Pytanie. |
| **answer_a** | text | Odpowiedź a. |
| **answer_b** | text | Odpowiedź b. |
| **answer_c** | text | Odpowiedź c. |
| **correct_answer** | enum | Zwiera odpowiedź, kolumna może przyjąć wartość: 'A','B' lub 'C'. |
| **assent** | enum | Informacja na temat akceptacji pytań przez administratora: '0' - pytanie niezaakceptowane, '1' - pytanie zaakceptowane. Wartością domyślną jest '0'. |

### Tabela: ranking
Tabela przechowuje informacje na temat ilości punktów zdobytych przez użytkownika.

| Kolumna | Typ danych | Opis |
| --- | --- | --- |
| **id_user** | int | Klucz obcy z *user.id*, zawiera numer id użytkownika do którego przypisane są punkty. |
| **points** | int | Ilość punktów zdobytych poprzez podawanie poprawnych odpowiedzi w quizie. 1 poprawna odpowiedź=1 punkt |
| **max_ponit** | int | Ilość pytań na które odpowiedział użytkownik. |

### Tabela: user
Tabela przechowuje informacje na temat zarejestrowanych użytkowników.

| Kolumna | Typ danych | Opis |
| --- | --- | --- |
| **id** | int | Klucz podstawowy tabeli *user*, zawiera numer id zarejestrowanego użytkownika. |
| **login** | varchar | Login zarejestrowanego użytkownika. |
| **passwrod** | varchar | Hasło zarejestrowanego użytkownika zaszyfrowane algorytmem MD5. |
| **role** | enum | Informacja na temat uprawnień użytkownika: '0' - zwykły użytkownik , '1' - administrator. Wartością domyślną jest '0'. |


## Struktura klas

### DBConnection.php
Zadaniem klasy jest poprawne połączenie się z bazą danych a w razie niepowodzenia w łaczności wyświeltenie komunikatu o błędzie.

```ruby
class DBConnection {
    private $_con;
    function __construct(){
        $this->_con = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD,DB_DATABASE);      
        if ($this->_con->connect_error) die('Database error -> ' . $this->_con->connect_error);
    }
    // return Connection
    function returnConnection() {
        return $this->_con;
    }
}
```

### Question.php
Zadaniem klasy jest odpowiadanie za łączość z tabelą *quanda* oraz wykonywanie zagdanień związanych z pytaniami (wyświetlanie pytań, dodawanie nowych pytań, zmiania statusu z niezaakceptowanego na zaakceptowany).
Klasa ta pobiera głównie takie informacje jak: id pytania (`$_id`), id kategorii (`$_id_category`), treść pytania (`$_question`), odpowiedzi (`$_answerA`,`$_answerB`,`$_answerC`).

Metoda `public function__construct()` odpowiada za łączność z bazą danych w tej klasie poprzez tworzenie nowego obiektu klasy DBConnection `$this->db = new DBConnection()`.

```ruby
class Question
{
    protected $db;
    private $_id;
    private $_id_category;
    private $_question;
    private $_answerA;
    private $_answerB;
    private $_answerC;
    private $_correct_answer;

    public function setID($id) {
        $this->_id = $id;
    }
    public function setId_category($id_ca$tegory) {
        $this->_id_category= $id_category;
    }
    public function setQuestion($question) {
        $this->_question= $question;
    }
    public function setAnswerA($answerA) {
        $this->_answerA = $answerA;
    }
    public function setAnswerB($answerB) {
        $this->_answerB = $answerB;
    }
    public function setAnswerC($answerC) {
        $this->_answerC = $answerC;
    }
    public function setCorrect_answer($correct_answer) {
        $this->_correct_answer = $correct_answer;
    }

    public function __construct() {
        $this->db = new DBConnection();
        $this->db = $this->db->returnConnection();
    }
```

Za możliwość dodawannia nowych pytań odpowiada metoda `addQuestion()`, która dodaje odpowiednio: id pytania, odpowiedź A, odpowiedź B, odpowiedź C oraz poprawną odpowiedź.

```ruby
 public function addQuestion()
    {
        $query = 'INSERT INTO qanda SET 
            id_category="' . $this->_id_category . '",
            question="' . $this->_question . '",
            answer_a="' . $this->_answerA . '",
            answer_b="' . $this->_answerB . '",
            answer_c="' . $this->_answerC . '",   
            correct_answer="' . $this->_correct_answer . '"';
        $result = $this->db->query($query) or die($this->db->error);
        return true;
    }
```

Pododaniu pytań przez administratora lub użytkownika muszą być one zaakceptowane przez administratora. Należy tego dokonać, ponieważ domyślnie
po utworzeniu pytania jego wartością domyślną w tabeli *quanda* jest '0'. Natomiast wykorzystanie tych pytań występuje tylko wtedy, gdy wartość domyślna w 
tabelii *quanda* jest równa '1'. Związku z tym za zmianę akceptacji pytań odpowiada metoda `updateStatusWhenQuestionAssent()`.

```ruby
 public function updateStatusWhenQuestionAssent(){
        $query = 'UPDATE qanda SET assent = "1" WHERE id ="'.$this->_id .'"';
        $result = $this->db->query($query) or die($this->db->error);
        return true;
    }
```    


Do wyświetlania pytań z odpowiednich kategorii służą metody `getQuestionAssent...`. Każda z nich ma określoną własną `id_category`, aby były odpowiednio identyfikowane ze swoimi kategoriami
i w odpowieniej kategorii były wyświetlane tylko pytania należące do jej dziedziny.
Poniżej znajduje się przykładowa metoda dla kategorii geogragia.
```ruby
 public function getQuestionAssentGeografia()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '1'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rows[] = $row;
        }
        if (!empty($rows))

            return $rows;

    }
```


### User.php
Zadaniem klasy jest odpowiadanie za łączność z tabelą *user* oraz wykonywanie zagadnień związanych z użytkownikiem (rejestracja, logowanie oraz rola użytkownika).
Klasa pobiera głównie takie informacje jak: id użytkownika (`$_id`), login (`$_login`), hasło (`$_haslo`) oraz rolę (`$_rola`).

```ruby
class User
{
    protected $db;
    private $_id;
    private $_login;
    private $_haslo;
    private $_rola;

    private $_userID;
    private $_name;
    private $_username;
    private $_password;


    public function getRola()
    {
        return $this->_rola;
    }

    public function getId()
    {
        return $this->_id;
    }

    public function setID($id) {
        $this->_id = $id;
    }

    public function setEmail($email) {
        $this->_email = $email;
    }
    public function setLogin($login) {
        $this->_login = $login;
    }
    public function setHaslo($haslo)
    {
        //hash password when filling user instance
        $this->_haslo = $haslo;
    }
    public function setRola($rola) {
        $this->_rola = $rola;
    }

    public function __construct() {
        $this->db = new DBConnection();
        $this->db = $this->db->returnConnection();
    }
```

Metoda rejestracji `userRegistration` dodaje do tabelii *user* nowego użytkownika wraz z nadaniem mu: adresu email (`email="'.$this->_email.'"`),
login (`login="'.$this->_login.'"`), hasło (`password="'.$haslo_hash.'"`) oraz domyślną rolę użytkownika (`role="0"'`).

```ruby
 public function userRegistration() {
        $haslo_hash = $this->hash($this->_haslo);
        var_dump($haslo_hash);
        $query = 'SELECT * FROM user WHERE login="'.$this->_login.'" OR email="'.$this->_email.'"';
        $result = $this->db->query($query) or die($this->db->error);            
        $count_row = $result->num_rows;         
        if($count_row == 0) {
            $query = 'INSERT INTO user SET 
            email="'.$this->_email.'",
            login="'.$this->_login.'",   
            password="'.$haslo_hash.'", 
            role="0"';
            $result = $this->db->query($query) or die($this->db->error);                
            return true;
        } else {
            return false;
        }
    }
```

Logowanie na konto odbywa się za pośrednictwem metody `doLogin()`,która pobiera z bazy danych informacje o użytkowniku potrzebne do prawidłowego zalogowania się na konto.
Klasa pobiera z tabelii *user* login, id użytkownika oraz jego rolę gdzie podany email lub login są poprawne ( `SELECT login,id,role, password from user WHERE email="'.$this->_login.'" or login="'.$this->_login.'`).

```ruby
public function doLogin() {
        $query = 'SELECT login,id,role, password from user WHERE email="'.$this->_login.'" or login="'.$this->_login.'"';
        $result = $this->db->query($query) or die($this->db->error);
        $user_data = $result->fetch_array(MYSQLI_ASSOC);
//        print_r($user_data);
        $count_row = $result->num_rows;

        if ($count_row == 1) {
            if (!empty($user_data['password']) && $this->verifyHash($this->_haslo, $user_data['password'])) {
                $_SESSION['login'] = TRUE;
                $_SESSION['id'] = $user_data['id'];
                $_SESSION['rola'] = $user_data['role'];
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }
```

Za haszowanie hasła oraz jego weryfikację odpowiadają dwie metody. Pierwsza z nich to metoda `hash($password)` a druga weryfikująca to `verifyHash($password_from_form, $password_from_db)`.

```ruby
  // password hash
    public function hash($password) {
        $hash = password_hash($password, PASSWORD_DEFAULT);
        return $hash;
    }
 
    // password verify
    public function verifyHash($password_from_form, $password_from_db) {
        if (password_verify($password_from_form, $password_from_db)) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
```    

Systemem wylogowania steruje mała metoda o nazwie `logout()`, której kod powoduje "destrukcję" sekcji (`section_destroy()`).

```ruby
public function logout() {
        $_SESSION['login'] = FALSE;
        unset($_SESSION);
        session_destroy();
    }
 ```   

## Nawigacja na stronie
### Nawigacja podstawowa
Za nawigację podstawową (użytkownik nie jest zalogowany) odpowiada plik w katalogu style `nawigacja.php`. Znacznik `<img src="../images/tytul.svg" alt="Logo" class="main-navigation__logo-image">` dodaje w nawigacji obraz loga aplikacji,a znacznik `<a href="../index.php" class="main-navigation__logo-link">` odpowiada za przekierowanie do strony głównej, po naciśnięciu loga. 
W liście nieuporządkowanej `<ul></ul>` znajdują się opcje jakie może użytkownik niezalogowany wykonać na stronie. Te opcje znajdują się odpowiednio w listach uporządkowanych `<li></li>` i odpowiednio do swojego przeznaczenie przekierowują na wyznaczone podstrony.
W taki sposób na przykład lista `<li class="main-navigation__quizy-item">` z przekierowaniem ` <a  href="../index.php" class="main-navigation__link">` oznaczona tekstem `Home` powoduje przejście do strony gółwnej po jej wykonaniu. Przy użyciu takiej metodyki działania zostały utworzone przekierowania do strony quizów `Quizy`, opisu działalności aplikacji `O nas`, logowania `Logowanie` oraz rejestracji `Rejestracja`. 

```ruby
  <nav class="main-navigation">
            <div class="main-navigation__inner">
            <div class="main-navigation__logo">
                <a href="../index.php" class="main-navigation__logo-link">
                    <img src="../images/tytul.svg" alt="Logo" class="main-navigation__logo-image">
                </a>
            </div>
            <ul class="main-navigation__quizy js-main-navigation__quizy">
                <li class="main-navigation__quizy-item">
                    <a  href="../index.php" class="main-navigation__link">
                      Home
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                    <a  href="../index.php#about-us" class="main-navigation__link">
                      O nas
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                  <a  href="../index.php#quizy" class="main-navigation__link">
                    Quizy
                  </a>
                </li>
                <li class="main-navigation__quizy-item">
                    <a  href="../php/login.php" class="main-navigation__link">
                      Logowanie
                    </a>
                  </li>
                  <li class="main-navigation__quizy-item">
                    <a  href="../php/register.php" class="main-navigation__link">
                      Rejestracja
                    </a>
                  </li>
            </ul>
            <button class="main-navigation__mobile-button js-main-navigation__mobile-button">
               <img src="../images/navigation.svg" alt="Otwórz / zamknij nawigację" class="main-navigation__mobile-button-image">
            </button>
            </div>
        </nav>
```

### Nawigacja użytkownika
Plik odpowiedzialny za nawigację użytkownika (użytkownik zalogowany na konto) odpowiada plik w katalogu klas `nawigacja_user.php`. Podobnie jak w nawigacji podstawowej mamy te same znaczniki odpowiadające za wyświetlanie loga oraz jego przekierowanie do strony głównej. W liście nieuporządkowanej `<ul></ul>` znajdują się trzy takie same co w nawigacji podstawowej odnośniki do podstron. Są to odpowiednio `Home`, `Quizy` oraz `O nas`, a także dodane są nowe `Moje konto`, `Stwórz pytanie` oraz `Wyloguj`. One natomiast są widoczne tylko dla użytkownika zalogowanego na stronie głównej i jej podstronach. A znacznik `<a href="<?php print SITE_URL; ?>user_panel.php?q=logout" class="main-navigation__link">` powoduje wylogowanie użytkownika.

```ruby
<nav class="main-navigation">
            <div class="main-navigation__inner">
            <div class="main-navigation__logo">
                <a href="../index.php" class="main-navigation__logo-link">
                    <img src="../images/tytul.svg" alt="Logo" class="main-navigation__logo-image">
                </a>
            </div>
            <ul class="main-navigation__quizy js-main-navigation__quizy">
                <li class="main-navigation__quizy-item">
                    <a  href="../index.php" class="main-navigation__link">
                      Home
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                    <a  href="../index.php#about-us" class="main-navigation__link">
                      O nas
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                  <a  href="../index.php#quizy" class="main-navigation__link">
                    Quizy
                  </a>
                </li>
                <li class="main-navigation__quizy-item">
                    <a  href="../php/login.php" class="main-navigation__link">
                      Moje konto
                    </a>
                  </li>

                <li class="main-navigation__quizy-item">
                    <a  href="../php/add_question.php" class="main-navigation__link">
                        Stwórz pytanie
                    </a>
                </li>
              
                  <li class="main-navigation__quizy-item">
                  <a href="<?php print SITE_URL; ?>user_panel.php?q=logout" class="main-navigation__link">
                      Wyloguj
                    </a>
                  </li>                 
            </ul>
            <button class="main-navigation__mobile-button js-main-navigation__mobile-button">
               <img src="../images/navigation.svg" alt="Otwórz / zamknij nawigację" class="main-navigation__mobile-button-image">
            </button>
            </div>
        </nav>
```

### Nawigacja administratora
Nawigacja administratora wygląda oraz działa niemal identycznie tak samo jak nawigacja użytkownika. Dodana jest jednak jedna dodatkowa opcja umożliwiająca administratorowi akceptację stworzonych pytań. Znajduje się to w znacznikach PHP, gdzie tworzony jest nowy obiekt user `$user = new User();` a jego rola musi wynosić 1 `$_SESSION['rola']==="1"` ( tak jest określony administrator w bazie danych ). Wtedy użytkownik, który jest administratorem ma możliwość przejścia do sekcji akceptacji pytań. Jeśli natomiast rola użytkownika jest inna niż 1 przejście do tej sekcji nie zostaje wyświetlane. 

```ruby
<nav class="main-navigation">
            <div class="main-navigation__inner">
            <div class="main-navigation__logo">
                <a href="../index.php" class="main-navigation__logo-link">
                    <img src="../images/tytul.svg" alt="Logo" class="main-navigation__logo-image">
                </a>
            </div>
            <ul class="main-navigation__quizy js-main-navigation__quizy">
                <li class="main-navigation__quizy-item">
                    <a  href="../index.php" class="main-navigation__link">
                      Home
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                    <a  href="../index.php#about-us" class="main-navigation__link">
                      O nas
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                  <a  href="../index.php#quizy" class="main-navigation__link">
                    Quizy
                  </a>
                </li>
                <li class="main-navigation__quizy-item">
                    <a  href="../php/login.php" class="main-navigation__link">
                      Moje konto
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                    <a  href="../php/add_question.php" class="main-navigation__link">
                        Stwórz pytanie
                    </a>
                </li>
               <?php
             

               $user = new User();
                if (!empty($_SESSION['id'])) {
                    $uid = $_SESSION['id'];

                }
                if($_SESSION['rola']==="1"){
                  echo "<li class=\"main-navigation__quizy-item\">
                <a href=\"assent.php\" class=\"main-navigation__link\">
                    Akceptacja pytań
                  </a>
                </li> ";
              }
              else {
                
              };
                
                  ?>
                  
                  <li class="main-navigation__quizy-item">
                  <a href="<?php print SITE_URL; ?>admin_panel.php?q=logout" class="main-navigation__link">
                      Wyloguj
                    </a>
                  </li>                 
            </ul>
            <button class="main-navigation__mobile-button js-main-navigation__mobile-button">
               <img src="../images/navigation.svg" alt="Otwórz / zamknij nawigację" class="main-navigation__mobile-button-image">
            </button>
            </div>
        </nav>
 ```
 
### Nawigacja na urządzeniach mobilnych
Nawigacja na urządzeniach mobilnych różni się od tej wyświetlanej na komputerze, jednak wykorzystuje ona te same pliki nawigacyjne. 
W każdym z trzech wcześniejszych plików znajduje się znacznik `<ul class="main-navigation__quizy js-main-navigation__quizy">`, którego część klasy `js-main-navigation__quizy` odpowiada za wyświetlanie nawigacji na telefonie. Natomiast znacznik przycisku `<button class="main-navigation__mobile-button js-main-navigation__mobile-button">` przekazuje informacje o pojawieniu się odpowiedniego przycisku nawigującego,który pojawia się w sytuacji korzystania z aplikacji na telefonie. W sytuacji,kiedy wszytskie opcje nawigujące nie są w stanie wyświetlić się na ekranie. 
Do prawidłowego działania przycisku został użyty język JavaScrip, ponieważ jego biblioteki umożliwiają wykonania reakcji po naciśnięciu na obrazek.Działanie opiera się na pliku `main-navigation.js` zawartym w katalogu js.

```ruby
(()=> {
const button = document.querySelector(" .js-main-navigation__mobile-button");
const quizy = document.querySelector(" .js-main-navigation__quizy");

const toggleClass = () =>{
    quizy.classList.toggle("main-navigation__quizy--open");
};

button.addEventListener("click", toggleClass);
quizy.addEventListener("click", toggleClass);
})();
```

### Stopka
Stopka zanjduje się na każdej podstronie aplikacji.Jej działania polega na przekierowaniu do samej góry podstrony, po naciśnięciu zawartego w niej loga aplikacji.
Kod stopki znajduje się następujących plikach: `indxe.php`, `login.php`,`register.php`,`user_panel.php`, `assent.php`, `admin_panel.php` i `add_question.php`.

```ruby
<footer class="footer">
          <a href="#" class="footer__logo-link">
            <img src="images/tytul.svg" alt="Logo" class="footer__logo-image">
        </a>
        </footer>
 ```  
 
 ## System rejestracji
 Głównym plikiem odpowidzialnym za rejestrację jest plik `register.php` umieszczony w katalogu php.
 
 Tworzony jest nowy obiekt klasy `User()`, któremu przypisujemy odpowiednio: adres email (`$uemial`), login (`$ulogin`) oraz hasło (`$uhaslo`). Następnie te dane są wstawiane do bazy danych poprzez polecenia: `$user->setEmail($uemail);`, `$user->setLogin($ulogin);`, ` $user->setHaslo($uhaslo);` i `$register = $user->userRegistration();`. Jeśli rejestracja przebiegła pomyślnie zostaje wyświetlony komunikat o prawidłowej rejestracji oraz infromacja o przejściu do panelu logowania ` Registration successful` i  `Click here</a> to login`. 
 
 System rejestracji sprawdza również poprawność wpisywanych danych oraz czy w bazie danych nie ma użytkownika o takich samych danych.
 W pierwszej kolejności jest sprawdzane czy każde pole rejestracyjne zostało wypełnione i wyświetla odpowiedni komunikat o napotkanym    błędzie. Odpowiadają za to instrukcje warunkowe if spradzające po kolei wprowadzony email, logi oraz hasło. Pętle te sprawdzają odpowiednio następujące warunki: `if(!filter_var($uemail, FILTER_VALIDATE_EMAIL))` (instrukcja sprawdza czy został wprowadzony email), `if(strlen(trim($ulogin)) === 0)` (instrukcja sprawdza czy rubryka login nie jest pusta) oraz `if(strlen(trim($uhaslo)) === 0)` (instrukcja sprawdza czy hasło zostało podane).
 Natomiast jeśli w bazie danych znajduje się już użytkownik o podanym adresie email lub loginie, zostanie wyświetlony o tym następujący komunikat `Registration failed. Email or Username already exits please try again.`.
 
 ```ruby
 $user = new User();
 
if ($user->getSession()===TRUE) {
    header("location:../index.php");
}
if(@$_SESSION['login']){
    if($_SESSION['rola']==="1"){
        header("location:admin_panel.php");
    }
    else{
        header("location:user_panel.php");
    }
}
$status = '';
 
$errors = array(); 
//If our form has been submitted.
if(isset($_POST['submit'])){
    extract($_POST);
    //Get the values of our form fields.
    $uemail = isset($uemail) ? $uemail : null;
    $ulogin = isset($ulogin) ? $ulogin : null;
    $uhaslo = isset($uhaslo) ? $uhaslo : null;


    if(!filter_var($uemail, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "That is not a valid email address!";
    }

    if(strlen(trim($ulogin)) === 0){
        $errors[] = "You must enter your login";
    }
    if(strlen(trim($uhaslo)) === 0){
        $errors[] = "You must enter your password!";
    }
 
    //If our $errors array is empty, we can assume that everything went fine.
    if(empty($errors)){
        //insert data into database.
        $user->setEmail($uemail);
        $user->setLogin($ulogin);
        $user->setHaslo($uhaslo);
        $register = $user->userRegistration();
        if ($register) {    
            $status = "<div class='alert alert-success' style='text-align:center: color: white'>Registration successful <a href='".SITE_URL."login.php' style='color: white'>Click here</a> to login</div>";
        } else {    
            $status = "<div class='alert alert-danger' style='color: red'>Registration failed. Email or Username already exits please try again.</div>";
        }
    }
}
```

## System logowania
Głównym plikiem odpowiedzialnym za logowanie jest `login.php` w katalogu php.

Tak jak w przypadku rejestracji tworzony jest nowy obiekt kalsy `User()`. Następnie po pobraniu danych od użytkownika pobierane są dane z bazy danych do porównania z tymi wprowadzonymi. Jeśli dane zostały podane poprawnie, sprawdzana jest `rola` użytkownika aby przekirować go odpowiednio albo do panelu użytkownika albo do panelu administratora. Sprawdza to instraukcja warunkowa **if else** (`if($_SESSION['rola']==="1")`). 

Natomiast jeśli dane zostały wprowadzone niepoprawnie wyświetla się komunikat `Wrong username or password`.

```ruby
$msg = '';
$user = new User();
if(@$_SESSION['login']){
  if($_SESSION['rola']==="1"){
    header("location:admin_panel.php");
  } 
  else{
    header("location:user_panel.php");
  }
}
if (isset($_POST['submit'])) {
    $user->setLogin($_POST['emailusername']);
    $user->setHaslo($_POST['password']);
    $login = $user->doLogin();
    if ($login) {     
      if($_SESSION['rola']==="1"){
        header("location:admin_panel.php");
      } 
      else{
        header("location:user_panel.php");
      }     

    } else {            
        $msg = 'Wrong username or password';
    }
}
```

