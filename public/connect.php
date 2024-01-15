<?php 
$serv_name = "localhost"; 
$serv_username = "root"; 
$serv_pass = "";
$db_name = "onlineshop"; 

// connect to database
$connect = mysqli_connect($serv_name, $serv_username, $serv_pass, $db_name);

if (!$connect) {
  echo "connect Failed"; 
} else {
  echo "connected!";
}
