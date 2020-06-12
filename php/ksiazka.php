<html>
<head>
<link href="../css/input-group mb-3.css" rel="stylesheet">
</head>

<?php
include "class/User.php";
include "class/DBConnection.php";
include "class/Question.php";
include "class/Ranking.php";

$id_category=6;
$question = new Question();
$question->setId_category($id_category);
$question_display = $question->getQuestionFromCategory();
//var_dump($question_display);

$user = new User();
if(!empty($_SESSION['id'])){
    $uid = $_SESSION['id'];
}
if ($user->getSession()===FALSE) {
    header("location:/../index.php");
}
$user->setID($uid);
$userInfo = $user->getUserInfo();

//ilość elementów w tablicy = ilości pytań z danej kategorii
$length_array = count($question_display);
//var_dump($length_array);

//losowanie 10 randomowych liczb
$random = $question ->random_numbers(0,$length_array-1,10);
//var_dump($random);

//wyciąganie "losowych" numerów id pyatń do quizu
$id_question_to_quiz = array(10);
for($i=0; $i<10;$i++){
    $a=$random[$i];
    $id_question_to_quiz[$i]=$question_display[$a];
}

echo "<form action='' method='POST'>";
//var_dump($id_question_to_quiz);
$questions_ids = [];
foreach ( $id_question_to_quiz as $n => $row){
    $question->setID($row['id']);
    $quiz_question = $question ->getQuestionInfo();

    $q = substr($quiz_question['question'],0,500);
    $a = substr($quiz_question['answer_a'],0,500);
    $b = substr($quiz_question['answer_b'],0,500);
    $c = substr($quiz_question['answer_c'],0,500);
    $ca = substr($quiz_question['correct_answer'],0,500);
    $id = $quiz_question['id'];
    echo "<div>";
    echo "<label>Pytanie: $q </label><br><br>" ;
    echo "<input type='radio' name='$id' value='$a' required><label>A: $a</label><br></input><br>";
    echo "<input type='radio' name='$id' value='$b'><label>B: $b</label><br></input><br>";
    echo "<input type='radio' name='$id' value='$c'><label>C: $c</label><br></input><br>";
    //echo "<p>Poprawna odpowiedź: $ca</p>";

    array_push($questions_ids, $id);
    echo "<br><hr></div>";

}

$serialized_question_ids = serialize($questions_ids);

echo "<input type='hidden' name='questions_ids' value='$serialized_question_ids' hidden></input>";
echo "<br> <button type=\"submit\" name=\"submit\" style='font-size: 120%'>Wyślij test</button></div></form>";


if(isset($_POST['submit'])){
    $answers_ids = unserialize($_POST["questions_ids"]);
    $pkt=0;
    foreach ( $answers_ids as $single_answer_id ) {
        //echo $_POST[$single_answer_id];
        $question -> setID($single_answer_id );
        $correct_answer = $question ->getQuestionInfo();

        if (strcmp($correct_answer['correct_answer'],$_POST[$single_answer_id]) === 0) {
            $pkt++;
        }
    }

    $UserInRanking = new Ranking();
    if ($UserInRanking->searchUserInRanking($uid) == false ){
        $UserInRanking->addUserToRanking($uid);
        $UserInRanking->addScore($uid,$pkt);
    }
    else{
        $UserInRanking->addScore($uid,$pkt);
    }
    echo "<script> alert(\"Zdobyłeś {$pkt}/10 punktów.\") </script>";
}