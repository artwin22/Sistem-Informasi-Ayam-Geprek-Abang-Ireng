<?php 
include 'admin/config.php';
$uname=$_POST['uname'];
$pass=$_POST['pass'];
$pas=md5($pass);
$aVar = mysqli_connect("localhost", "root", "","kios");
$query=mysqli_query($aVar, "select * from admin where uname='$uname' and pass='$pas'")or die(mysqli_error($aVar));
if(mysqli_num_rows($query)==1){
	$_SESSION['uname']=$uname;
	header("location:admin/index.php");
}else{
	header("location:index.php?pesan=gagal")or die(mysqli_error($aVar));
	// mysql_error();
}
// echo $pas;
 ?>