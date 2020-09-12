<?php
session_start();
include_once "connect.php";
if(isset($_SESSION['dep'])) {
	header("location: feedback.php");
}
?>
<html>
<head>
<title>login</title>
<style>


#sub
{
	position: relative;
	top: 70px;
	height: 50px;
	width: 80px;
	border: 0px;
border-radius: 20px;
background-color: #1ad057;
color: #fff;
}
#cir
{
border-radius: 20px;
border: 1px solid #1ad057;
}
div.log
{
	background-color: rgba(0,0,0,0.7);
position: relative;
border: 0px;
border-radius: 15px;
height: 500px;
width: 600px;
top: 100px;
}
p
{
color: #fff;
}
input
{
	color: #000;
}
p.ad1
{
	position: relative;
	top: 30px;
}
p.ad2
{
	
}
#dep
{
	
}
.t
{
	color: #000;
	height: 25px;
	width: 40px;
}
</style>

</head>
<body bgcolor="#0000aa">
    <font size="+2"><p style="position: static; left: 10px; "><a href="index.php"><img src="home_logo.png" alt="home" height="100" width="100" /></a></p></font><center>
<form name="frmUser" method="post" action="log.php">
<div id="log" align="middle" class="log" >
<img src="login_avatar.png" alt="not supported" style="height: 80px; width: 80px;" />
<center><p>Roll No<br />
<input type="text" name="rollno" class="roll" id="cir" style="width: 312px; height: 25px;" style="font-size-adjust: 0.58;" /></p></center>
<center><p>Key<br />
<input type="text" name="key" class="roll" id="cir" style="width: 312px; height: 25px;" /></p></center>
<center><p>Department<br />
<select id="dep" name="dep" style="width: 400px; height: 25px;" >
    <option>Select</option>
	 <?php
// Check connection
if (!$conn) {
    die("Connection failed: " .mysql_error());
}
           $dd_res=mysqli_query($conn,"Select  dept from department ");
          while($r=mysqli_fetch_row($dd_res))
          { 
                echo "<option value='$r[0]'> $r[0] </option>";
          }
      ?>
</select></p></center>
<center><p class="ad1">Term:<select class="t" name="term">
<option value="III">III</option>
<option value="IV">IV</option>
<option value="V">V</option>
<option value="VI">VI</option>
<option value="VI">VII</option>
</select></p></center>

<input type="submit" name="log" value="submit" align="left" id="sub" /><br />
</div>
</form>
</center></body>
</html>