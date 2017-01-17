<?php
include("class/class.db.php");
include("class/function.php");
$db = new db();
$q="
SELECT tb_sambungan.*
FROM tb_sambungan
WHERE (tb_sambungan.x!='' OR tb_sambungan.y!='')
";
if (ISSET($_GET['id_sambungan'])) $q.=" AND tb_sambungan.id_sambungan='".$_GET['id_sambungan']."' ";

$results = $db->run($q);

$json = '{"sambungan": [';
foreach($results as $r){
    $json .= '{';
    $json .= '"id":"'.$r['id_sambungan'].'",
        "no_pelanggan":"'.$r['no_pelanggan'].'",
        "nama_pelanggan":"'.$r['nama_pelanggan'].'",
        "kelompok":"'.$r['kelompok'].'",
        "alamat":"'.$r['alamat'].'",
        "foto":"'.$r['foto'].'",
        "marker":"'.clean($r['kelompok']).'.png",
        "x":"'.$r['x'].'",
        "y":"'.$r['y'].'"
    },';	
}
$json = substr($json,0,strlen($json)-1);
$json .= ']';

$json .= '}';
echo $json;
?>
