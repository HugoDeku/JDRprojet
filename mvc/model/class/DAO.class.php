<?php
  require_once("../../model/class/Utilisateur.class.php");


class DAO{
  private $db;
  private $path = "../../BD/data.db";

  function __construct(){
    try {
      $this->db = new PDO("sqlite:".$this->path);
      if(!$this->db){
        die ("Database error: cannot open '".$this->db."'\n");
      }
    } catch (\Exception $e) {
      die("PDO Error :".$e->getMessage()." '".$this->db."'\n");
    }
  }

  //Fonction Utilisateur
  function getAllUsers(){
    $req = $this->db->prepare("SELECT * FROM COMPTE");

    $req->execute();
    
    $recup = $req->fetchAll(PDO::FETCH_CLASS, "Utilisateur");
    return $recup;
  }
  function getUserByName($name){
    $req = "SELECT * FROM Compte WHERE pseudo = '$name'";
    $lancement = $this->db->query($req);
    $recup = $lancement->fetchAll(PDO::FETCH_CLASS, "Utilisateur");
  }
  function verifMdp($pseudo, $mdp){
    $req = "SELECT mdp FROM Compte WHERE pseudo = 'pseudo'";
    $lancement = $this->db->query($req);
    $recup = $lancement->fetchAll(PDO::FETCH_COLUMN, 0);
    return $recup[0] == $mdp;
  }
}

 ?>
