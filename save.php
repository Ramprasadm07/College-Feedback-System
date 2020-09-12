<?php
	include_once "connect.php";
	$term=$_POST['term'];
	 $rollno = $_POST['r'];
	 $dept = $_POST['d'];
	 $s=$_POST["s"];
	 $ac_yr = $_POST['ac_yr'];
	 $c3 = "0";
	 $a1 = $_POST['q1'];
	 $a2 = $_POST['q2'];
	 $a3 = $_POST['q3'];
	 $b1 = $_POST['q4'];
	 $b2 = $_POST['q5'];
	 $b3 = $_POST['q6'];
	 $b4 = $_POST['q7'];
	 $b5 = $_POST['q8'];
	 $b6 = $_POST['q9'];
	 $b7 = $_POST['q10'];
	 $b8 = $_POST['q11'];
	 $b9 = $_POST['q12'];
	 $b10 = $_POST['q13'];
	 $b11 = $_POST['q14'];
	 $c1 = $_POST['q15'];
	 $c2 = $_POST['q16'];
	 $d1 = $_POST['q17'];
	 $d2 = $_POST['q18'];
	 $d3 = $_POST['q19'];
	 $e1 = $_POST['q20'];
	 $e2 = $_POST['q21'];
	 $f1 = $_POST['q22'];
	 $f2 = $_POST['q23'];
	 $f3 = $_POST['q24'];
	 $f4 = $_POST['q25'];
	 $a=$a1+$a2+$a3;
	 $b=$b1+$b2+$b3+$b4+$b5+$b6+$b7+$b8+$b9+$b10+$b11;
	 $c=$c1+$c2;
	 $d=$d1+$d2+$d3;
	 $e=$e1+$e2;
	 $f=$f1+$f2+$f3+$f4;
	 $total=$a+$b+$c+$d+$e+$f;
	/* $sql = "SELECT courses FROM courses where courses='cuv'";

if ($result = mysqli_query($conn, $sql)) {
  // Get field information for all fields
  while ($fieldinfo = mysqli_fetch_field($result)) {
    printf("Name: %s\n", $c -> courses); }
  mysqli_free_result($result);
}*/

$sql=mysqli_query($conn,"select * from ac where rollno='".$rollno."' and course='".$s."'");
$c_o=mysqli_num_rows($sql);
if($c_o>=1)
{
    $aa=mysqli_query($conn,"select * from ac where rollno='".$rollno."' and course='".$s."'");
    $dd=mysqli_fetch_array($aa);
    $dept=$dd["dept"];
    $s=$dd["course"];
     $k="insert into feedback(rollno,dept,academic_year,term,course,ques1,ques2,ques3,ques4,ques5,ques6,ques7,ques8,ques9,ques10,ques11,ques12,ques13,ques14,ques15,ques16,ques17,ques18,ques19,ques20,ques21,ques22,ques23,ques24,ques25,a,b,c,d,e,f,total) values('$rollno','$dept','$ac_yr','$term','$s','$a1','$a2','$a3','$b1','$b2','$b3','$b4','$b5','$b6','$b7','$b8','$b9','$b10','$b11','$c1','$c2','$d1','$d2','$d3','$e1','$e2','$f1','$f2','$f3','$f4','$a','$b','$c','$d','$e','$f','$total')";
$sel=mysqli_query($conn,"select * from feedback where rollno='".$rollno."' and dept='".$dept."' and course='".$s."' and term='".$term."'");
$count1=mysqli_num_rows($sel);
if($count1==0){
	if (mysqli_query($conn, $k)) {
		echo"inserted";
		
	} 
	else {
		echo "not inserted";
	}
}
}
else
{
	 $k="insert into feedback(rollno,dept,academic_year,term,course,ques1,ques2,ques3,ques4,ques5,ques6,ques7,ques8,ques9,ques10,ques11,ques12,ques13,ques14,ques15,ques16,ques17,ques18,ques19,ques20,ques21,ques22,ques23,ques24,ques25,a,b,c,d,e,f,total) values('$rollno','$dept','$ac_yr','$term','$s','$a1','$a2','$a3','$b1','$b2','$b3','$b4','$b5','$b6','$b7','$b8','$b9','$b10','$b11','$c1','$c2','$d1','$d2','$d3','$e1','$e2','$f1','$f2','$f3','$f4','$a','$b','$c','$d','$e','$f','$total')";
$sel=mysqli_query($conn,"select * from feedback where rollno='".$rollno."' and dept='".$dept."' and course='".$s."' and term='".$term."'");
$count1=mysqli_num_rows($sel);
if($count1==0){
	if (mysqli_query($conn, $k)) {
		echo"inserted";
		
	} 
	else {
		echo "not inserted";
	}
}	
}	/*
	$sql = "SELECT courses FROM courses ORDER BY Lastname";

if ($result = mysqli_query($conn, $sql)) {
  // Get field information for all fields
  while ($fieldinfo = mysqli_fetch_field($result)) {
    printf("Name: %s\n", $c -> courses); }
  mysqli_free_result($result);
}*/
mysqli_close($conn);
echo "<script>location.href='feedback.php';</script>";
?>
 