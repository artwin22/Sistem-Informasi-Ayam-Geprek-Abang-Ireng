<?php 
include 'header.php';
?>

<?php
$aVar = mysqli_connect("localhost", "root", "","kios");
$a = mysqli_query($aVar,"select * from barang_laku");
?>

<div class="col-md-10">
	<h3>Selamat datang</h3>	
    <h3>Aplikasi Penjualan Sederhana</h3>
    <h3>WWW.MALASNGODING.COM</h3>
</div>
<!-- kalender -->
<div class="pull-right">
	<div id="kalender"></div>
</div>

<?php 
include 'footer.php';

?>