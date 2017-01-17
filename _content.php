<?php
$page = ISSET($_GET['page']) ? $_GET['page'] : "";
switch($page){
	case 'home':
		include "page/home.php";
	break;
	
	case 'sambungan':
		include "page/sambungan.php";
	break;
	case 'peta':
		include "page/peta.php";
	break;
	
	
	default:
		include "page/home.php";	
	break;
	
	
}

?>