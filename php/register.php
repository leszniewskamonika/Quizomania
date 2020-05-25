<?php
include "class/DBConnection.php";
include "class/User.php";
include "../style/nawigacja.php";

$user = new User();
 
if ($user->getSession()===TRUE) {
    header("location:index.php");
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

        <section class="main-banner-register">
  
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
