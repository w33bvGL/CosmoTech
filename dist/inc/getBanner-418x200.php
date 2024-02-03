<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once "../connect.php";

try {
  $bannerLimit = 4;
  $sql = "SELECT id, name, description, image, visibility, category, subcategory FROM advertisingBanner WHERE visibility = 'publish' ORDER BY RAND()";

  $result = mysqli_query($connect, $sql);

  if (!$result) {
    die("DB error!");
  }

  $data = array();
  while ($row = mysqli_fetch_assoc($result)) {
    $imagePath = $row['image'];
    $imageWidth = 0;
    $imageHeight = 0;

    $imageContent = file_get_contents($imagePath);
    $image = imagecreatefromstring($imageContent);

    if ($image !== false) {
      $imageWidth = imagesx($image);
      $imageHeight = imagesy($image);

      imagedestroy($image);
    }

    if ($imageWidth == 418 && $imageHeight == 200) {
      $data[] = $row;

      if (count($data) >= $bannerLimit) {
        break;
      }
    }
  }


  header('Content-Type: application/json');
  echo json_encode($data, JSON_UNESCAPED_UNICODE);

  mysqli_free_result($result);
  mysqli_close($connect); // close connection
} catch (Exception $error) {
  echo 'promise error: ' . $error->getMessage();
}

/* 
// echo $data template
echo $data[0]["image"];
*/