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

?>

<section class="main-banner-register">

        
        <form action="" method="post" name="login">    
            <div class="input-group mb-3">
                <input type="text" name="emailusername" class="form-control" placeholder="Username/Email">
            </div>
            
            <div class="input-group mb-3">
                <input type="password" name="password" class="form-control" placeholder="****">        
            </div>
            
            <button type="submit" name="submit" class="float-right btn btn-primary">Login</button>
            <a href="<?php print SITE_URL; ?>register.php" style="color: white">Zarejestruj się</a>
        <div class="col">
        <?php if(!empty($msg)){ 
                echo '<div class="alert alert-danger" style="color: red">Wrong username or password</div>';
       } ?>    
    </div></form>
<div class="row">
       
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
      
