<?php session_start();
require_once("../../../data/connstat.php");
require_once("../../../data/conn4.php");//bddcash
require_once("../../../data/conn5.php");//bddaga
require_once("../../../data/conn6.php");//bdd2a
require_once("../../../data/conn7.php");//bddsalama
require_once("../../../data/connAGB.php");//bddagb
require_once("../../../data/connBNA.php");//bddbna
require_once("../../../data/connALS.php");//bddalsalam

if ($_SESSION['login']){
}
else {
    header("Location:index.html");
}

if (isset($_REQUEST['code'])) {
    $code = $_REQUEST['code'];

    $rqtte= "SELECT id_user, agence FROM `utilisateurs`  WHERE type_user='user'    ORDER BY `type_user`,`agence` limit 0,10";

    $redondance = "Tout";

/*
    <option value="0">Tout</option>
                <option value="1">2A</option>
                <option value="2">AGA</option>
                <option value="3">AGB</option>
                <option value="4">ALSALAM-BANK</option>
                <option value="5">BNA</option>
                <option value="6">CASH</option>
                <option value="7">SALAMA</option>




require_once("../../../data/conn4.php");//bddcash
require_once("../../../data/conn5.php");//bddaga
require_once("../../../data/conn6.php");//bdd2a
require_once("../../../data/conn7.php");//bddsalama
require_once("../../../data/connAGB.php");//bddagb
require_once("../../../data/connBNA.php");//bddbna
require_once("../../../data/connALS.php");//bddalsalam
 */
    $rqt="";

switch ($code) {

    case 1:
    {
        $rqt=$bdd2a->prepare($rqtte);

        break;
    }
    case 2:
    {
        $rqt=$bddaga->prepare($rqtte);
        break;
    }
    case 3:
    {
        $rqt=$bddagb->prepare($rqtte);
        break;
    }
    case 4:
    {
        $rqt=$bddalsalam->prepare($rqtte);
        break;
    }
    case 5:
    {
        $rqt=$bddbna->prepare($rqtte);
        break;
    }
    case 6:
    {
        $rqt=$bddcash->prepare($rqtte);
        break;
    }
    case 7:
    {
        $rqt=$bddsalama->prepare($rqtte);
        break;
    }
}
   // $rqt=$bddaga->prepare($rqtte);

    $rqt->execute();

                     $rep='<select id="user">';
                     $rep=$rep.' <option value="0">Tout</option>';


                while ($row_res=$rqt->fetch()){
                    if($redondance!=$row_res['agence']){?>
                        <option value="<?php  echo $row_res['id_user']; ?>"><?php  echo $row_res['agence']; ?></option>
                        <?php $redondance=$row_res['agence'];}
                }

        $rep=$rep." </select>";
        echo $rep;


}


?>