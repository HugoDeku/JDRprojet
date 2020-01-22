<?php

  class Utilisateur{

    private $pseudo;
    private $mdp;
    private $droit;
    private $listePersonnages;

    function __construct($pseudo, $mdp, $droit = "aucun" ,$listePersonnages = NULL)
    {
      $this->pseudo = $pseudo;
      $this->droit = $droit;
      if($listePersonnages != NULL){
        $this->listePersonnages = $listePersonnages;
      }else{
        $this->listePersonnages = array();
      }
      
    }

    public function getPseudo()
    {
      return $this->pseudo;
    }

    public function getListePersonnages()
    {
      return $this->listePersonnages;
    }

    public function getDroit()
    {
      return $this->droit;
    }

    public function addPersonnage(Personnage $personnage)
    {

    }


  }





 ?>
