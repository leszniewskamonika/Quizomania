<?php
include "class/User.php";
include "class/DBConnection.php";
include "../style/nawigacja_user.php";


$user = new User();
if(!empty($_SESSION['id'])){
    $uid = $_SESSION['id'];

}
if ($user->getSession()===FALSE) {
   header("location:../index.php");
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
            
                
        <p class="text-light display-1" style="color: white"></p>
    
        <div class="col-lg-10">
            <h2 style="color: white">Witaj <?php print $userInfo['login'];?> w panelu użytkownika</h2><br><br>                 
        </div>
        <div>
        <h2 style="color: white">Teraz możesz rowiązywać quizy - <a href="../index.php#quizy" style="color:white">rozwiąż quiz</a></h2>
        <h2 style="color: white">oraz tworzyć własne - <a href="add_question.php" style="color:white"> stwórz pytanie</a></h2>
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
   