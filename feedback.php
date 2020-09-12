<?php
include_once "connect.php";

function kk()
{
 
$sq="insert into login_user values ('".$_SESSION['rollno']."')";
mysqli_query($conn,$sq);
}
?>
<?php
session_start();
if(!isset($_SESSION['dep'])) {
	header("location: login.php");
}


?>
<html>
<head>
<title>feedback form</title>
<link rel="shortcut icon" href="C:\xampp\htdocs\pro\img\sam1.png" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="j.js"></script>
<style>
#staff_name
{
	display: none;
}
#dis_st
{
	position: absolute;
	top: 312px;
	left: 230px;
}

</style>
	<script src="jquery.min.js"></script>
	<script>

	var roll="<?php echo $_SESSION['rollno'] ?>";
	var dep="<?php echo $_SESSION['dep'] ?>";
	var ter="<?php echo $_SESSION['term'] ?>";
	var ac="<?php echo $_SESSION['ac_yr'] ?>";
	function chan()
	{
		var ch=document.getElementById("course").selectedIndex;
		document.getElementById("staff_name").options[ch].selected=true;
		document.getElementById("dis_st").innerHTML=document.getElementById("staff_name").value;
	}
	function loa()
	{
		document.getElementById("dis_st").innerHTML=document.getElementById("staff_name").value;
	}
	
	function log()
	{
	    alert("work");
	}
	</script>
</head>
<body onload="
	document.getElementById('dis_st').innerHTML=document.getElementById('staff_name').value
var cc=document.getElementById('course').length;
if(cc==0)
{
location.href='ins1.php';
}

">
<form id="fupForm" action="save.php" name="form1" method="post">
    <input type="text" style="display:none;" name="r" value="<?php echo $_SESSION['rollno']; ?>" />
<input type="text" style="display:none;" name="d" value="<?php echo $_SESSION['dep']; ?>" />
<input type="text" style="display:none;" name="term" value="<?php echo $_SESSION['term']; ?>" />
<input type="text" style="display:none;" name="ac_yr" value="0" />
<table border="1" cellspacing="0" cellpadding="10" width="100%" height="50%">
<tr>
<td colspan="8">
 <img src="sam1.png" alt="not supported" class="img1"/>
<img src="sam2.png" alt="not supported" class="img2"/>
 <br />&nbsp;<center><b><font size="+2.2"><b><font size="+3">NACHIMUTHU POLYTECHNIC COLLEGE</font>  <br />                                         
Government Aided Autonomous Institute Approved by AICTE,New Delhi<br />
Affiliated to State Board of Technical Education & Training Taml Nadu
<br />
Accredited by APACC (Asia Pacific Accreditation
 And Certification Commission),<br /> Philippines with Gold Level</font>
 </center></td>
</tr>
<tr>
<th colspan="8">STUDENT FEEDBACK ON FACULTY</th>
</tr>
<tr>
<th colspan="8" align="left">COURSE NAME : <select name="s" id="course" onchange="
var ch=document.getElementById('course').selectedIndex;
		document.getElementById('staff_name').options[ch].selected=true;
		document.getElementById('dis_st').innerHTML=document.getElementById('staff_name').value;
">
<?php


// Check connection
if (!$conn) {
    die("Connection failed: " .mysql_error());
}
			
           $dd_res=mysqli_query($conn,"Select  course from staff where dept like '".$_SESSION['dep']."' and term ='".$_SESSION['term']."'");
          while($r=mysqli_fetch_row($dd_res))
          { 
				$sel=mysqli_num_rows(mysqli_query($conn,"select sno from feedback where dept like '".$_SESSION['dep']."' and term ='".$_SESSION['term']."' and course='".$r[0]."' and rollno='".$_SESSION['rollno']."'"));
                if($sel>=1)
				{
					echo "null";
				}
				else{
				echo "<option value='$r[0]'> $r[0] </option>";
				}
		  }
		  $che=mysqli_query($conn,"select * from ac where rollno='".$_SESSION['rollno']."' and term='".$_SESSION['term']."'");
		  $che1=mysqli_query($conn,"select rollno from ac where rollno='".$_SESSION['rollno']."' and term='".$_SESSION['term']."'");
		  $cou_che=mysqli_num_rows($che1);
		  if($cou_che==1){
		  while($che_cou=mysqli_fetch_array($che)){
		  		$sel=mysqli_num_rows(mysqli_query($conn,"select sno from feedback where rollno='".$_SESSION['rollno']."' and course='".$che_cou['course']."' and term='".$_SESSION['term']."'"));
		  		if($sel>=1)
		  		{
		  		    echo "null";
		  		}else
		  		{
		     echo "<option>".$che_cou['course']."</option>";
		  		}
		  }
		  		}
      ?>
</select></th>
</tr>
<tr>
<th colspan="8" align="left">NAME  OF THE FACULTY : 
<p id="dis_st"></p>
<select name="staff_name" id="staff_name" >
<?php

	
// Check connection
if (!$conn) {
    die("Connection failed: " .mysql_error());
}
         $dd_res=mysqli_query($conn,"Select  course,staff_name from staff where dept like '".$_SESSION['dep']."' and term ='".$_SESSION['term']."'");
          while($r=mysqli_fetch_array($dd_res))
          { 
				$sel=mysqli_num_rows(mysqli_query($conn,"select sno from feedback where dept like '".$_SESSION['dep']."' and term ='".$_SESSION['term']."' and course='".$r["course"]."' and rollno='".$_SESSION['rollno']."'"));
                if($sel==1)
				{
					echo "null";
				}
				else{
				echo "<option value='".$r['staff_name']."'>". $r['staff_name']." </option>";
				}
		  }
          
          
            $che=mysqli_query($conn,"select * from ac where rollno='".$_SESSION['rollno']."' and term='".$_SESSION['term']."'");
		  $che1=mysqli_query($conn,"select rollno from ac where rollno='".$_SESSION['rollno']."' and term='".$_SESSION['term']."'");
		  $cou_che=mysqli_num_rows($che1);
		  if($cou_che==1){
		  while($che_cou=mysqli_fetch_array($che)){
		  		$sel=mysqli_num_rows(mysqli_query($conn,"select sno from feedback where rollno='".$_SESSION['rollno']."' and course='".$che_cou['course']."' and term='".$_SESSION['term']."'"));
		  		if($sel>=1)
		  		{
		  		    echo "null";
		  		}else
		  		{
		     echo "<option>".$che_cou['staff']."</option>";
		  		}
		  }
		  		}
      ?>
</select>
</th>
</tr>
<table border="1" cellspacing="0" cellpadding="10" width="100%" id="f">
<tr>
<td colspan="4"><b>Comment →</b></td>
<td><p><b>Below Average(1)</b></p></td>
<td><p><b>Average(2)</b></p></td>
<td><p><b>Good(3)</b></p></td>
<td><p><b>Very Good(4)</b></p></td>
</tr>
<tr id="f">
<th>A.</th>
<th colspan="7" >TIME SENSE</th>
</tr>
<tr>
<th>1</th>
<td colspan="3">Punctual to the Class</td>
<td><p><input type="radio" id="a1" name="q1" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="a1" name="q1" value="2" required />Average</p></td>
<td><p><input type="radio" id="a1" name="q1" value="3" required />Good</p></td>
<td><p><input type="radio" id="a1" name="q1" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>2</th>
<td colspan="3">Completes the syllabus in time</td>
<td><p><input type="radio" id="a2" name="q2" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="a2" name="q2" value="2" required />Average</p></td>
<td><p><input type="radio" id="a2" name="q2" value="3" required />Good</p></td>
<td><p><input type="radio" id="a2" name="q2" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>3</th>
<td colspan="3">Conduct of assignments, class test, tutorials and seminars as per the schedule</td>
<td><p><input type="radio" id="a3" name="q3" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="a3" name="q3" value="2" required />Average</p></td>
<td><p><input type="radio" id="a3" name="q3" value="3" required />Good</p></td>
<td><p><input type="radio" id="a3" name="q3" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>B.</th>
<th colspan="7">TEACHING METHODLOGY</th>
</tr>
<tr>
<th>4</th>
<td colspan="3">Explains the Course Outcomes</td>
<td><p><input type="radio" id="b1" name="q4" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b1" name="q4" value="2" required />Average</p></td>
<td><p><input type="radio" id="b1" name="q4" value="3" required />Good</p></td>
<td><p><input type="radio" id="b1" name="q4" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>5</th>
<td colspan="3">Links the Course  with other Course in the programe</td>
<td><p><input type="radio" id="b2" name="q5" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b2" name="q5" value="2" required />Average</p></td>
<td><p><input type="radio" id="b2" name="q5" value="3" required />Good</p></td>
<td><p><input type="radio" id="b2" name="q5" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>6</th>
<td colspan="3">Focus on Course Outcomes</td>
<td><p><input type="radio" id="b3" name="q6" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b3" name="q6" value="2" required />Average</p></td>
<td><p><input type="radio" id="b3" name="q6" value="3" required />Good</p></td>
<td><p><input type="radio" id="b3" name="q6" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>7</th>
<td colspan="3">Explains the course content with clarity</td>
<td><p><input type="radio" id="b4" name="q7" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b4" name="q7" value="2" required />Average</p></td>
<td><p><input type="radio" id="b4" name="q7" value="3" required />Good</p></td>
<td><p><input type="radio" id="b4" name="q7" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>8</th>
<td colspan="3">Refers to the  suitable applications in the field</td>
<td><p><input type="radio" id="b5" name="q8" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b5" name="q8" value="2" required />Average</p></td>
<td><p><input type="radio" id="b5" name="q8" value="3" required />Good</p></td>
<td><p><input type="radio" id="b5" name="q8" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>9</th>
<td colspan="3">Use of teaching aids (Blackboard /PPT's etc.,)relavant to the content</td>
<td><p><input type="radio" id="b6" name="q9" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b6" name="q9" value="2" required />Average</p></td>
<td><p><input type="radio" id="b6" name="q9" value="3" required />Good</p></td>
<td><p><input type="radio" id="b6" name="q9" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>10</th>
<td colspan="3">Blackboard/Whiteboard work in terms of clarity, visibility etc.,</td>
<td><p><input type="radio" id="b7" name="q10" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b7" name="q10" value="2" required />Average</p></td>
<td><p><input type="radio" id="b7" name="q10" value="3" required />Good</p></td>
<td><p><input type="radio" id="b7" name="q10" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>11</th>
<td colspan="3">Interest generated by the faculty</td>
<td><p><input type="radio" id="b8" name="q11" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b8" name="q11" value="2" required />Average</p></td>
<td><p><input type="radio" id="b8" name="q11" value="3" required />Good</p></td>
<td><p><input type="radio" id="b8" name="q11" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>12</th>
<td colspan="3">Guest lectures made related for Course / Course Outcomes</td>
<td><p><input type="radio" id="b9" name="q12" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b9" name="q12" value="2" required />Average</p></td>
<td><p><input type="radio" id="b9" name="q12" value="3" required />Good</p></td>
<td><p><input type="radio" id="b9" name="q12" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>13</th>
<td colspan="3">Industrial visits arranged related to Course /Course Outcomes</td>
<td><p><input type="radio" id="b10" name="q13" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b10" name="q13" value="2" required />Average</p></td>
<td><p><input type="radio" id="b10" name="q13" value="3" required />Good</p></td>
<td><p><input type="radio" id="b10" name="q13" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>14</th>
<td colspan="3">Gives reference of additional source material (Library)</td>
<td><p><input type="radio" id="b11" name="q14" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="b11" name="q14" value="2" required />Average</p></td>
<td><p><input type="radio" id="b11" name="q14" value="3" required />Good</p></td>
<td><p><input type="radio" id="b11" name="q14" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>C.</th>
<th colspan="7">EVALUATION</th>
</tr>
<tr>
<th>15</th>
<td colspan="3">Review of CAT and assignment questions and answers in the class</td>
<td><p><input type="radio" id="c1" name="q15" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="c1" name="q15" value="2" required />Average</p></td>
<td><p><input type="radio" id="c1" name="q15" value="3" required />Good</p></td>
<td><p><input type="radio" id="c1" name="q15" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>16</th>
<td colspan="3">Discuss the evaluated answer books of class assignment, home assignment and CAT with the students</td>
<td><p><input type="radio" id="c2" name="q16" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="c2" name="q16" value="2" required />Average</p></td>
<td><p><input type="radio" id="c2" name="q16" value="3" required />Good</p></td>
<td><p><input type="radio" id="c2" name="q16" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>D.</th>
<th colspan="7">HELPING ATTITUDE</th>
</tr>
<tr>
<th>17</th>
<td colspan="3">Facilitation approach towards varied academic interests of students</td>
<td><p><input type="radio" id="d1" name="q17" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="d1" name="q17" value="2" required />Average</p></td>
<td><p><input type="radio" id="d1" name="q17" value="3" required />Good</p></td>
<td><p><input type="radio" id="d1" name="q17" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>18</th>
<td colspan="3">Facilitating the students to gather relevant study material</td>
<td><p><input type="radio" id="d2" name="q18" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="d2" name="q18" value="2" required />Average</p></td>
<td><p><input type="radio" id="d2" name="q18" value="3" required />Good</p></td>
<td><p><input type="radio" id="d2" name="q18" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>19</th>
<td colspan="3">Couselling of students</td>
<td><p><input type="radio" id="d3" name="q19" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="d3" name="q19" value="2" required />Average</p></td>
<td><p><input type="radio" id="d3" name="q19" value="3" required />Good</p></td>
<td><p><input type="radio" id="d3" name="q19" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>E.</th>
<th colspan="7">UTILIZATION OF LAB FACILITIES</th>
</tr>
<tr>
<th>20</th>
<td colspan="3">Explaining the subject by utilizing the lab machines/equipments</td>
<td><p><input type="radio" id="e1" name="q20" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="e1" name="q20" value="2" required />Average</p></td>
<td><p><input type="radio" id="e1" name="q20" value="3" required />Good</p></td>
<td><p><input type="radio" id="e1" name="q20" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>21</th>
<td colspan="3">Showing models/equipments to explain the subjects in classs room</td>
<td><p><input type="radio" id="e2" name="q21" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="e2" name="q21" value="2" required />Average</p></td>
<td><p><input type="radio" id="e2" name="q21" value="3" required />Good</p></td>
<td><p><input type="radio" id="e2" name="q21" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>F.</th>
<th colspan="7">CLASS ROOM CONTROL</th>
</tr>
<tr id="f">
<th>22</th>
<td colspan="3">Controlling classes effectively during the class hours</td>
<td><p><input type="radio" id="f1" name="q22" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="f1" name="q22" value="2" required />Average</p></td>
<td><p><input type="radio" id="f1" name="q22" value="3" required />Good</p></td>
<td><p><input type="radio" id="f1" name="q22" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>23</th>
<td colspan="3">Inviting opinion and question on subject matter from students</td>
<td><p><input type="radio" id="f2" name="q23" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="f2" name="q23" value="2" required />Average</p></td>
<td><p><input type="radio" id="f2" name="q23" value="3" required />Good</p></td>
<td><p><input type="radio" id="f2" name="q23" value="4" required />Very Good</p></td>
</tr>
<tr >
<th>24</th>
<td colspan="3">Encouraging  the students to make presentation on course related topicz</td>
<td><p><input type="radio" id="f3" name="q24" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="f3" name="q24" value="2" required />Average</p></td>
<td><p><input type="radio" id="f3" name="q24" value="3" required />Good</p></td>
<td><p><input type="radio" id="f3" name="q24" value="4" required />Very Good</p></td>
</tr>
<tr>
<th>25</th>
<td colspan="3">Method of dealing the irregular students</td>
<td><p><input type="radio" id="f4" name="q25" value="1" required />Below Average</p></td>
<td><p><input type="radio" id="f4" name="q25" value="2" required />Average</p></td>
<td><p><input type="radio" id="f4" name="q25" value="3" required />Good</p></td>
<td><p><input type="radio" id="f4" name="q25" value="4" required />Very Good</p></td>
</tr>
</div>
</table> 
<center><input type="submit" name="save" value="SUBMIT" id="butsave"></center>
</form>
<a href="logout.php" accesskey="a"></a>
<a href="log_ins.php"; accesskey="s"></a>

</body>
</html>