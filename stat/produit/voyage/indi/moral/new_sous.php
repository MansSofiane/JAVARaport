<?php session_start();
require_once("../../../../../../data/connstat.php");
if ($_SESSION['login']){
}
else {
    header("Location:login.php");
}
$id_user = $_SESSION['id_user'];
$datesys=date("Y-m-d");


if (  isset($_REQUEST['raison']) &&isset($_REQUEST['adresse']) && isset($_REQUEST['tel'])   ) {
    $raison = $_REQUEST['raison'];
    $adresse = $_REQUEST['adresse'];
    $adressei = addslashes($_REQUEST['adresse']);
    $tel = $_REQUEST['tel'];
    $rqtsous = $bdd->prepare("INSERT INTO `souscripteurw`(`cod_sous`, `id_emprunteur`, `nom_sous`, `nom_jfille`, `pnom_sous`, `passport`, `datedpass`, `datefpass`, `mail_sous`, `tel_sous`, `adr_sous`, `dnais_sous`, `age`, `civ_sous`, `rp_sous`, `nb_assu`, `cod_par`, `id_user`, `cod_prof`, `cod_postal`, `autre_prof`, `quot_sous`, `sel`)  VALUES ('','NULL','$raison','NULL','NULL','NULL','NULL','NULL','NULL','$tel','$adressei',
 'NULL','null','0','0','1','NULL','$id_user','','','','','0')");
    $rqtsous->execute();

}
?>