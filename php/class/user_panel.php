<?php
include "User.php";
include "DBConnection.php";
include "../../style/nawigacja_user.php";


$user = new User();
if(!empty($_SESSION['id'])){
    $uid = $_SESSION['id'];

}
if ($user->getSession()===FALSE) {
   header("location:../../index.php");
}
if (isset($_GET['q'])) {
    $user->logout();
    header("location:../../index.php");
}
$user->setID($uid);
$userInfo = $user->getUserInfo();

?>


      <div class="main-banner-register">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h1 class="text-light display-1">Witaj w panelu użytkownika</h1>
            </div>
        </div>
     
    <div class="container pt-5">
    <div class="row">
        <div class="col-lg-10">
            <h2>Witaj <?php print $userInfo['login'];?></h2>                 
        </div>
        <div class="col-lg-2">
            <a href="<?php print SITE_URL; ?>user_panel.php?q=logout" class="logout">LOGOUT</a>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
            <a href="../class/user_panel.php" class="btn btn-primary">Twoje quizy</a>
           
            </div>
        </div>
    </div>  
    </div>    
   
   