<?php
$page = ISSET($_GET['page']) ? $page = $_GET['page'] : $page="Beranda";
switch($page){
	case "Home":
		echo "Home | TEMPLATE SIG-LANJUTAN-2016";
	break;
	
	case "sambungan":
		echo "Sambungan | TEMPLATE SIG-LANJUTAN-2016";
	break;	
	
	case "peta":
		echo "Peta | TEMPLATE SIG-LANJUTAN-2016";
	break;	
	
	
	default:
		echo "Home | TEMPLATE SIG-LANJUTAN-2016";
	break;
}
?>