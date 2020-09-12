<?php
include_once "connect.php";
if($conn->connect_error)
{
    echo "<script>alert('data not cleared');</script>";
}
else
{
mysqli_query($conn,"truncate feedback");
mysqli_query($conn,"truncate courses");
mysqli_query($conn,"truncate coursse_mark");
mysqli_query($conn,"truncate staff");
mysqli_query($conn,"truncate student");
mysqli_query($conn,"truncate login_user");
mysqli_query($conn,"truncate department");
echo "<script>alert('data cleared');</script>";   
echo "<script>location.href='for_login2.php';</script>";
}
?>
