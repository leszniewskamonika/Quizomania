<?php
//include "class/DBConnection.php";
//include "class/Question.php";
//$db = new DBConnection();
//$db = $db->returnConnection();
//
//
//function buildColname($answer){
//    $suffix = strtolower($answer);
//    return "answer_{$suffix}";
//}
//
//
//$query = "SELECT * FROM qanda ";
//$result = $db->query($query) or die($db->error);
//
//$data = mysqli_fetch_all($result, MYSQLI_ASSOC);
//
//foreach ($data as $n => $row){
//
//    $build_colname = buildColname($row["correct_answer"]);
//    $new_answer = mysqli_real_escape_string($db, $row[$build_colname]);
//    $id = $row["id"];
//    $update_query = "UPDATE qanda SET correct_answer = \"{$new_answer}\" WHERE id = {$id} LIMIT 1";
//    $db->query($update_query) or die($db->error);
//
//}
//
//
//
//
