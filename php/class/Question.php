<?php
//include "DBConnection.php";

class Question
{
    protected $db;
    private $_id;
    private $_id_category;
    private $_question;
    private $_answerA;
    private $_answerB;
    private $_answerC;
    private $_correct_answer;

    public function setID($id) {
        $this->_id = $id;
    }
    public function setId_category($id_category) {
        $this->_id_category= $id_category;
    }
    public function setQuestion($question) {
        $this->_question= $question;
    }
    public function setAnswerA($answerA) {
        $this->_answerA = $answerA;
    }
    public function setAnswerB($answerB) {
        $this->_answerB = $answerB;
    }
    public function setAnswerC($answerC) {
        $this->_answerC = $answerC;
    }
    public function setCorrect_answer($correct_answer) {
        $this->_correct_answer = $correct_answer;
    }

    public function __construct() {
        $this->db = new DBConnection();
        $this->db = $this->db->returnConnection();
    }

    // Assent question method
    public function updateStatusWhenQuestionAssent(){
        $query = 'UPDATE qanda SET assent = "1" WHERE id ="'.$this->_id .'"';
        $result = $this->db->query($query) or die($this->db->error);
        return true;
    }


    public function getQuestionInfo(){
        $query = "SELECT * FROM qanda WHERE id = '".$this->_id."'";
        $result = $this->db->query($query) or die($this->db->error);
        $count_row = $result->num_rows;
        if ($count_row == 1) {
            $question_data = $result->fetch_array(MYSQLI_ASSOC);
            return $question_data;
        }else{
            return false;
        }
    }

    public function getQuestionNoAssent()
    {
        $query = "SELECT * FROM qanda WHERE assent = '0'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rowi[] = $row;
        }
        if (!empty($rowi))

            return $rowi;

    }

    // Add Question Method
    public function addQuestion()
    {
        $query = 'INSERT INTO qanda SET 
            id_category="' . $this->_id_category . '",
            question="' . $this->_question . '",
            answer_a="' . $this->_answerA . '",
            answer_b="' . $this->_answerB . '",
            answer_c="' . $this->_answerC . '",   
            correct_answer="' . $this->_correct_answer . '"';
        $result = $this->db->query($query) or die($this->db->error);
        return true;
    }

    public function getQuestionAssentGeografia()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '1'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rows[] = $row;
        }
        if (!empty($rows))

            return $rows;

    }

    public function getQuestionAssentHistoria()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '2'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rowh[] = $row;
        }
        if (!empty($rowh))

            return $rowh;
    }

    public function getQuestionAssentPrl()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '3'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rowp[] = $row;
        }
        if (!empty($rowp))

            return $rowp;
    }

    public function getQuestionAssentJezyki()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '4'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rowj[] = $row;
        }
        if (!empty($rowj))

            return $rowj;
    }

    public function getQuestionAssentPrzyroda()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '5'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rowpr[] = $row;
        }
        if (!empty($rowpr))

            return $rowpr;
    }

    
    public function getQuestionAssentKsiazka()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '6'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rowk[] = $row;
        }
        if (!empty($rowk))

            return $rowk;
    }

    public function getQuestionAssentFilm()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '7'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rowf[] = $row;
        }
        if (!empty($rowf))

            return $rowf;
    }

    
    public function getQuestionAssentLogika()
    {
        $query = "SELECT * FROM qanda WHERE assent = '1' AND id_category = '8'";
        $result = $this->db->query($query) or die($this->db->error);
        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $rowl[] = $row;
        }
        if (!empty($rowl))

            return $rowl;
    }


}
?>