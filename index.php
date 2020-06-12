
<!DOCTYPE html>
<html>
    <head>
        <title>Quizomania-quizy dla każdego</title>
        <meta name="description">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha256-l85OmPOjvil/SOvVt3HnSSjzF1TUMyT9eV0c2BzEGzU=" crossorigin="anonymous" />
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&display=swap" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/main-banner.css" rel="stylesheet">
        <link href="css/container.css" rel="stylesheet">
        <link href="css/about-us.css" rel="stylesheet">
        <link href="css/main-navigation.css" rel="stylesheet">
        <link href="css/bookmark.css" rel="stylesheet">
        <link href="css/footer.css" rel="stylesheet">
        <link href="css/bookmark__geografia.css" rel="stylesheet">
        <link href="css/bookmark__historias.css" rel="stylesheet">
        <link href="css/bookmark__prl.css" rel="stylesheet">
        <link href="css/bookmark__jezyki.css" rel="stylesheet">
        <link href="css/bookmark__przyroda.css" rel="stylesheet">
        <link href="css/bookmark__ksiazka.css" rel="stylesheet">
        <link href="css/bookmark__film.css" rel="stylesheet">
        <link href="css/bookmark__logika.css" rel="stylesheet">
        <link href="css/col-lg.css" rel="stylesheet">
        <link href="css/pytanie.css" rel="stylesheet">
        
        
    </head>
    <body>
        <nav class="main-navigation">
            <div class="main-navigation__inner">
            <div class="main-navigation__logo">
                <a href="#" class="main-navigation__logo-link">
                    <img src="images/tytul.svg" alt="Logo" class="main-navigation__logo-image">
                </a>
            </div>
            <ul class="main-navigation__quizy js-main-navigation__quizy">
                <li class="main-navigation__quizy-item">
                    <a  href="index.php" class="main-navigation__link">
                      Home
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                    <a  href="#about-us" class="main-navigation__link">
                      O nas
                    </a>
                  </li>
                <li class="main-navigation__quizy-item">
                  <a  href="#quizy" class="main-navigation__link">
                    Quizy
                  </a>
                </li>
                <?php
                include "php/class/User.php";
                include "php/class/DBConnection.php";

                $user = new User();
                if (!empty($_SESSION['id'])) {
                    $uid = $_SESSION['id'];

                }
                if (isset($_GET['q'])) {
                    $user->logout();
                    header("location:index.php");
                }
                if ($user->getSession() === FALSE) {
                    echo"<li class=\"main-navigation__quizy-item\">
                    <a  href=\"php/login.php\" class=\"main-navigation__link\">
                      Logowanie
                    </a>
                  </li>
                  <li class=\"main-navigation__quizy-item\">
                    <a  href=\"php/register.php\" class=\"main-navigation__link\">
                      Rejestracja
                    </a>
                  </li>";
                }
                else {
                            if($_SESSION['rola']==="1"){
                                echo "<li class=\"main-navigation__quizy-item\">
                              <a href=\"php/admin_panel.php\" class=\"main-navigation__link\">
                                  Moje konto
                                </a>
                              </li> ";
                            }
                            else {
                                echo "<li class=\"main-navigation__quizy-item\" >
                              <a href=\"php/user_panel.php\" class=\"main-navigation__link\">
                                  Moje konto
                                </a>
                              </li> ";
                            };
                            echo "<li class=\"main-navigation__quizy-item\">
                  <a href=\"index.php?q=logout\" class=\"main-navigation__link\">
                      Wyloguj
                    </a>
                  </li> ";
                };
                ?>
            </ul>
            <button class="main-navigation__mobile-button js-main-navigation__mobile-button">
               <img src="images/navigation.svg" alt="Otwórz / zamknij nawigację" class="main-navigation__mobile-button-image">
            </button>
            </div>
        </nav>
        <script src="js/main-navigation.js"></script>


        <section class="main-banner">
         <a href="#about-us" class="main-banner__button">
                Poznaj nas i baw się razem z nami
            </a> </section>  
        <div class="container" id="about-us">
            <section class="about-us">
           <div class="about-us__text">
            <h3 class="about-us__header">Witajcie Quizomaniacy</h3>
            <p class="about-us__paragraph">Tworzymy zespół ludzi,których pasją jest tworzenie oraz rozwiązywanie quizów.
                Zrzeszamy ludzi każdej branży, którzy dzielą się z nawi własną wiedzę.A także z chęcią poszerzają ją o nowe wiadomości dzięki naszym quizą.
            </p>
            <p class="about-us__paragraph">Jeśli również chciałbym podzielić się z nami swoją wiedzą na różne tematy lub dowiedzieć się czegoś nowego zapraszamy do naszej quizomaniowej społeczności.
            </p>
           </div>
           <img class="about-us__image" src="images/znak-zapytania.png" alt="">
            </section>
        </div>
        <section class="bookmark" id="quizy">
          <h2 class="bookmark__header">Quizy</h2>
          <p class="bookmark__description">Poznaj nasze quizy i dołącz do zabawy</p>
        </section>
        <section class="bookmark__geografia">
        <h2 class="bookmark__header">Geografia</h2>
        <?php
         $user = new User();
         if (!empty($_SESSION['id'])) {
             $uid = $_SESSION['id'];

         }
         if ($user->getSession() === FALSE) {
            
        }
        else {
            echo  '<p class="bookmark__rozwiazanie"><a href="php/geografia.php"class="main-banner__button">Rozwiaż quiz z tej kategorii</a></p>'; 
        };     
        ?>
        </section>
        <?php
        include "php/class/Question.php";

        $question = new Question();
        $question->setId_category(1);
        $question_display = $question->getQuestionFromCategory();
        ?>
        <div class="row">

        <div class="col-lg-10">
           

        </div>
    </div>
        <section class="bookmark__historias">
          <h2 Class="bookmark__header">Historia</h2>
          <?php
         $user = new User();
         if (!empty($_SESSION['id'])) {
             $uid = $_SESSION['id'];

         }
         if ($user->getSession() === FALSE) {
            
        }
        else {
            echo  '<p class="bookmark__rozwiazanie"><a href="php/historia.php"class="main-banner__button">Rozwiaż quiz z tej kategorii</a></p>'; 
        };     
        ?>
        </section>
        <?php
        $question = new Question();
        $question->setId_category(2);
        $question_display = $question->getQuestionFromCategory();;
        ?>
        <div class="row">

        <div class="col-lg-10">
            

        </div>
    </div>
        <section class="bookmark__prl">
          <h2 class="bookmark__header">PRL</h2>
          <?php
         $user = new User();
         if (!empty($_SESSION['id'])) {
             $uid = $_SESSION['id'];

         }
         if ($user->getSession() === FALSE) {
            
        }
        else {
            echo  '<p class="bookmark__rozwiazanie"><a href="php/prl.php"class="main-banner__button">Rozwiaż quiz z tej kategorii</a></p>'; 
        };     
        ?>
        </section>
        <?php
        $question = new Question();
        $question->setId_category(3);
        $question_display = $question->getQuestionFromCategory();;
        ?>
        <div class="row">

        <div class="col-lg-10">

        </div>
    </div>
        <section class="bookmark__jezyki">
          <h2 class="bookmark__header">Języki</h2>
          <?php
         $user = new User();
         if (!empty($_SESSION['id'])) {
             $uid = $_SESSION['id'];

         }
         if ($user->getSession() === FALSE) {
            
        }
        else {
            echo  '<p class="bookmark__rozwiazanie"><a href="php/jezyki.php"class="main-banner__button">Rozwiaż quiz z tej kategorii</a></p>'; 
        };     
        ?>
        </section>
        <?php
        $question = new Question();
        $question->setId_category(4);
        $question_display = $question->getQuestionFromCategory();
        ?>
        <div class="row">

        <div class="col-lg-10">

        </div>
    </div>
        <section class="bookmark__przyroda">
          <h2 class="bookmark__header">Przyroda</h2>
          <?php
         $user = new User();
         if (!empty($_SESSION['id'])) {
             $uid = $_SESSION['id'];

         }
         if ($user->getSession() === FALSE) {
            
        }
        else {
            echo  '<p class="bookmark__rozwiazanie"><a href="php/przyroda.php"class="main-banner__button">Rozwiaż quiz z tej kategorii</a></p>'; 
        };     
        ?>
        </section>
        <?php
        $question = new Question();
        $question->setId_category(5);
        $question_display = $question->getQuestionFromCategory();
        ?>
        <div class="row">

        <div class="col-lg-10">

        </div>
    </div>
        <section class="bookmark__ksiazka">
          <h2 class="bookmark__header">Książka</h2>
          <?php
         $user = new User();
         if (!empty($_SESSION['id'])) {
             $uid = $_SESSION['id'];

         }
         if ($user->getSession() === FALSE) {
            
        }
        else {
            echo  '<p class="bookmark__rozwiazanie"><a href="php/ksiazka.php"class="main-banner__button">Rozwiaż quiz z tej kategorii</a></p>'; 
        };     
        ?>
        </section>
        <?php
        $question = new Question();
        $question->setId_category(6);
        $question_display = $question->getQuestionFromCategory();
        ?>
        <div class="row">

        <div class="col-lg-10">

        </div>
    </div>
        <section class="bookmark__film">
          <h2 class="bookmark__header">Film</h2>
          <?php
         $user = new User();
         if (!empty($_SESSION['id'])) {
             $uid = $_SESSION['id'];

         }
         if ($user->getSession() === FALSE) {
            
        }
        else {
            echo  '<p class="bookmark__rozwiazanie"><a href="php/film.php"class="main-banner__button">Rozwiaż quiz z tej kategorii</a></p>'; 
        };     
        ?>
         </section>
         <?php
        $question = new Question();
         $question->setId_category(7);
        $question_display = $question->getQuestionFromCategory();
        ?>
        <div class="row">

        <div class="col-lg-10">

        </div>
    </div>
         <section class="bookmark__logika">
           <h2 class="bookmark__header">Logika</h2>
           <?php
         $user = new User();
         if (!empty($_SESSION['id'])) {
             $uid = $_SESSION['id'];

         }
         if ($user->getSession() === FALSE) {
            
        }
        else {
            echo  '<p class="bookmark__rozwiazanie"><a href="php/logika.php"class="main-banner__button">Rozwiaż quiz z tej kategorii</a></p>'; 
        };     
        ?>
        </section>
        <?php
        $question = new Question();
        $question->setId_category(8);
        $question_display = $question->getQuestionFromCategory();
        ?>
        <div class="row">

        <div class="col-lg-10">
            
        </div>
    </div>  
        <footer class="footer">
          <a href="#" class="footer__logo-link">
            <img src="images/tytul.svg" alt="Logo" class="footer__logo-image">
        </a>
        </footer>
    </body>
</html>