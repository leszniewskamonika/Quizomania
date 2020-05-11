<?php
include "class/DBConnection.php";
include "class/User.php";

$user = new User();
 
if ($user->getSession()===TRUE) {
    header("location:index.html");
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
            $status = "<div class='alert alert-success' style='text-align:center'>Registration successful <a href='".SITE_URL."login.php'>Click here</a> to login</div>";
        } else {    
            $status = "<div class='alert alert-danger' style='text-align:center'>Registration failed. Email or Username already exits please try again.</div>";
        }
    }
}
 
?>
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
            
    </head>
    <body>
        <nav class="main-navigation">
            <div class="main-navigation__inner">
            <div class="main-navigation__logo">
                <a href="#" class="main-navigation__logo-link">
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
    <h1 >Zarejestruj się</h1>
<div><?php echo $status; ?></div>
<div class="row">
    <div class="col-lg-12"><ul><?php
            foreach ($errors as $value) {
                echo '<li style="color: red; font-size: 13px;">'.$value.'</li>' ;
            }
            ?></ul></div>
</div>

            <form action="" method="post" name="reg" enctype="multipart/form-data">

            <div class="form-group">
                <label for="imie">Adres email</label>
                <input type="email" name="uemail" class="form-control" placeholder="Adres email"></input>
            </div>
            <div class="form-group">
                <label for="imie">Login w serwisie</label>
                <input type="text" name="ulogin" class="form-control" placeholder="Twój login w serwisie"></input>
            </div>
            <div class="form-group">
                <label for="imie">Twoje hasło</label>
                <input type="password" name="uhaslo" class="form-control" placeholder="Hasło"></input>
            </div>
                <button type="submit" name="submit" class="float-right btn btn-primary">Zarejestruj</button>
                <a href="<?php print SITE_URL; ?>login.php">Zarejestrowany? To co tu robisz? Zaloguj się!</a>
            </form>
        </div>
    </div>
</div>
</section>
        <footer class="footer">
          <a href="#" class="footer__logo-link">
            <img src="../images/tytul.svg" alt="Logo" class="footer__logo-image">
        </a>
        </footer>
    </body>
</html>
