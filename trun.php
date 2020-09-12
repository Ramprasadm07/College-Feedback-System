<html>
    <head>
        <style>
           #loader {
  /* Uncomment this to make it run! */
  /*
     animation: loader 5s linear infinite; 
  */
  
  position: absolute;
  top: calc(50% - 20px);
  left: calc(50% - 20px);
}
@keyframes loader {
  0% { left: -100px }
  100% { left: 110%; }
}
#box {
  width: 50px;
  height: 50px;
  background: #fff;
  animation: animate .5s linear infinite;
  position: absolute;
  top: 0;
  left: 0;
  border-radius: 3px;
}
@keyframes animate {
  17% { border-bottom-right-radius: 3px; }
  25% { transform: translateY(9px) rotate(22.5deg); }
  50% {
    transform: translateY(18px) scale(1,.9) rotate(45deg) ;
    border-bottom-right-radius: 40px;
  }
  75% { transform: translateY(9px) rotate(67.5deg); }
  100% { transform: translateY(0) rotate(90deg); }
} 
#shadow { 
  width: 50px;
  height: 5px;
  background: #000;
  opacity: 0.1;
  position: absolute;
  top: 59px;
  left: 0;
  border-radius: 50%;
  animation: shadow .5s linear infinite;
}
@keyframes shadow {
  50% {
    transform: scale(1.2,1);
  }
}


body {
  background: #6997DB; 
  overflow: hidden;
}
h4 {
  position: absolute;
  bottom: 20px;
  left: 20px;
  margin: 0;
  font-weight: 200;
  opacity: .5;
	font-family: sans-serif;
  color: #fff;
} 
        </style>
    </head>
    <body>
        <div id="loader">
  <div id="shadow"></div>
  <div id="box"></div>
</div>
<h4>Loader #6</h4>
<?php 
$user=$_POST['user'];
$pass=$_POST['pass'];

include_once "connect.php";
$cou=mysqli_num_rows(mysqli_query($conn,"select id from main_ad where username='".$user."' and password='".$pass."'"));
if($cou==1){
 echo "<script>location.href='tr.php';</script>";
 }
 else{
 echo "<script>location.href='for_login2.php';</script>";    
 }
?>
</body>
</html>