<?php 
require_once "../connect.php"; 
// $_GET["userId"]
$getUserId = 3;
try {
  $query = "SELECT cart_items_json from users WHERE id = :userId";
  $stmt = $connect->prepare($query);
  $stmt->bindParam(":userId", $getUserId);
  $stmt->execute();
  $messages = $stmt->fetchAll(PDO::FETCH_ASSOC);
  
  $getUserCartItems = $messages;

  header('Content-Type: application/json');
  echo json_encode($getUserCartItems, JSON_UNESCAPED_UNICODE);
} catch(Exception $error) {
  echo "promise Error:" . $error->getMessage();
}
