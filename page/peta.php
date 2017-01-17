
<div class="main-content">
<div class="title">
<h3>PETA SAMBUNGAN</h3>
</div>

<div class="map_wrapper">
<div id="map"></div>
<div class="map_info" id="map_info">
<h4>Informasi Jalan <span id="map_info_close"></span></h4>
<div id="map_info_content"></div>

</div>
</div>


</div>
<div class="sidebar">
<div class="widget">
<div class="title">
<h3>LEGENDA</h3>
</div>
<ul id="sitemap">
	
	<li><input type="checkbox" id="chkLayerRuasJalan"> <label>Layer Kecamatan</label></li>
	<li><input type="checkbox" id="chkLayerJalurPipa"> <label>Layer Jalan</label></li>
	<li><input type="checkbox" id="chkLayerRumahPolyline"> <label>Layer Sungai</label></li>
	
	<li><input type="checkbox" id="chkTitikSambungan"> <label>Titik Sambungan</label>
	<?php
		$titiks = $db->run("SELECT kelompok FROM tb_sambungan GROUP BY kelompok ORDER BY kelompok");
		$jumlah_titiks = count($titiks);
		if($jumlah_titiks > 0){
			echo "<ul>";
			$i = 0;
			foreach($titiks as $titik){
				echo "<li><input type='checkbox' class='chkTitikSambungan' id='chkTitikSambungan_".$i."' value='".$titik['kelompok']."'> <img src='marker/".clean($titik['kelompok']).".png'><label>".$titik['kelompok']."</label></li>";
				$i++;
			}
			echo "</ul>";
		}
	?>
		</li>

	
	
	
	
</ul>
<br>
<div class="title">
<h3>PENCARIAN</h3>
</div>
<input type="text" class="input search wide margin10" id="q_peta" placeholder="Nomor atau Nama Pelanggan">
<div id="hasil_pencarian">






</div>
</div>
</div>










