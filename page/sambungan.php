<div class="breadcrumb">
<span>Home</span><span class="divider">/</span><a href="index.php?page=sambungan">Data Sambungan</a>
</div>



<div class="title">
<h3>DATA SAMBUNGAN</h3>
</div>

<div class="filter inline">
<u>Tampil Berdasarkan</u>
<label>Kelompok Sambungan:</label>
<select id="kelompok" class="input" onchange="javascript:filter_sambungan()">
<option value="">Semua Kelompok Sambungan</option>
<?php
	$kelompoks = $db->run("SELECT kelompok FROM tb_sambungan GROUP BY kelompok ORDER BY kelompok DESC");
	foreach($kelompoks as $kelompok){
		if(ISSET($_GET['kelompok']) && $_GET['kelompok']==$kelompok['kelompok']) $s="selected"; else $s="";
		echo "<option value='".$kelompok['kelompok']."' ".$s.">".$kelompok['kelompok']."</option>";
	}
?>
</select>


<label>Kecamatan:</label>
<select id="kecamatan" class="input" onchange="javascript:filter_sambungan()">
<option value="">Semua Kecamatan</option>
<?php
	$kecamatans = $db->run("SELECT id_kecamatan, nama_kecamatan FROM tb_kecamatan GROUP BY nama_kecamatan ORDER BY nama_kecamatan DESC");
	foreach($kecamatans as $kecamatan){
		if(ISSET($_GET['kecamatan']) && $_GET['kecamatan']==$kecamatan['id_kecamatan']) $s="selected"; else $s="";
		echo "<option value='".$kecamatan['id_kecamatan']."' ".$s.">".$kecamatan['nama_kecamatan']."</option>";
	}
?>
</select>


<label>Pencarian:</label> <input type="text" class="input search" id="q_sambungan" placeholder="No/Nama Pelanggan" value="<?php if(isset($_GET['q'])) echo $_GET['q']; ?>">
</div>

<?php


$limit = 20;
$q="
	SELECT tb_sambungan.*, tb_desa.nama_desa
	FROM tb_sambungan
	LEFT JOIN tb_desa ON tb_sambungan.id_desa = tb_desa.id_desa
	WHERE tb_sambungan.id_sambungan!=''
";
if(ISSET($_GET['kecamatan'])) $q.=" AND tb_sambungan.id_kecamatan='$_GET[kecamatan]'";
if(ISSET($_GET['kelompok'])) $q.=" AND tb_sambungan.kelompok='$_GET[kelompok]'";
if(ISSET($_GET['q'])) $q.=" AND (tb_sambungan.no_pelanggan LIKE '%$_GET[q]%' OR tb_sambungan.nama_pelanggan LIKE '%$_GET[q]%')";

$query = $db->run($q);
$total = count($query);




if (ISSET($_GET['hal'])) $hal = $_GET['hal']; else $hal=1;
$start = ($hal-1)*$limit;
$q.=" LIMIT $start, $limit";

$query = $db->run($q);
$jumlah = count($query);


if ($jumlah>0){
$no=$start;


?>
<table class="table table-border">
<tr>
<th width="20px">NO</th>
<th width="100px">No Pelanggan</th>
<th width="300px">Nama Pelanggan</th>
<th width="*">Alamat</th>
<th width="150px">Desa</th>
<th width="100px" class="text-center">AKSI</th>
</tr>
<?php
foreach($query as $r){
	$no++;
	echo "<tr>
	<td>".$no."</td>
	<td>".$r['no_pelanggan']."</td>
	<td>".$r['nama_pelanggan']."</td>
	<td>".$r['alamat']."</td>
	<td>".$r['nama_desa']."</td>
	<td class='text-center'>
	<a href=javascript:InfoSambungan('".$r['id_sambungan']."') class='btn-small'>Detail</a> 
	<a href=javascript:PetaSambungan('".$r['id_sambungan']."') class='btn-small'>Peta</a>
	</td></tr>";

}

?>

</table>
<?php
if(ISSET($_GET['kecamatan'])) $kecamatan="kecamatan=$_GET[kecamatan]"; else $kecamatan="";
if(ISSET($_GET['kelompok'])) $kelompok="kelompok=$_GET[kelompok]"; else $kelompok="";
if(ISSET($_GET['q'])) $q="q=$_GET[q]"; else $q="";
halaman($total, $limit, 2, "index.php?page=sambungan&hal=");
}
else echo "<div class='msg'>TIDAK ADA DATA</div>";
?>
