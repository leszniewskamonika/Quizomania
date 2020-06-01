<?php
include "class/User.php";
include "class/DBConnection.php";
include "class/Question.php";
include "../style/nawigacja_admin.php";

$question = new Question();
$question_display = $question->getQuestionNoAssent();
//var_dump($question_display);
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

if(isset($_POST['submit']))
{
$id_question = $_POST ['submit'];
$setid= $question->setID($id_question);
$assent_question=$question ->updateStatusWhenQuestionAssent();
header('location:assent.php');
}

?>


<div class="main-banner-login">
    <div class="row">

        <div class="col-lg-10">
            <h2>Pytania do zaakceptowania: </h2>

        <?php
        //var_dump($question_display);
            if (empty($question_display)){
                echo "Nie masz żadnych pytań do zaakceptowania";
            }
            else{
                foreach ($question_display as $row) {
                    $q = substr($row['question'],0,500);
                    $a = substr($row['answer_a'],0,500);
                    $b = substr($row['answer_b'],0,500);
                    $c = substr($row['answer_c'],0,500);
                    $ca = substr($row['correct_answer'],0,500);
                    $id = $row['id'];
                    echo "<div><form action='' method='POST'>";
                    echo "<p>Pytanie: $q </p>" ;
                    echo "<p>Odpowiedź A: $a</p>";
                    echo "<p>Odpowiedź B: $b</p>";
                    echo "<p>Odpowiedź C: $c</p>";
                    echo "<p>Poprawna odpowiedź: $ca</p>";
                    echo "<button type=\"submit\" name='submit' value=\"$id\">ZAAKCEPTUJ</button>";
                    echo "<br> ____________________________________________________________________________";
                    echo "</div></form>";
                }
            }
        ?>
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
