<?php
session_start();
unset($_SESSION["dep"]);
unset($_SESSION["rollno"]);
unset($_SESSION["term"]);
unset($_SESSION["course"]);
header("Location:login.php");
?>