<?php

$dbHost = '172.17.64.1';
$dbName = 'onlineshop';
$dbUser = 'root';
$dbPass = '';

define('DB_DSN', "mysql:host=$dbHost;dbname=$dbName");
define('DB_USERNAME', $dbUser);
define('DB_PASSWORD', $dbPass);

try {
    $connect = new PDO(DB_DSN, DB_USERNAME, DB_PASSWORD);
    $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
