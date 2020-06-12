<!DOCTYPE html>
<html>
    <head>
    
        <meta name="description">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha256-l85OmPOjvil/SOvVt3HnSSjzF1TUMyT9eV0c2BzEGzU=" crossorigin="anonymous" />
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&display=swap" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/main-banner.css" rel="stylesheet">
        <link href="../css/container.css" rel="stylesheet">
        <link href="../css/about-us.css" rel="stylesheet">
        <link href="../css/main-navigation.css" rel="stylesheet">
        <link href="../css/bookmark.css" rel="stylesheet">
        <link href="../css/footer.css" rel="stylesheet">
        <link href="../css/main-banner-register.css" rel="stylesheet">
        <link href="../css/main-banner-login.css" rel="stylesheet">
        <link href="../css/main-banner-add_question" rel="stylesheet">
        
    </head>
    <body>
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
                  <a href="../php/ranking.php" class="main-navigation__link">
                        Ranking
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
        <script src="../js/main-navigation.js"></script>