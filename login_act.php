<?php 
session_start();
include 'admin/config.php';
$uname=$_POST['uname'];
$pass=$_POST['pass'];
$pas=md5($pass);
$query=mysql_query("select * from admin where uname='$uname' and pass='$pas'")or die(mysql_error());
if(mysql_num_rows($query)>0){
	$row_akun = mysql_fetch_array($query);
	$_SESSION["uname"]= $row_akun["uname"];
	$_SESSION["akun_statusakun"] = $row_akun["id_statusakun"];

	if($_SESSION['akun_statusakun'] == "1"){
		header("location:admin/index.php");	
	} else {
		header("location:admin/index2.php");
	}
	


}else{
	header("location:index.php?pesan=gagal")or die(mysql_error());
	// mysql_error();
}
// echo $pas;
 ?>