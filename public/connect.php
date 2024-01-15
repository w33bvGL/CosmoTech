<?php 

$serv_name = ""; 
$serv_username = ""; 
$serv_pass = "";
$db_name = ""; 

// connect
$connect = new mysqli ($serv_name, $serv_username, $serv_pass, $db_name);

if ($connect->connect_error) {
  echo "connect Failed"; 
} else {
  echo "connected!";
}
