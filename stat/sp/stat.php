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
$id_user = $_SESSION['id_user'];

?>
<div id="content-header">
  <div id="breadcrumb"> <a class="tip-bottom"><i class="icon-signal"></i> Statistiques</a><a class="current">Production</a></div>
</div>
<div class="row-fluid">
  <div class="span12">
    <div class="widget-box">

      <div class="widget-content nopadding">
        <form class="form-horizontal">
          <div class="control-group">
            <label class="control-label">Reseaux *:</label>
            <div class="controls">
              <select id="reseau" onchange="agence(this)">
                <option value="0">Tout</option>
                <option value="1">2A</option>
                <option value="2">AGA</option>
                <option value="3">AGB</option>
                <option value="4">ALSALAM-BANK</option>
                <option value="5">BNA</option>
                <option value="6">CASH</option>
                <option value="7">SALAMA</option>


              </select>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">Agence *:</label>
            <div class="controls">
              <select id="user">

              </select>
            </div>
          </div>
          <div class="control-group">

            <div class="controls">
              <div data-date-format="dd/mm/yyyy">
                <input type="text" class="date-pick dp-applied"  id="date1" placeholder="Du 01/01/2000 (*)"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" class="date-pick dp-applied"  id="date2" placeholder="Au 01/01/2000 (*)"/>
              </div>
            </div>

        </form>
      </div>
    </div>
  </div>

  <div class="widget-box">

    <ul class="quick-actions">
      <li class="bg_lh"> <a onClick="sprod('1')"> <i class="icon-bar-chart"></i>A-Voyage</a> </li>
      <li class="bg_lb"> <a onClick="sprod('6')"> <i class="icon-bar-chart"></i>TD</a> </li>
      <li class="bg_ly"> <a onClick="sprod('7')"> <i class="icon-bar-chart"></i>ADE</a> </li>
      <li class="bg_lg"> <a onClick="sprod('2')"> <i class="icon-bar-chart"></i>I-Accident</a> </li>
      <li class="bg_lw"> <a onClick="sprod('5')"> <i class="icon-bar-chart"></i>C-Sein (Warda)</a> </li>
      <li class="bg_lo"> <a onClick="sprod('9')"> <i class="icon-bar-chart"></i>Groupe</a> </li>
      <li class="bg_lm"> <a onClick="sprod('10')"> <i class="icon-bar-chart"></i>PTA</a> </li>
      <li class="bg_lv"> <a onClick="sprod('100')"> <i class="icon-bar-chart"></i>Production globale</a> </li>
      <li class="bg_ln"> <a onClick="sprod('101')"> <i class="icon-bar-chart"></i>Production par Agence</a> </li>
    </ul>
  </div>
  <script language="JavaScript">initdate();</script>
  <script language="JavaScript">

    function agence(choix)
    {
      choix=document.getElementById("reseau").value;


      if (window.XMLHttpRequest) {
        xhr = new XMLHttpRequest();
      }
      else if (window.ActiveXObject)
      {
        xhr = new ActiveXObject("Microsoft.XMLHTTP");
      }



      xhr.onreadystatechange =function()
      {

        if (this.readyState == 4 && this.status == 200)
        {
          leselect = xhr.responseText;

          document.getElementById("user").innerHTML =leselect;


        }


      };

      // document.getElementById("btnsous").disabled=true;
      xhr.open("POST", "sp/agence.php?code="+choix, true);
      //  xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
      xhr.send();






    }





    function sprod(code){
      var date1=document.getElementById("date1");
      var date2=document.getElementById("date2");
      var user=document.getElementById("user").value;
      if(verifdate1(date1) && verifdate1(date2)) {
        var d1 = dfrtoen(date1.value);
        var d2 = dfrtoen(date2.value);
        if (code != 100&& code != 101 ) {
          window.open('sortie/SS-Recapitulatif/' + d1 + '/' + code + '/' + user + '/' + d2, 'Devis', 'height=600, width=800, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no');
        }
        else
        {if( code != 101 ){
          window.open('sortie/SS-Recapitulatifg/' + d1 + '/' + code  + '/' + user + '/' + d2, 'Devis', 'height=600, width=800, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no');
        }else
        {
          window.open('sortie/SS-Recapitulatifgag/' + d1 + '/' + code  + '/' + user + '/' + d2, 'Devis', 'height=600, width=800, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no');
        }
        }
      }
    }

  </script>