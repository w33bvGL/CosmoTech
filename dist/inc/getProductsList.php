<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once "../connect.php";

try {
  $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
  $itemsPerPage = isset($_GET['itemsPerPage']) ? (int)$_GET['itemsPerPage'] : 6;
  $offset = ($page - 1) * $itemsPerPage;

  $sql = "SELECT id, name, description, new_price, old_price, img1, img1_alt, category, subcategory
        FROM product
        WHERE visibility = 'publish' AND quantity >= 1
        ORDER BY RAND()
        LIMIT $offset, $itemsPerPage";

  $result = mysqli_query($connect, $sql);

  if (!$result) {
    die("DB error!");
  }

  $newProducts = [];

  while ($row = $result->fetch_assoc()) {
    $newProducts[] = $row;
  }

  header('Content-Type: application/json');
  echo json_encode($newProducts, JSON_UNESCAPED_UNICODE);

  mysqli_free_result($result);
  mysqli_close($connect);
} catch (Exception $error) {
  echo 'promise error: ' . $error->getMessage();
}
