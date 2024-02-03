<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once "../connect.php";

try {
  $topFprodLimit = 12;
  $sql = "SELECT id, name, description, new_price, old_price, img1, img1_alt, category,
          subcategory FROM product WHERE visibility = 'publish' AND quantity >= 1 AND purchase_count > 100 ORDER BY RAND()";
          
  $result = mysqli_query($connect, $sql);

  if (!$result) {
    die("DB error!");
  }

  $data = array();
  while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
    if (count($data) >= $topFprodLimit) {
      break;
    }
  }

  header('Content-Type: application/json');
  echo json_encode($data, JSON_UNESCAPED_UNICODE);

  mysqli_free_result($result);
  mysqli_close($connect); // close con
} catch (Exception $error) {
  echo 'promise error: ' . $error->getMessage();
}
