<?php
include "class/User.php";
include "class/DBConnection.php";
include "class/Question.php";

$id_category=1;
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


//var_dump($id_question_to_quiz);
$correct_answer=array(10);
$qca=0;
foreach ($id_question_to_quiz as $row){
    $question->setID($row['id']);
    $quiz_question = $question ->getQuestionInfo();

    $q = substr($quiz_question['question'],0,500);
    $a = substr($quiz_question['answer_a'],0,500);
    $b = substr($quiz_question['answer_b'],0,500);
    $c = substr($quiz_question['answer_c'],0,500);
    $ca = substr($quiz_question['correct_answer'],0,500);
    $id = $quiz_question['id'];
    echo "<div><form action='' method='POST'>";
    echo "<p>Pytanie: $q </p>" ;
    echo "<input type='radio' name='$id' id='A'>A: $a</input><br>";
    echo "<input type='radio' name='$id' id='B'>B: $b</input><br>";
    echo "<input type='radio' name='$id' id='C'>C: $c</input></select>";
    echo "<p>Poprawna odpowiedź: $ca</p>";
    $correct_answer[$qca] = $ca;
    $qca++;
    echo "<br> ____________________________________________________________________________";

}
echo "<br> <button type=\"submit\" name=\"submit\" >Wyślij test</button></div></form>";


if(isset($_POST['submit'])){
    extract($_POST);
    var_dump($correct_answer);
}