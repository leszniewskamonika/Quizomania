<?php
include "class/User.php";
include "class/DBConnection.php";
include "../style/nawigacja_admin.php";


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


<div class="main-banner-login">
    <div class="row">

        <div class="col-lg-10">
            <h2>Witaj <?php print $userInfo['login'];?> w panelu administratora!</h2>
        </div>

    </div>
</div>
</div>
</div>
<section>

</section>
<footer class="footer">
    <a href="#" class="footer__logo-link">
        <img src="../images/tytul.svg" alt="Logo" class="footer__logo-image">
    </a>
</footer>
