<?php
	$ip   = get_client_ip();
	$tanggal = date("Ymd");
	$waktu  = time();
	$bln=date("m");
	$tgl=date("d");
	$blan=date("Y-m");
	$thn=date("Y");
	$tglk=$tgl-1;
 
    $s = $db->run("SELECT ip FROM tb_statistik WHERE ip='$ip' AND tanggal='$tanggal'");
 
	if(COUNT($s) == 0){
		$db->run("INSERT INTO tb_statistik(ip, tanggal, hits, online) VALUES('$ip','$tanggal','1','$waktu')");
	}else{
		$db->run("UPDATE tb_statistik SET hits=hits+1, online='$waktu' WHERE ip='$ip' AND tanggal='$tanggal'");
	}

    /*if($tglk=='1' | $tglk=='2' | $tglk=='3' | $tglk=='4' | $tglk=='5' | $tglk=='6' | $tglk=='7' | $tglk=='8' | $tglk=='9'){
		$kemarin=$db->run("SELECT * FROM tb_statistik WHERE tanggal='$thn-$bln-0$tglk'");
    }else{
		$kemarin=$db->run("SELECT * FROM tb_statistik WHERE tanggal='$thn-$bln-$tglk'");
    }*/

    $bulan=$db->run("SELECT ip FROM tb_statistik WHERE tanggal LIKE '%$blan%'");
    $bulan1=COUNT($bulan);
    $tahunini=$db->run("SELECT ip FROM tb_statistik WHERE tanggal LIKE '%$thn%'");
    $tahunini1=COUNT($tahunini);

    $q_pengunjung 	= $db->run("SELECT ip FROM tb_statistik WHERE tanggal='$tanggal' GROUP BY ip");
	$pengunjung       = COUNT($q_pengunjung);
	
	$q_totalpengunjung =  $db->run("SELECT COUNT(hits) as hitstotal FROM tb_statistik");
	// $q_=$db->dbFetch($q_totalpengunjung);
	$totalpengunjung  = $q_totalpengunjung[0]['hitstotal'];

	$q_hits= $db->run("SELECT SUM(hits) as hitstoday FROM tb_statistik WHERE tanggal='$tanggal' GROUP BY tanggal");
	$totalhitshariini = $q_hits[0]['hitstoday'];
	// $hits =$db->dbFetch($q_hits);
	//$hits             = $h_['hitstoday'];

	$q_totalhits =  $db->run("SELECT SUM(hits) as hitsum FROM tb_statistik");
	// $r_=$db->dbFetch($q_totalhits);
	$totalhits  = $q_totalhits[0]['hitsum'];

	//$totalhits        = mysql_result(mysql_query("SELECT SUM(hits) FROM tb_statistik"), 0); 
	$bataswaktu       = time() - 300;
	$q_pengunjungonline = $db->run("SELECT ip FROM tb_statistik WHERE online > '$bataswaktu'");
	$pengunjungonline = COUNT($q_pengunjungonline);
	// $kemarin1 = COUNT($kemarin);
 
 
 
    echo " 
	<table width='100%' border='0' class='table'>
		<tbody>
		<tr>
            <td align='left' valign='middle'><img src='img/online.png' width='16' height='16'></td>
			<td width='98' align='left' valign='middle'>Now Online</td>
			<td width='138' align='left' valign='middle'>: <b>$pengunjungonline</b> User</td>
        </tr>
		<tr>
			<td width='28' align='left' valign='middle'><img src='img/hariini.png' width='16' height='16'></td>
			<td width='98' align='left' valign='middle'> Hari Ini</td>
			<td width='138' align='left' valign='middle'>: $pengunjung</td>
		</tr>
		<tr>
		  	<td align='left' valign='middle'><img src='img/hariini.png' width='16' height='16'></td>
		  	<td align='left' valign='middle'>Bulan ini </td>
		  	<td align='left' valign='middle'> : $bulan1</td>
		</tr>
		<tr>
		  	<td align='left' valign='middle'><img src='img/hariini.png' width='16' height='16'></td>
		  	<td align='left' valign='middle'>Tahun ini </td>
		  	<td align='left' valign='middle'>:
			  $tahunini1</td>
		</tr>
		<tr>
		  	<td align='left' valign='middle'><img src='img/line_chart.png' width='16' height='16'></td>
		  	<td align='left' valign='middle'>Hits Hari Ini </td>
		  	<td align='left' valign='middle'>: $totalhitshariini</td>
		</tr>
		<tr>
		  	<td align='left' valign='middle'><img src='img/bar_chart.png' width='16' height='16'></td>
		  	<td width='98' align='left' valign='middle'>Total Hits</td>
		 	<td width='138' align='left' valign='middle'>: $totalhits</td>
		</tr>
    </tbody>
	</table>";
?>