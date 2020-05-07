<?php

class User
{
    protected $db;
    private $_id;
    private $_login;
    private $_haslo;
    private $_rola;

    private $_userID;
    private $_name;
    private $_username;
    private $_password;


    public function getRola()
    {
        return $this->_rola;
    }

    public function getId()
    {
        return $this->_id;
    }

    public function setID($id) {
        $this->_id = $id;
    }

    public function setEmail($email) {
        $this->_email = $email;
    }
    public function setLogin($login) {
        $this->_login = $login;
    }
    public function setHaslo($haslo)
    {
        //hash password when filling user instance
        $this->_haslo = $haslo;
    }
    public function setRola($rola) {
        $this->_rola = $rola;
    }

    public function __construct() {
        $this->db = new DBConnection();
        $this->db = $this->db->returnConnection();
    }


    // User registration Method
    public function userRegistration() {
        $haslo_hash = $this->hash($this->_haslo);
        var_dump($haslo_hash);
        $query = 'SELECT * FROM user WHERE login="'.$this->_login.'" OR email="'.$this->_email.'"';
        $result = $this->db->query($query) or die($this->db->error);            
        $count_row = $result->num_rows;         
        if($count_row == 0) {
            $query = 'INSERT INTO user SET 
            email="'.$this->_email.'",
            login="'.$this->_login.'",   
            password="'.$haslo_hash.'", 
            role="0"';
            $result = $this->db->query($query) or die($this->db->error);                
            return true;
        } else {
            return false;
        }
    }

    // User Login Method
    public function doLogin() {
        $query = 'SELECT login,id,role, password from user WHERE email="'.$this->_login.'" or login="'.$this->_login.'"';
        $result = $this->db->query($query) or die($this->db->error);
        $user_data = $result->fetch_array(MYSQLI_ASSOC);
//        print_r($user_data);
        $count_row = $result->num_rows;

        if ($count_row == 1) {
            if (!empty($user_data['password']) && $this->verifyHash($this->_haslo, $user_data['password'])) {
                $_SESSION['login'] = TRUE;
                $_SESSION['id'] = $user_data['id'];
                $_SESSION['rola'] = $user_data['role'];
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }


    // get User Information
    public function getUserInfo() {
        $query = "SELECT id, login, email, role FROM user WHERE id = ".$this->_id;
        $result = $this->db->query($query) or die($this->db->error);
        $user_data = $result->fetch_array(MYSQLI_ASSOC);
        return $user_data;
    }

    
    //get Session 
    public function getSession() {
        if(!empty($_SESSION['login']) && $_SESSION['login']==TRUE) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    // logout method
    public function logout() {
        $_SESSION['login'] = FALSE;
        unset($_SESSION);
        session_destroy();
    }
 
        // password hash
    public function hash($password) {
        $hash = password_hash($password, PASSWORD_DEFAULT);
        return $hash;
    }
 
    // password verify
    public function verifyHash($password_from_form, $password_from_db) {
        if (password_verify($password_from_form, $password_from_db)) {
            return TRUE;
        } else {
            return FALSE;
        }
    }


}
?>