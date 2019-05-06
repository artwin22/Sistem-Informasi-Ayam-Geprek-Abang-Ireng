<?php 
include 'header.php';
?>

<?php
$a = mysql_query("select * from barang_laku");
?>

<div class="col-md-10">
	<center><h3>Selamat Datang</h3></center>
    <h3>Aplikasi Penjualan QR Code Ayam Geprek Abang Ireng</h3>
    <h3>www.geprekabangireng.com</h3>
</div>
<!-- kalender -->
<div class="pull-right">
	<div id="kalender"></div>
</div>

<?php 
include 'footer.php';
?>