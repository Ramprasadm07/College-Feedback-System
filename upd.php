<?php
include_once "connect.php";
if($conn->connect_error)
{
echo "not connected";
}
else
{
echo "connected";
}
?>