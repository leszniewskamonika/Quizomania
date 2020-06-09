# Aplikacja do rozwiązywania quizów "Quizomania"
Celem aplikacji jest umożliwenie użytkowniką rozwiązywania quizów oraz tworzenie ich dla siebie i innych. 


## Spis treści
1. [Technologie](Technologie/README.md)
2. [Sposób użycia](Sposób_użycia/README.md)
   - Diagramy przypadków użycia: użytkownik
   - Diagramy przypadków użycia: administrator
3. [Struktura bazy danych](Struktura_bazy_danych/README.md)
   - Schemta bazy danych
   - Tabela: category
   - Tabela: quanda
   - Tabela: ranking
   - Tabela: user
4. [Struktura klas](Struktura_klas/README.md)
   - [Klasa: DBConnection.php](DBConnection.php/README.md)
   - [Klasa: Question.php](Question.php/README.md)
   - [Klasa: User.php](User.php/README.md)
  
  
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
![](dokumentacja/Przypadki użycia/użytkownik.jpg)

### Diagramy przypadków użycia: administartor
![](dokumentacja/Przypadki użycia/admin.jpg)


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
