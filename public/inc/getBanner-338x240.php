<?php
require_once "../connect.php";

try {
  $bannerLimit = 2;
  $sql = "SELECT id, name, description, image, visibility, category, subcategory FROM advertisingBanner WHERE visibility = 'publish'";

  $result = mysqli_query($connect, $sql);

  if (!$result) {
    die("DB error!");
  }

  $data = array();
  while ($row = mysqli_fetch_assoc($result)) {
    $imagePath = $row['image'];
    $imageSize = getimagesize($imagePath);

    if ($imageSize && $imageSize[0] == 338 && $imageSize[1] == 240) {
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