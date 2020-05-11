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
                    <a  href="#" class="main-navigation__link">
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
                <li class="main-navigation__quizy-item">
                    <a  href="php/login.php" class="main-navigation__link">
                      Logowanie
                    </a>
                  </li>
                  <li class="main-navigation__quizy-item">
                    <a  href="php/register.php" class="main-navigation__link">
                      Nowe konto
                    </a>
                  </li>
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
        <section>
         <?php
         



         ?>
        </section>
        <footer class="footer">
          <a href="#" class="footer__logo-link">
            <img src="images/tytul.svg" alt="Logo" class="footer__logo-image">
        </a>
        </footer>
    </body>
</html>