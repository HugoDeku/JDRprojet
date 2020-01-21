<?php
  require_once("../../model/class/DAO.class.php");
  require_once("../../model/class/Utilisateur.class.php");

  $dao = new DAO();

  var_dump($dao->getAllUsers());

 ?>
