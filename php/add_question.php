<?php
include "class/Question.php";
include "class/DBConnection.php";
include "class/User.php";
include "../style/nawigacja_admin.php";


$user = new User();
if ($user->getSession()===FALSE) {
    header("location:/../index.php");
}

$question = new Question();

$status = '';

$errors = array();
//If our form has been submitted.
if(isset($_POST['submit'])){
    extract($_POST);
    //Get the values of our form fields.
    $uid_category = isset($uid_category) ? $uid_category : null;
    $uquestion = isset($uquestion) ? $uquestion : null;
    $uanswerA = isset($uanswerA) ? $uanswerA: null;
    $uanswerB = isset($uanswerB) ? $uanswerB : null;
    $uanswerC  = isset($uanswerC) ? $uanswerC : null;
    $ucorrect_answer = isset($ucorrect_answer) ? $ucorrect_answer : null;

    if(strlen(trim($uid_category)) === 0){
        $errors[] = "Musisz wprowadzić kategorie pytania!";
    }
    if(strlen(trim($uquestion)) === 0){
        $errors[] = "Musisz wprowadzić pytanie!";
    }
    if(strlen(trim($uanswerA)) === 0){
        $errors[] = "Musisz wprowadzić odpowiedź A!";
    }
    if(strlen(trim($uanswerB)) === 0){
        $errors[] = "Musisz wprowadzić odpowiedź B";
    }
    if(strlen(trim($uanswerC)) === 0){
        $errors[] = "Musisz wprowadzić odpowiedź C!";
    }
    if(strlen(trim($ucorrect_answer)) === 0){
        $errors[] = "Musisz wprowadzić poprawną odpowiedź!";
    }

    //If our $errors array is empty, we can assume that everything went fine.
    if(empty($errors)){
        $db = new DBConnection();
        $db = $db->returnConnection();
        //insert data into database.
        $question->setId_category(mysqli_real_escape_string($db, $uid_category));
        $question->setQuestion(mysqli_real_escape_string($db, $uquestion));
        $question->setAnswerA(mysqli_real_escape_string($db, $uanswerA));
        $question->setAnswerB(mysqli_real_escape_string($db, $uanswerB));
        $question->setAnswerC(mysqli_real_escape_string($db, $uanswerC));
        $question->setCorrect_answer(mysqli_real_escape_string($db, $ucorrect_answer));
        $addQuestion = $question->addQuestion();
        if ($addQuestion) {
            $status = "<div class='alert alert-success' style='text-align:center'>Pytanie pomyślnie dodano, teraz administrator musi je zaakceptować<a href='../index.php'>Kliknij tutaj</a> żeby przejść do strony głównej</div>";
        } else {
            $status = "<div class='alert alert-danger' style='text-align:center'>Dodawanie nieudane. Spróbuj ponownie.</div>";
        }
    }
}

?>
<section class="main-banner-add_question">


    
    <div class="row">
        <div class="col-lg-12"><?php echo $status; ?></div>
    </div>
    
    <div class="row"><section class="forma"></section>
        <div class="col-lg-12"><ul><?php
                foreach ($errors as $value) {
                    echo '<li style="color: red; font-size: 16px;">'.$value.'</li>' ;
                }
                ?></ul></div>

            <form action="" method="post" name="add" enctype="multipart/form-data">
                <div>
                    <label for="id_category"><h3 style="color: white">Kategoria pytania</label>
                    <select name="uid_category">
                        <option value="1">GEOGRAFIA</option>
                        <option value="2">HISTORIA</option>
                        <option value="3">PRL</option>
                        <option value="4">JĘZYK</option>
                        <option value="5">PRZYRODA</option>
                        <option value="6">KSIĄŻKA</option>
                        <option value="7">FILM</option>
                        <option value="8">LOGIKA</option>
                    </select>
                </div>
            
                <div>
                    
                    <h3 style="color: white">Pytanie:</h3><textarea name="uquestion" rows="5" cols="40" class="form-control"></textarea>
                    </select>
                </div>
                <div>
                    <br>
                    <h3 style="color: white">Odpowiedź A:</h3><textarea name="uanswerA" rows="5" cols="40" class="form-control"></textarea>
                    </select>
                </div>
                <div>
                    <br>
                    <h3 style="color: white">Odpowiedź B:</h3><textarea name="uanswerB" rows="5" cols="40" class="form-control"></textarea>
                    </select>
                </div>
                <div>
                    <br>
                    <h3 style="color: white">Odpowiedź C:</h3><textarea name="uanswerC" rows="5" cols="40" class="form-control"></textarea>
                    </select>
                </div>
                <div>
                    <br>
                    <h3 style="color: white">Poprawna odpowiedź: <select name="ucorrect_answer">
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                    </select>
                </div>
                <br>
                <div class="form-group">
                    <button type="submit" name="submit" >Dodaj pytanie</button>
                </div><br>
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


