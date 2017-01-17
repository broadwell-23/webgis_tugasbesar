<script type="text/javascript">
$(document).ready(function(){
	$("#paging_pencarian a").click(function(){
		var page = $(this).attr('href');
		
		$.ajax({
				url: page,
				cache: false,
				 beforeSend: function() {
					$('#hasil_pencarian').html('Sedang mencari...');
				},
				success: function(msg){
					$('#hasil_pencarian').html(msg);
				}
			});
			
			
			
		// $("#hasil_cari").load(page).fadeIn();	
		return false;
	});
});
</script>	

<?php
include("class/class.db.php");
include("class/function.php");
$db = new db();

$limit = 5;


$q="
	SELECT id_sambungan, no_pelanggan, nama_pelanggan, x, y
	FROM tb_sambungan
	WHERE (x!='' OR y!='') AND (no_pelanggan='".$_GET['q']."' OR nama_pelanggan LIKE '%".$_GET['q']."%')
";
$results = $db->run($q);
$total = count($results);

if (ISSET($_GET['hal'])) $hal = $_GET['hal']; else $hal=1;
$start = ($hal-1)*$limit;
$q.=" LIMIT $start, $limit";

$query = $db->run($q);
$jumlah = count($query);

if(count($query)>0){
	
	echo "<table class='table table-border font-small'>";
	 echo "<tr><th>No.Pel.</th><th>Nama Pelanggan</th><th>#</th></tr>";
	foreach($query as $r){
		echo "<tr>
			<td>".$r['no_pelanggan']."</td>
			<td>".$r['nama_pelanggan']."</td>
			<td><a href=javascript:zoom('".$r['id_sambungan']."')><img src='img/marker.png' title='Klik untuk tampilkan lokasi' ></a></td>
			</tr>";    
	}
	echo "</table>";
	echo "<div id='paging_pencarian'>";
	halaman($total, $limit, 2, "pencarian.php?q=".$_GET['q']."&hal=");
	echo "</div>";
}
else echo "<p>Tidak menemukan sambungan dengan kata kunci <em>'".$_GET['q']."'</em></p>";

?>
