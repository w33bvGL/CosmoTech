<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require_once "../connect.php";

try {
  $sql = "SELECT id, name, parent_category FROM category WHERE visibility = 'publish'";

  $result = mysqli_query($connect, $sql);

  if(!$result) {
    die("DB error!");
  }

  $data = array();
  while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
  }

  header('Content-Type: application/json');
  echo json_encode($data, JSON_UNESCAPED_UNICODE);
} catch (Exception $error) {
  echo 'promise error: ' . $error->getMessage();
}
