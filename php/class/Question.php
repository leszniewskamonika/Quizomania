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
}
?>