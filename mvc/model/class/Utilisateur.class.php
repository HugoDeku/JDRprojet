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
      $this->listePersonnages = $listePersonnages;
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
