-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 192.168.1.6:3306
-- Время создания: Фев 08 2024 г., 17:58
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `onlineshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accessories`
--

CREATE TABLE `accessories` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `username`, `password`, `email`, `is_admin`) VALUES
(1, 'Վահե Սարգսյան', 'root', '$2y$10$5kHAmo1SgDwir0G57AqkFuWMToL4Ef1EX9SON4EL.x.ahTe4n5Kim', 'w33bv.gl@gmail.com', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `advertisingBanner`
--

CREATE TABLE `advertisingBanner` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `visibility` enum('publish','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subcategory` int NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `advertisingBanner`
--

INSERT INTO `advertisingBanner` (`id`, `name`, `description`, `image`, `visibility`, `category`, `subcategory`, `expiration_date`, `created_at`) VALUES
(15, 'xwdwdwdwdwwwwwww', 'wwwwww', 'http://adminpanel/_media/banner/img-1.jpg', 'publish', 'smartphone', 97, '2024-02-09 14:31:00', '2024-01-17 10:31:24'),
(16, 'the vahe sins', 'wdwdw', 'http://adminpanel/_media/banner/image_65b3e2a51355b5.79440812.jpg', 'publish', 'smartphone', 97, '2024-03-01 20:49:00', '2024-01-26 16:49:41');

-- --------------------------------------------------------

--
-- Структура таблицы `audioVideo`
--

CREATE TABLE `audioVideo` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `camera`
--

CREATE TABLE `camera` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cards`
--

CREATE TABLE `cards` (
  `card_id` int NOT NULL,
  `card_number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `card_cvv` int NOT NULL,
  `expiration_date` date DEFAULT NULL,
  `owner_full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pin_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `visibility` enum('publish','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `visibility`, `parent_category`, `image`, `created_at`) VALUES
(97, 'iphone 15 pro max ', 'iphone 15 pro max ', 'publish', 'smartphone', 'http://adminpanel/_media/category/image_6597fd332e6bf2.50497308.png', '2024-01-05 13:19:55'),
(98, 'vaheSargsyan', 'vaheSargsyan', 'publish', 'audio-video', 'http://adminpanel/_media/category/image_6597fd4986d405.30358968.png', '2024-01-05 13:19:55');

-- --------------------------------------------------------

--
-- Структура таблицы `coupon`
--

CREATE TABLE `coupon` (
  `id` int NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `seller_size` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expiration_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `desktop`
--

CREATE TABLE `desktop` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `drones`
--

CREATE TABLE `drones` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sent` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `full_name`, `email`, `message`, `sent`) VALUES
(1, 13, 'JonnySins', 'celeb3@email.com', 'վահե սարգսյան աշխարհի ամենակտցրած մարդկանցից մեկը ', '2024-01-07 19:03:46');

-- --------------------------------------------------------

--
-- Структура таблицы `gameConsole`
--

CREATE TABLE `gameConsole` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `globalCategory`
--

CREATE TABLE `globalCategory` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `globalCategory`
--

INSERT INTO `globalCategory` (`id`, `name`) VALUES
(1, 'accessories'),
(2, 'audio-video'),
(3, 'camera'),
(4, 'desktop'),
(5, 'drone'),
(6, 'game console'),
(7, 'laptop'),
(8, 'monitor'),
(9, 'network device'),
(10, 'printer'),
(11, 'projector'),
(12, 'smart TV'),
(13, 'smartphone'),
(14, 'smartwatch'),
(15, 'tablet');

-- --------------------------------------------------------

--
-- Структура таблицы `laptop`
--

CREATE TABLE `laptop` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mainAdvertisingBanner`
--

CREATE TABLE `mainAdvertisingBanner` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `visibility` enum('publish','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subcategory` int NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `mainAdvertisingBanner`
--

INSERT INTO `mainAdvertisingBanner` (`id`, `name`, `description`, `image`, `visibility`, `category`, `subcategory`, `expiration_date`, `created_at`) VALUES
(7, 'the vahe sins', 'wdwdwdwdwd', 'http://adminpanel/_media/banner/image_65a8096fd77ce1.49978709.webp', 'publish', 'smartphone', 97, '2024-02-10 21:07:00', '2024-01-17 17:07:59'),
(8, 'PockeX wdwdwdwdwdwd', 'wdwdwwdwdwdwd', 'http://adminpanel/_media/banner/image_65a809c5e9dcc6.04134870.webp', 'publish', 'smartphone', 97, '2024-02-08 21:09:00', '2024-01-17 17:09:25'),
(9, 'vahesins', 'wdwdwdwd', 'http://adminpanel/_media/banner/image_65a809d884ff06.21676833.webp', 'publish', 'smartphone', 97, '2024-02-16 21:09:00', '2024-01-17 17:09:44');

-- --------------------------------------------------------

--
-- Структура таблицы `monitor`
--

CREATE TABLE `monitor` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `networkDevices`
--

CREATE TABLE `networkDevices` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discounted_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ordered_items_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_status` enum('pending','paid','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `delivery_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `coupon_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_approved` enum('no','yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'no',
  `is_received` enum('no','yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `discount_amount`, `discounted_total_amount`, `ordered_items_json`, `order_date`, `payment_status`, `delivery_address`, `delivery_date`, `notes`, `coupon_code`, `is_approved`, `is_received`) VALUES
(92, 13, '1000.00', '200.00', '800.00', NULL, '2023-12-31 11:18:59', 'paid', '', NULL, NULL, NULL, 'yes', 'no');

--
-- Триггеры `orders`
--
DELIMITER $$
CREATE TRIGGER `update_order_count` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
    IF NEW.is_approved = 'yes' THEN
        UPDATE statistics SET approved_yes = approved_yes + 1, total_orders = total_orders + 1;
    ELSE
        UPDATE statistics SET approved_no = approved_no + 1, total_orders = total_orders + 1;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_total_sales` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
    IF NEW.is_approved = 'yes' THEN
        UPDATE statistics SET total_sales = total_sales + NEW.discounted_total_amount; 
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `popularCategory`
--

CREATE TABLE `popularCategory` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `visibility` enum('publish','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subcategory` int NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `popularCategory`
--

INSERT INTO `popularCategory` (`id`, `name`, `description`, `visibility`, `category`, `subcategory`, `expiration_date`, `created_at`) VALUES
(33, 'wdw', 'dwd', 'publish', 'audio-video', 98, '2024-01-08 13:19:00', '2024-01-07 09:19:14');

-- --------------------------------------------------------

--
-- Структура таблицы `printer`
--

CREATE TABLE `printer` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `new_price` decimal(10,2) NOT NULL,
  `old_price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `purchase_count` int NOT NULL DEFAULT '0',
  `img1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img1_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img2_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img3_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img4_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img5_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img6_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `visibility` enum('publish','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subcategory` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `new_price`, `old_price`, `quantity`, `purchase_count`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img1_alt`, `img2_alt`, `img3_alt`, `img4_alt`, `img5_alt`, `img6_alt`, `visibility`, `category`, `subcategory`, `created_at`, `updated_at`) VALUES
(11, 'PockeX Pen Kit by Aspire', 'Brand: Aspire\r\nlalalallala', '5000.00', '6000.00', 10, 0, 'http://adminpanel/_media/product/image_65a2b678dfe420.88480880.jpg', 'http://adminpanel/_media/product/image_65a2b678dfeff4.27708390.jpg', 'http://adminpanel/_media/product/image_65a2b678dff523.97358277.jpg', 'http://adminpanel/_media/product/image_65a2b678dffa41.76657342.jpg', 'http://adminpanel/_media/product/image_65a2b678e00064.75813909.jpg', 'http://adminpanel/_media/product/image_65a2b678e02cf1.95704105.jpg', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'publish', 'smartphone', 97, '2024-01-13 16:12:40', '2024-01-13 16:12:40'),
(12, 'PockeX Pen Kit by Awdwdwspire', 'Brand: Aspire\r\nlalalallaladwdwdwd', '5000.00', '6000.00', 10, 0, 'http://adminpanel/_media/product/image_65a2b678dfe420.88480880.jpg', 'http://adminpanel/_media/product/image_65a2b678dfeff4.27708390.jpg', 'http://adminpanel/_media/product/image_65a2b678dff523.97358277.jpg', 'http://adminpanel/_media/product/image_65a2b678dffa41.76657342.jpg', 'http://adminpanel/_media/product/image_65a2b678e00064.75813909.jpg', 'http://adminpanel/_media/product/image_65a2b678e02cf1.95704105.jpg', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'publish', 'smartphone', 97, '2024-01-13 16:12:40', '2024-01-13 16:12:40'),
(13, 'wwwwwww', 'Brand: Aspirewdwdwdwlalalallaladwdwdwd', '5000.00', '6000.00', 10, 0, 'http://adminpanel/_media/product/image_65a2b678dfe420.88480880.jpg', 'http://adminpanel/_media/product/image_65a2b678dfeff4.27708390.jpg', 'http://adminpanel/_media/product/image_65a2b678dff523.97358277.jpg', 'http://adminpanel/_media/product/image_65a2b678dffa41.76657342.jpg', 'http://adminpanel/_media/product/image_65a2b678e00064.75813909.jpg', 'http://adminpanel/_media/product/image_65a2b678e02cf1.95704105.jpg', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'publish', 'smartphone', 97, '2024-01-13 16:12:40', '2024-01-13 16:12:40'),
(14, 'xxxxxx', 'Brand: Aspirewdwdwdwdwdwlalalallaladwdwdwd', '5000.00', '6000.00', 10, 0, 'http://adminpanel/_media/product/image_65a2b678dfe420.88480880.jpg', 'http://adminpanel/_media/product/image_65a2b678dfeff4.27708390.jpg', 'http://adminpanel/_media/product/image_65a2b678dff523.97358277.jpg', 'http://adminpanel/_media/product/image_65a2b678dffa41.76657342.jpg', 'http://adminpanel/_media/product/image_65a2b678e00064.75813909.jpg', 'http://adminpanel/_media/product/image_65a2b678e02cf1.95704105.jpg', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'publish', 'smartphone', 97, '2024-01-13 16:12:40', '2024-01-13 16:12:40'),
(15, 'q1qqqqwqw1w1w1w1w1', 'Brand: Awdwdwdwddwlalalallaladwdwdwd', '5000.00', '6000.00', 10, 0, 'http://adminpanel/_media/product/image_65a2b678dfe420.88480880.jpg', 'http://adminpanel/_media/product/image_65a2b678dfeff4.27708390.jpg', 'http://adminpanel/_media/product/image_65a2b678dff523.97358277.jpg', 'http://adminpanel/_media/product/image_65a2b678dffa41.76657342.jpg', 'http://adminpanel/_media/product/image_65a2b678e00064.75813909.jpg', 'http://adminpanel/_media/product/image_65a2b678e02cf1.95704105.jpg', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'publish', 'smartphone', 97, '2024-01-13 16:12:40', '2024-01-13 16:12:40'),
(16, 'wzzhhhhhhw1w1w1w1', 'Brand: Awdwdwwdwdwddwddwlalalallaladwdwdwd', '5000.00', '6000.00', 10, 0, 'http://adminpanel/_media/product/image_65a2b678dfe420.88480880.jpg', 'http://adminpanel/_media/product/image_65a2b678dfeff4.27708390.jpg', 'http://adminpanel/_media/product/image_65a2b678dff523.97358277.jpg', 'http://adminpanel/_media/product/image_65a2b678dffa41.76657342.jpg', 'http://adminpanel/_media/product/image_65a2b678e00064.75813909.jpg', 'http://adminpanel/_media/product/image_65a2b678e02cf1.95704105.jpg', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'publish', 'smartphone', 97, '2024-01-13 16:12:40', '2024-01-13 16:12:40'),
(17, 'wzzhhhhhhw1w1w1w12222222222222222', 'Brand: Awdwdwwdwdwddwddwlalalallaladwdwdwdww2www', '5000.00', '6000.00', 10, 0, 'http://adminpanel/_media/product/image_65a2b678dfe420.88480880.jpg', 'http://adminpanel/_media/product/image_65a2b678dfeff4.27708390.jpg', 'http://adminpanel/_media/product/image_65a2b678dff523.97358277.jpg', 'http://adminpanel/_media/product/image_65a2b678dffa41.76657342.jpg', 'http://adminpanel/_media/product/image_65a2b678e00064.75813909.jpg', 'http://adminpanel/_media/product/image_65a2b678e02cf1.95704105.jpg', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'nkar 1', 'publish', 'smartphone', 97, '2024-01-13 16:12:40', '2024-01-13 16:12:40');

--
-- Триггеры `product`
--
DELIMITER $$
CREATE TRIGGER `route_product_to_category` AFTER INSERT ON `product` FOR EACH ROW BEGIN
  -- smartphone
  IF NEW.category = 'smartphone' THEN
    INSERT INTO smartphone (product_id) VALUES (NEW.id);
  -- laptop
  ELSEIF NEW.category = 'laptop' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- tablet
  ELSEIF NEW.category = 'tablet' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- desktop
  ELSEIF NEW.category = 'desktop' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- monitor
  ELSEIF NEW.category = 'monitor' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- smartTV
  ELSEIF NEW.category = 'smartTV' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- camera
  ELSEIF NEW.category = 'camera' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- projector
  ELSEIF NEW.category = 'projector' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- gameConsole
  ELSEIF NEW.category = 'gameConsole' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- drones
  ELSEIF NEW.category = 'drones' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- smartwatch
  ELSEIF NEW.category = 'smartwatch' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- audioVideo
  ELSEIF NEW.category = 'audioVideo' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- accessories
  ELSEIF NEW.category = 'accessories' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- networkDevices
  ELSEIF NEW.category = 'networkDevices' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  -- printer
  ELSEIF NEW.category = 'printer' THEN
    INSERT INTO laptop (product_id) VALUES (NEW.id);
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `productAttributes`
--

CREATE TABLE `productAttributes` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `attribute_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `attribute_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `productAttributes`
--

INSERT INTO `productAttributes` (`id`, `product_id`, `attribute_name`, `attribute_value`) VALUES
(89, 11, 'color', 'red'),
(90, 11, 'resolution', '20 20 '),
(91, 11, 'producer', 'tigran '),
(92, 11, '4g_lte_capability', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `projector`
--

CREATE TABLE `projector` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `smartphone`
--

CREATE TABLE `smartphone` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `smartphone`
--

INSERT INTO `smartphone` (`id`, `product_id`) VALUES
(5, 11),
(6, 12),
(7, 13),
(8, 14),
(9, 15),
(10, 16),
(11, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `smartTV`
--

CREATE TABLE `smartTV` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `smartwatch`
--

CREATE TABLE `smartwatch` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `statistics`
--

CREATE TABLE `statistics` (
  `id` int NOT NULL,
  `approved_yes` int NOT NULL DEFAULT '0',
  `approved_no` int NOT NULL DEFAULT '0',
  `total_orders` int NOT NULL DEFAULT '0',
  `total_sales` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `statistics`
--

INSERT INTO `statistics` (`id`, `approved_yes`, `approved_no`, `total_orders`, `total_sales`) VALUES
(0, 1, 0, 1, '800.00');

-- --------------------------------------------------------

--
-- Структура таблицы `tablet`
--

CREATE TABLE `tablet` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `userCards`
--

CREATE TABLE `userCards` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `card_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_verified` enum('verified','not_verified') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'not_verified',
  `gender` enum('male','female','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `postal_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_settings_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `profile_picture_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cart_items_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `wishlist_items_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `purchased_items_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `used_coupons_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_banned` enum('no','yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `address`, `phone_number`, `is_verified`, `gender`, `birth_date`, `postal_code`, `user_settings_json`, `profile_picture_url`, `cart_items_json`, `wishlist_items_json`, `purchased_items_json`, `used_coupons_json`, `last_login_at`, `created_at`, `is_banned`) VALUES
(3, 'Celebrity3', 'celeb3@email.com', 'password3', 'Celebrity Three', 'Address 3', '456789012', 'verified', 'female', '1995-05-05', '56789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'yes'),
(4, 'Celebrity4', 'celeb4@email.com', 'password4', 'Celebrity Four', 'Address 4', '890123456', 'verified', 'male', '1988-08-08', '67890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'yes'),
(5, 'Celebrity5', 'celeb5@email.com', 'password5', 'Celebrity Five', 'Address 5', '234567890', 'verified', 'female', '1975-11-11', '78901', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'no'),
(6, 'Celebrity6', 'celeb6@email.com', 'password6', 'Celebrity Six', 'Address 6', '890123456', 'verified', 'male', '1980-04-20', '89012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'no'),
(7, 'Celebrity7', 'celeb7@email.com', 'password7', 'Celebrity Seven', 'Address 7', '345678901', 'verified', 'female', '1992-07-07', '90123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'no'),
(8, 'Celebrity8', 'celeb8@email.com', 'password8', 'Celebrity Eight', 'Address 8', '012345678', 'verified', 'male', '1987-12-25', '01234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'no'),
(9, 'Celebrity9', 'celeb9@email.com', 'password9', 'Celebrity Nine', 'Address 9', '987654321', 'verified', 'female', '1997-03-15', '12340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'no'),
(10, 'Celebrity10', 'celeb10@email.com', 'password10', 'Celebrity Ten', 'Address 10', '123456789', 'verified', 'male', '1983-09-30', '23401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'no'),
(11, 'Celebrity11', 'celeb11@email.com', 'password11', 'Celebrity Eleven', 'Address 11', '234567890', 'verified', 'female', '1990-06-18', '34012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'no'),
(12, 'Celebrity12', 'celeb12@email.com', 'password12', 'Celebrity Twelve', 'Address 12', '890123456', 'verified', 'male', '1978-02-28', '40123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:51:00', 'no'),
(13, 'jonny sins', 'jonnySins@gmail.com', 'vahe111', 'JonnySins', 'igorhp28t', '094161331', 'not_verified', 'male', '2023-12-06', '0601', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-31 09:36:31', 'no'),
(14, 'VaheSins', 'w33bv.gl@gmail.com', '123321', 'Vahe Sargsyan', 'vedi ihakobyan 28', '094161331', 'verified', 'male', '2005-03-30', '0601', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 10:48:30', 'no');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advertisingBanner`
--
ALTER TABLE `advertisingBanner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory` (`subcategory`);

--
-- Индексы таблицы `audioVideo`
--
ALTER TABLE `audioVideo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `owner_full_name` (`owner_full_name`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_parent_category` (`parent_category`);

--
-- Индексы таблицы `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `desktop`
--
ALTER TABLE `desktop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `drones`
--
ALTER TABLE `drones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_feedback_category` (`full_name`),
  ADD KEY `fk_feedback_email` (`email`);

--
-- Индексы таблицы `gameConsole`
--
ALTER TABLE `gameConsole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `globalCategory`
--
ALTER TABLE `globalCategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`);

--
-- Индексы таблицы `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `mainAdvertisingBanner`
--
ALTER TABLE `mainAdvertisingBanner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory` (`subcategory`);

--
-- Индексы таблицы `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `networkDevices`
--
ALTER TABLE `networkDevices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `popularCategory`
--
ALTER TABLE `popularCategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory` (`subcategory`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory` (`subcategory`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `productAttributes`
--
ALTER TABLE `productAttributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_attributes` (`product_id`);

--
-- Индексы таблицы `projector`
--
ALTER TABLE `projector`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `smartphone`
--
ALTER TABLE `smartphone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `smartTV`
--
ALTER TABLE `smartTV`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `smartwatch`
--
ALTER TABLE `smartwatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tablet`
--
ALTER TABLE `tablet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `userCards`
--
ALTER TABLE `userCards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_full_name` (`full_name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `advertisingBanner`
--
ALTER TABLE `advertisingBanner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `cards`
--
ALTER TABLE `cards`
  MODIFY `card_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `globalCategory`
--
ALTER TABLE `globalCategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `mainAdvertisingBanner`
--
ALTER TABLE `mainAdvertisingBanner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT для таблицы `popularCategory`
--
ALTER TABLE `popularCategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `productAttributes`
--
ALTER TABLE `productAttributes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT для таблицы `smartphone`
--
ALTER TABLE `smartphone`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `userCards`
--
ALTER TABLE `userCards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=999;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `advertisingBanner`
--
ALTER TABLE `advertisingBanner`
  ADD CONSTRAINT `advertisingbanner_ibfk_1` FOREIGN KEY (`subcategory`) REFERENCES `category` (`id`);

--
-- Ограничения внешнего ключа таблицы `audioVideo`
--
ALTER TABLE `audioVideo`
  ADD CONSTRAINT `audiovideo_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `camera`
--
ALTER TABLE `camera`
  ADD CONSTRAINT `camera_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`owner_full_name`) REFERENCES `users` (`full_name`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_parent_category` FOREIGN KEY (`parent_category`) REFERENCES `globalCategory` (`name`);

--
-- Ограничения внешнего ключа таблицы `desktop`
--
ALTER TABLE `desktop`
  ADD CONSTRAINT `desktop_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `drones`
--
ALTER TABLE `drones`
  ADD CONSTRAINT `drones_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_feedback_category` FOREIGN KEY (`full_name`) REFERENCES `users` (`full_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_feedback_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `gameConsole`
--
ALTER TABLE `gameConsole`
  ADD CONSTRAINT `gameconsole_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `laptop`
--
ALTER TABLE `laptop`
  ADD CONSTRAINT `laptop_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `mainAdvertisingBanner`
--
ALTER TABLE `mainAdvertisingBanner`
  ADD CONSTRAINT `mainadvertisingbanner_ibfk_1` FOREIGN KEY (`subcategory`) REFERENCES `category` (`id`);

--
-- Ограничения внешнего ключа таблицы `monitor`
--
ALTER TABLE `monitor`
  ADD CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `networkDevices`
--
ALTER TABLE `networkDevices`
  ADD CONSTRAINT `networkdevices_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `popularCategory`
--
ALTER TABLE `popularCategory`
  ADD CONSTRAINT `popularcategory_ibfk_1` FOREIGN KEY (`subcategory`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `popularcategory_ibfk_2` FOREIGN KEY (`category`) REFERENCES `globalCategory` (`name`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `printer`
--
ALTER TABLE `printer`
  ADD CONSTRAINT `printer_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`subcategory`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category`) REFERENCES `globalCategory` (`name`);

--
-- Ограничения внешнего ключа таблицы `productAttributes`
--
ALTER TABLE `productAttributes`
  ADD CONSTRAINT `fk_product_attributes` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `projector`
--
ALTER TABLE `projector`
  ADD CONSTRAINT `projector_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `smartphone`
--
ALTER TABLE `smartphone`
  ADD CONSTRAINT `smartphone_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `smartTV`
--
ALTER TABLE `smartTV`
  ADD CONSTRAINT `smarttv_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `smartwatch`
--
ALTER TABLE `smartwatch`
  ADD CONSTRAINT `smartwatch_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tablet`
--
ALTER TABLE `tablet`
  ADD CONSTRAINT `tablet_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `userCards`
--
ALTER TABLE `userCards`
  ADD CONSTRAINT `usercards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usercards_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `cards` (`card_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
