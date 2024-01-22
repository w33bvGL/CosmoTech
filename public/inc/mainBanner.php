<?php
require_once "../connect.php";

try {
  $sql = "SELECT id, name, description, image, visibility, category, subcategory FROM mainAdvertisingBanner WHERE visibility = 'publish'";

  $result = mysqli_query($connect, $sql);
  if (!$result) {
    die("DB error!");
  }

  $data = array();
  while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
  }

  header('Content-Type: application/json');
  echo json_encode($data, JSON_UNESCAPED_UNICODE);

  mysqli_free_result($result); // clear cache
  mysqli_close($connect); // close connecton
} catch (Exception $error) {
  echo 'promise error: ' . $error->getMessage();
}
