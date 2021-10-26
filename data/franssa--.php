<?php 
try

{

    //$bdd = new PDO('mysql:host=localhost;dbname=sala;charset=utf8', 'root', '');
    $bdd = new PDO('mysql:host=127.0.0.1;dbname=intranetbna', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}

catch (Exception $e)

{

        die('Erreur : ' . $e->getMessage());

}
function generer_token($nom = '')
{$token = uniqid(rand(), true);
    $_SESSION[$nom.'_token'] = $token;
    $_SESSION[$nom.'_token_time'] = time();
    return $token;
}
function verifier_token($temps, $referer, $nom = '',$tok)
{
if(isset($_SESSION[$nom.'_token']) && isset($_SESSION[$nom.'_token_time']))
    if($_SESSION[$nom.'_token'] == $tok)
        if($_SESSION[$nom.'_token_time'] >= (time() - $temps))
            if($_SERVER['HTTP_REFERER'] == $referer)
                return true;
return false;

}
function crypte($x){
   $crypted = '8712346534'.$x ;
   return $crypted;
}
function age($datnais,$dateech)
{
  $d1 = strtotime($datnais);
  $d0 = strtotime($dateech);
 // echo strftime('%a %d %b %Y', $d).' > ';
  return (int) (($d0- $d1) / 3600 / 24 / 365.242);
}
function dure_en_jour($datnais,$dateech)
{
 date_default_timezone_set('UTC');
	$d1 = strtotime($datnais);
	$d0 = strtotime($dateech);
	// echo strftime('%a %d %b %Y', $d).' > ';
	return (int) (($d0- $d1) / 3600 / 24 );

}
 ?> 

