<?php
include("class/class.db.php");
include("class/function.php");
$db = new db();
$q ="
	SELECT tb_sambungan.*, tb_kecamatan.*, tb_desa.nama_desa
	FROM tb_sambungan
	LEFT JOIN tb_kecamatan ON tb_sambungan.id_kecamatan = tb_kecamatan.id_kecamatan
	LEFT JOIN tb_desa ON tb_sambungan.id_desa = tb_sambungan.id_desa
	WHERE tb_sambungan.id_sambungan = '".$_GET['id']."'
";
$sambungan = $db->run($q);
$foto = (!empty($sambungan[0]['foto'])) ? $sambungan[0]['foto'] : "noimage.jpg";
?>
<script type="text/javascript">
$(document).ready(function() {
	//Default Action
	$(".tab_modal").hide(); //Hide all content
	$("#modal-tab li a:first").addClass("active").show(); //Activate first tab
	$(".tab_modal:first").show(); //Show first tab content
	//On Click Event
	$("#modal-tab li a").click(function(){
		$("#modal-tab li a").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_modal").hide(); //Hide all tab content
		var activeTab = $(this).attr("href"); //Find the rel attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active content
		return false;
	});	
});
</script>
<ul id="modal-tab">
<li><a href="#tab_info">INFORMASI UMUM</a></li>
</ul>
<div id="tab_info" class="tab_modal">
<table class="table table-border">
<tr>
<td width="100px" class="text-right bold">No Pelanggan</td>
<td><?php echo $sambungan[0]['no_pelanggan']; ?> </td>
<td width="40%" rowspan="12"><a href="galeri/<?php echo $foto; ?>" rel="lightbox"><img src="thumb/<?php echo $foto; ?>" width="400px"></a></td>
</tr>
<tr><td width="100px" class="text-right bold">Nama Pelanggan</td><td><?php echo $sambungan[0]['nama_pelanggan']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Titik GPS</td><td><?php echo $sambungan[0]['titik_gps']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Alamat</td><td><?php echo $sambungan[0]['alamat']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Desa</td><td><?php echo $sambungan[0]['nama_desa']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Kecamatan</td><td><?php echo $sambungan[0]['nama_kecamatan']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Kabupaten</td><td><?php echo $sambungan[0]['kabupaten']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Status</td><td><?php echo $sambungan[0]['status']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Kelompok</td><td><?php echo $sambungan[0]['kelompok']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Latitude</td><td><?php echo $sambungan[0]['x']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Longitude</td><td><?php echo $sambungan[0]['y']; ?> </td></tr>
<tr><td width="100px" class="text-right bold">Update Data</td><td><?php echo $sambungan[0]['update_data']; ?> </td></tr>
</table>
</div>


