	function a()
	{
	 	alert('hello');
	
	}
	function ch()
	{
	    alert('hi');
	}
	function lo()
	{
	     location.href="logout.php";
	    if(document.getElementById("course").length==0){
	    <?php
$con=mysqli_connect("localhost","id12722236_root","rootroot","id12722236_feedback_form");
$sq="insert into login_user values ('".$_SESSION['rollno']."')";
mysqli_query($conn,$sq);
?>
	       
	    }
	}