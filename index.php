<?php
session_start();
include "class/class.db.php";
include "class/function.php";
$db = new db();
?>

<html>
<head>
<title><?php include "_title.php"; ?></title>
<link rel="Favicon Icon" href="img/logountan.png">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="plugins/lightbox/lightbox.css" />
<link rel="stylesheet" type="text/css" href="plugins/sitemapstyler/sitemapstyler.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>

</head>
<body>
<div class="header-wrap">
<div class="header">
<div class="login">
<?php date_default_timezone_set('Asia/Jakarta'); echo tanggalIndo(date('Y-m-d'),'l, j F Y');?> | <a href="http://localhost:8000/admin" target="_blank"><?php echo (ISSET($_SESSION['admin']['username'])) ? "HALAMAN ADMIN" : "LOGIN"; ?></a>
</div>

<img src="img/logountan.png">
<h1>Sistem Informasi Geografis</h1>
<h3>Penyebaran <i>wifi.id</i> Kota Pontianak</h3>
</div>
</div>
<?php
$page = ISSET($_GET['page']) ? $_GET['page'] : "home";
?>
<div class="nav-wrap">
<div class="nav">
	<ul>
	<li><a href="index.php?page=home" class="<?php echo ($page=='home') ? "active" : ""; ?>">HOME</a></li>
	<li><a href="index.php?page=sambungan" class="<?php echo ($page=='sambungan') ? "active" : ""; ?>">DATA SAMBUNGAN</a></li>
	<li><a href="index.php?page=peta" class="<?php echo ($page=='peta') ? "active" : ""; ?>">PETA SAMBUNGAN</a></li>
	</ul>

</div>
</div>
<div class="content-wrap">
<div class="content">
<?php include "_content.php" ?>
</div>

<div class="footer clearfix">

<div class="footer-left">
<h3>LINK TERKAIT</h3>
<?php
$q = $db->select("tb_link");
foreach($q as $r){
	echo "<li><a href='".$r['url']."' target='_blank'>".$r['nama_link']."</a></li>";
}
?>
</div>


<div class="footer-right">
<h3>STATISTIK PENGUNJUNG</h3>
<?php include "_counter.php"; ?>
</div>


</div>

<div class="copyright">
 Copyright&copy;PRODI INFORMATIKA UNTAN
</div>


</div>

<div class="bg">
	<div class="fade"></div>
	<span class="close">&times;</span>
	<div class="modal" id="popup_content"></div>
	<div class="modal" id="popup_map"></div>
</div>

</body>


<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/ajaxupload.3.5.js"></script>
<script type="text/javascript" src="plugins/lightbox/lightbox.js"></script>
<script type="text/javascript" src="plugins/sitemapstyler/sitemapstyler.js"></script>
<?php if(ISSET($_GET['page']) && ($_GET['page']=='peta' || $_GET['page']=='sambungan' )){ ?>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCyFx3ZEGVbsHeifFlZ7EUFILjU3y7oPs4&callback=initMap"></script>
<script type="text/javascript" src="js/markerwithlabel_packed.js"></script>
<script type="text/javascript" src="js/map.js"></script>
<?php } ?>





<script type="text/javascript">
$(document).ready(function () {
	$("#q_saluran").keyup(function(event){
		if(event.keyCode == 13){
			filter_saluran();
		}
	});
	$("#q_sambungan").keyup(function(event){
		if(event.keyCode == 13){
			filter_sambungan();
		}
	});

	$("#q_peta").keyup(function(event){
		if(event.keyCode == 13){
			var q = $('#q_peta').val();
			$.ajax({
				url: "pencarian.php?q="+ q,
				cache: false,
				 beforeSend: function() {
					$('#hasil_pencarian').html('Sedang mencari...');
				},
				success: function(msg){
					$('#hasil_pencarian').html(msg);
				}
			});
		}
	});


	$('.close').click(function(){
		$('.bg').fadeOut();
		$('.modal').html();
		$('.modal').fadeOut();
	});
	$('.modal').click(function(){
		// return false;
	});
	$('.modal a').click(function(){
		// return true;
	});


	sitemapstyler('sitemap');


});
</script>
<script type="text/javascript">


function InfoSambungan(id){
	$('.modal').html('');
	$('.bg').fadeIn();
	$("#popup_content").load('detail_sambungan.php?id='+id);
	$('#popup_content').fadeIn();
}



function filter_sambungan(){
	var q=$("#q_sambungan").val();
	var kelompok = $("#kelompok").val();
	var kecamatan =$("#kecamatan").val();
	var link = "index.php?page=sambungan";
	if (kelompok !='') link = link +'&kelompok='+kelompok;
	if (kecamatan !='') link = link +'&kecamatan='+kecamatan;
	if (q !='') link = link +'&q='+q;
	window.location.href = link;
	return false;
}

function PetaSambungan(id){
	$('.bg').fadeIn();
	$('#popup_map').fadeIn();
	LoadPeta(id);
}




</script>
</html>
