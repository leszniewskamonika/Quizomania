<?php
include "class/User.php";
include "class/DBConnection.php";
include "../style/nawigacja_user.php";


$user = new User();
if(!empty($_SESSION['id'])){
    $uid = $_SESSION['id'];

}
if ($user->getSession()===FALSE) {
   header("location:/../index.php");
}
if (isset($_GET['q'])) {
    $user->logout();
    header("location:../index.php");
}
$user->setID($uid);
$userInfo = $user->getUserInfo();

?>


      <div class="main-banner-register">
        <div class="row">
            
                
            <p class="text-light display-1">Witaj w panelu użytkownika</hp>
    
        <div class="col-lg-10">
            <h2>Witaj <?php print $userInfo['login'];?></h2>                 
        </div>
        <div class="col-lg-2">
            <a href="<?php print SITE_URL; ?>user_panel.php?q=logout" class="logout">LOGOUT</a>
        </div>
    </div>
  </div>
</div>
</div>
  

    </section>
        <footer class="footer">
          <a href="#" class="footer__logo-link">
            <img src="../images/tytul.svg" alt="Logo" class="footer__logo-image">
        </a>
        </footer>
   