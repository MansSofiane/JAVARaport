<?php
session_start();
require_once("../../../../data/connstat.php");
//on recupere le code du pays
if ( isset($_REQUEST['code'])){
	$code = $_REQUEST['code'];
$rqtc=$bdd->prepare("DELETE FROM `capital` WHERE `cod_cap`='$code'");
$rqtc->execute();
}

?>