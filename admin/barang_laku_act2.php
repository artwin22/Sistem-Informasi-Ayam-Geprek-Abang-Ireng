<?php 

include 'config.php';
$tgl = date("Y-m-d H:i:s");
$nama = $_POST['nama'];

$rp = mysql_query("select * from barang where nama='$nama'");
$pr = mysql_fetch_array($rp);
$harga = $pr['harga'];

$jumlah = $_POST['jumlah'];

$dt = mysql_query("select * from barang where nama='$nama'");
$data = mysql_fetch_array($dt);
$sisa=$data['jumlah']-$jumlah;
mysql_query("update barang set jumlah='$sisa' where nama='$nama'");

$modal=$data['modal'];
$laba=$harga-$modal;
$labaa=$laba*$jumlah;
$total_harga=$harga*$jumlah;
$cek = mysql_query("insert into barang_laku values('','$tgl','$nama','$jumlah','$harga','$total_harga','$labaa')")or die(mysql_error());

if($cek){
	header("location:barang_laku2.php?pesan=oke");
}
?>