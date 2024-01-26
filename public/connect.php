<?php 
$serv_name = "192.168.1.6"; 
$serv_username = "root";
$serv_pass = "";
$db_name = "onlineshop"; 

// connect to database
$connect = mysqli_connect($serv_name, $serv_username, $serv_pass, $db_name);

if (!$connect) {
  die("Connection failed"); // connection error
}
