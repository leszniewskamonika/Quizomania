<?php
include "class/User.php";
include "class/DBConnection.php";
include "../style/nawigacja.php";

$msg = '';
$user = new User();
if(@$_SESSION['login']){
  if($_SESSION['rola']==="1"){
    header("location:admin_panel.php");
  } 
  else{
    header("location:../php/class/user_panel.php");
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
        header("location:../php/class/user_panel.php");
      }     

    } else {            
        $msg = 'Wrong username or password';
    }
}

?>

<<<<<<< Updated upstream
<section class="main-banner-login">
=======
<section class="main-banner-register">
    
        <form action="" method="post" name="login"> 
>>>>>>> Stashed changes
        <div class="col">
        <?php if(!empty($msg)){ 
                echo '<div class="alert alert-danger">Wrong username or password</div>';
       } ?>    
    </div>   
            <div class="input-group__mb-3">
                <input type="text" name="emailusername" class="form-control" placeholder="Username/Email">
            </div>
            
            <div class="input-group__mb-3">
                <input type="password" name="password" class="form-control" placeholder="******">        
            </div>
            
            <button type="submit" name="submit" class="float-right btn btn-primary">Zaloguj</button>
            <a href="<?php print SITE_URL; ?>register.php">Zarejestruj się</a>               
       </form>
</section>
        <footer class="footer">
          <a href="#" class="footer__logo-link">
            <img src="../images/tytul.svg" alt="Logo" class="footer__logo-image">
        </a>
        </footer>
      </body>
      </html>   

      
