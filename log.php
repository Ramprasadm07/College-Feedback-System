<?php
session_start();
include_once "connect.php";
?>
<html>
    <head>
<link rel="stylesheet" type="text/css" href="load.css">
    </head>
<body bgcolor="#0000aa">
    <center><div class="lds-hourglass" style="position: relative; top: 300px;"></div></center>
    <center><font size="+3" color="#fff"><p>Loading...</p></font></center>
<?php

   
      $rollno =$_POST['rollno'];
      $dept = $_POST['dep']; 
	  $key=$_POST['key'];	 

      $result = mysqli_query($conn,"SELECT stud_no FROM student WHERE rollno = '$rollno' and dept = '$dept' and term='".$_POST['term']."' and key_gen='".$key."'");
      $res=mysqli_query($conn,"SELECT * FROM login_user WHERE logined = '$rollno'");
      $count = mysqli_num_rows($result);
      $co=mysqli_num_rows($res);

	        // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1 && $co<1) {
		  
	
         $_SESSION['dep']=$_POST['dep'];
$_SESSION['rollno']=$_POST['rollno'];
$_SESSION['term']=$_POST['term'];
$url="feedback.php";
function ll()
{
    
    echo "<script>location.href='feedback.php';</script>";
}
?>
<?php
ll();
?>
  <?php
      }else {
         echo "<script>location.href='login.php';</script>";
      }
   
?>
</body></html>