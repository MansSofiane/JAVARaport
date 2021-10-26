<?php
session_start();
require_once("../../../../data/connstat.php");
$rqtc=$bdd->prepare("UPDATE `pays` SET `sel_pays`='0' WHERE 1");
$rqtc->execute();

?>