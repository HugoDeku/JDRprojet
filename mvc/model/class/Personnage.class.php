<?php

  class Personnage
  {

    private $descriptionPhysique;
    private $statistiques;

    function __construct($descriptionPhysique,$statistiques)
    {
      $this->descriptionPhysique = $descriptionPhysique;
      $this->statistiques = $statistiques;
    }

    public function getDescriptionPhysique(){
      return $this->descriptionPhysique;
    }

    public function getStatistiques(){
      return $this->statistiques;
    }

    //PARTIE PHYSIQUE

    public function getPrenom(){
      return getDescriptionPhysique()['PRE'];
    }

    public function getNom(){
      return getDescriptionPhysique()['NOM'];
    }

    public function getTaille(){
      return getDescriptionPhysique()['TAI'];
    }

    public function getPoids(){
      return getDescriptionPhysique()['PDS'];
    }

    public function getMagie(){
      return getDescriptionPhysique()['MAG'];
    }



    //PARTIE STATISTIQUES

    public function getPv(){
      return getStatistiques()['PV'];
    }

    public function getPm(){
      return getStatistiques()['PM'];
    }







  }





 ?>
