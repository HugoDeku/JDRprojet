<?php

class Spells{
  private $nom;
  private $description;
  private $nomMagie;


  function __construct($nom, $description="aucune", $nomMagie){
    $this->nom = $nom;
    $this->description = $description;
    $this->nomMagie = $nomMagie;
  }

  function getNom(){
    return $this->nom;
  }
  function getDescription(){
    return $this->description;
  }
  function getNomMagie(){
    return $this->nomMagie;
  }
}


 ?>
