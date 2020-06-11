<?php


class Ranking
{
    public function __construct() {
        $this->db = new DBConnection();
        $this->db = $this->db->returnConnection();
    }

    public function addScore($id,$score){
        $query = "UPDATE ranking SET points = points +{$score} , max_points = max_points+10 WHERE id_user={$id}";
        $result = $this->db->query($query) or die($this->db->error);

    }

    public function searchUserInRanking ($id){
        $query = "SELECT * FROM ranking WHERE id_user = {$id}";
        $result = $this->db->query($query) or die($this->db->error);
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        if (!empty($data)){
            return true;
        }
        else{
            return false;
        }
    }

    public function addUserToRanking($id){
        $query = "INSERT INTO ranking SET id_user={$id}";
        $result = $this->db->query($query) or die($this->db->error);
    }

    public function convertToProcent($id){
        $query = "SELECT * FROM ranking WHERE id_user={$id}";
        $result = $this->db->query($query) or die($this->db->error);
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        $data = $data[0]; // wyciagnij pierwszy wiersz
        $a = intval($data["points"], 10);
        $b = intval($data["max_points"], 10);
        if($b == 0){
            return "Database error";
        }
        $procent = ($a/$b)*100;
        return "{$procent}%";
    }

    public function rankingInfo(){
        $query = "SELECT * FROM ranking ORDER BY max_points DESC, points DESC";
        $result = $this->db->query($query) or die($this->db->error);
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        return $data;
    }
}
?>