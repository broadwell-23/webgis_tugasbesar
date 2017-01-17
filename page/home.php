<div class="main-content">
<div class="title">
<h3>SELAMAT DATANG</h3>
</div>
<?php
$r = $db->run("SELECT * FROM tb_pengaturan");
echo $r[0]['beranda'];
?>



</div>



<div class="sidebar">
<div class="widget">
<div class="title">
<h3>NAMA ANGGOTA KELOMPOK</h3>
</div>
<?php
echo "Silahkan ISI NAMA ANGGOTA KELOMPOK PADA BAGIAN INI</b>";
?>
</div>



<div class="widget">
<div class="title">
<h3>FITUR BEBAS</h3>
</div>
<?php
echo "Silahkan BUAT FITUR TAMBAHAN DI SINI</b>";
?>
</div>



</div>

