<?php
include "class/Question.php";
include "class/DBConnection.php";
include "class/User.php";

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
        //insert data into database.
        $question->setId_category($uid_category);
        $question->setQuestion($uquestion);
        $question->setAnswerA($uanswerA);
        $question->setAnswerB($uanswerB);
        $question->setAnswerC($uanswerC);
        $question->setCorrect_answer($ucorrect_answer);
        $addQuestion = $question->addQuestion();
        if ($addQuestion) {
            $status = "<div class='alert alert-success' style='text-align:center'>Pytanie pomyślnie dodano, teraz administrator musi je zaakceptować<a href='../index.php'>Kliknij tutaj</a> żeby przejść do strony głównej</div>";
        } else {
            $status = "<div class='alert alert-danger' style='text-align:center'>Dodawanie nieudane. Spróbuj ponownie.</div>";
        }
    }
}

?>

Dodawanie pytania do bazy danych

    <div class="row">
        <div class="col-lg-12"><?php echo $status; ?></div>
    </div>
    <div class="row">
        <div class="col-lg-12"><ul><?php
                foreach ($errors as $value) {
                    echo '<li style="color: red; font-size: 13px;">'.$value.'</li>' ;
                }
                ?></ul></div>

            <form action="" method="post" name="add" enctype="multipart/form-data">
                <div>
                    <label for="id_category">Kategoria pytania</label>
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
            <br>
                <div>
                    <br>
                    Pytanie:<br> <textarea name="uquestion" rows="10" cols="30" class="form-control"></textarea>
                    </select>
                </div>
                <div>
                    <br>
                    Odpowiedź A:<br> <textarea name="uanswerA" rows="10" cols="30" class="form-control"></textarea>
                    </select>
                </div>
                <div>
                    <br>
                    Odpowiedź B:<br> <textarea name="uanswerB" rows="10" cols="30" class="form-control"></textarea>
                    </select>
                </div>
                <div>
                    <br>
                    Odpowiedź C:<br> <textarea name="uanswerC" rows="10" cols="30" class="form-control"></textarea>
                    </select>
                </div>
                <div>
                    <br>
                    Poprawna odpwoiedź: <select name="ucorrect_answer">
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                    </select>
                </div>
                <br>
                <div class="form-group">
                    <button type="submit" name="submit" >Dodaj pytanie</button>
                </div>
            </form>
        <a href="../index.php">Wróć na stronę główną</a>
        </div>
    </div>
</div>
