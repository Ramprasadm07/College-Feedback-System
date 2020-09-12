<html>
<head>
<script>
function call()
 {
	   var printContent = document.getElementById("pri");
    var WinPrint = window.open('', '', 'width=1080,height=1920');
    WinPrint.document.write(printContent.innerHTML);
    WinPrint.document.close();
    WinPrint.focus();
    WinPrint.print();
    WinPrint.close();
	
	   
 }
</script>
<style>
    
div.backBtn {
  width: 100px;
  left: 100px;
  top: 100px;
  background-color: #f4f4f4;
  transition: all 0.4s ease;
  position: fixed;
  cursor: pointer;
}

span.line {
  bottom: auto;
  right: auto;
  top: auto;
  left: auto;
  background-color: #333;
  border-radius: 10px;
  width: 100%;
  left: 0px;
  height: 2px;
  display: block;
  position: absolute;
  transition: width 0.2s ease 0.1s, left 0.2s ease, transform 0.2s ease 0.3s, background-color 0.2s ease;
}

span.tLine {
  top: 0px;
}

span.mLine {
  top: 13px;
  opacity: 0;
}

span.bLine {
  top: 26px;
}

.label {
  position: absolute;
  left: 0px;
  top: 5px;
  width: 100%;
  text-align: center;
  transition: all 0.4s ease;
  font-size: 1em;
}

div.backBtn:hover span.label {
  left: 25px
}

div.backBtn:hover span.line {
  left: -10px;
  height: 5px;
  background-color: #F76060;
}

div.backBtn:hover span.tLine {
  width: 25px;
  transform: rotate(-45deg);
  left: -15px;
  top: 6px;
}

div.backBtn:hover span.mLine {
  opacity: 1;
  width: 30px;
}

div.backBtn:hover span.bLine {
  width: 25px;
  transform: rotate(45deg);
  left: -15px;
  top: 20px;
}
#back
{
    position: relative;
    left: 140px;
}
</style>
</head>
<body>
    <div class="backBtn" id="back">
      <span class="line tLine"></span>
      <span class="line mLine"></span>
      <span class="label"><a href="ad_main.php">Back to Admin</a></span>
      <span class="line bLine"></span>
	</div>
	<br />
<p><a href="ad_logout.php"><img src="home_logo.png" alt="home" height="100" width="100" style="position: static;" /></a></p>
<br />
<center>
<div id="pri">
<table border="2" cellpadding="10" cellspacing="0">
         <tr>
<td colspan="5">
 <img src="sam1.png" alt="not supported" style="float: left;" />
<img src="sam2.png" alt="not supported" style="float: right;" />
 <br />&nbsp;<center><font size="+2.2"><b><font size="+3">NACHIMUTHU POLYTECHNIC COLLEGE</font>  <br />                                         
Government Aided Autonomous Institute Approved by AICTE,New Delhi<br />
Affiliated to State Board of Technical Education & Training Taml Nadu
<br />
Accredited by APACC (Asia Pacific Accreditation
 And Certification Commission),<br /> Philippines with Gold Level</font></center>
 </td>
</tr>
<tr>
<th>Term</th>
<th>Department</th>
<th>Course</th>
<th>Staff name</th>
<th>Mark</th>
</tr>
<?php
include_once "connect.php";

$ter=array("III","IV","V","VI");
foreach($ter as $a){
$res=mysqli_query($conn,"select * from coursse_mark where term='$a'");

	?>
<?php
while($r = mysqli_fetch_array($res))
{
	$r1=mysqli_fetch_array(mysqli_query($conn,"select staff_name from staff where term='".$r["term"]."' and dept='".$r["dept"]."' and course='".$r["course"]."'"));
	?>
	<tr>
	<td style="text-align:center"; ><?php echo $r["term"]; ?></td>
	<td style="text-align:left"; ><?php echo $r["dept"]; ?></td>
	<td style="text-align:left"; ><?php echo $r["course"]; ?></td>
	<td style="text-align:left"; ><?php echo $r1["staff_name"]; ?></td>
	<?php
	if($r["ic"]==0){
	?>
	<td style="text-align:center;"><?php echo "0"; ?></td>
	<?php 
	}else{
	?>
	<td style="text-align:center;"><?php echo intval(($r["total"]/(100*$r["ic"]))*100); ?></td>
	<?php } ?>
	</tr>
	<?php
	
}
?>

<?php
}
?>

</table>
</div>
</center>
<p accesskey="p" onclick="call()"></p>
<a accesskey="a" href="ad_logout.php"></a>
</body>
</html>