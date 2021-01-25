-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 25, 2021 lúc 06:06 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_comment`
--

CREATE TABLE `account_comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account_comment`
--

INSERT INTO `account_comment` (`id`, `product_id`, `name`, `email`, `body`, `created_at`, `updated_at`) VALUES
(50, 8, 'sd', 'sd', 'xc', '2020-04-05 01:53:11', '2020-04-05 01:53:11'),
(51, 8, 'sds', 'sdssdsd', 'c', '2020-04-05 01:53:26', '2020-04-05 01:53:26'),
(53, 19, 'fhghg', 'hgg', 'gh', '2020-04-05 07:00:37', '2020-04-05 07:00:37'),
(55, 19, 'sd', 'sd', 'sd', '2020-04-05 14:22:47', '2020-04-05 07:22:47'),
(56, 8, 'sdsd', 'sds', 'sds', '2020-04-05 15:47:41', '2020-04-05 15:47:41'),
(57, 1, 'admin', 'admin@gmail.com', 'Êm chân', '2020-04-11 14:30:00', '2020-04-11 14:30:00'),
(59, 1, 'admin', 'admin@gmail.com', 'đẹp', '2020-04-11 14:40:03', '2020-04-11 14:40:03'),
(60, 2, 'tai', 'sds@gmail.com', 'đẹp', '2020-04-11 15:02:58', '2020-04-11 15:02:58'),
(61, 2, 'admin', 'admin@gmail.com', 'êm chân', '2020-04-11 15:07:10', '2020-04-11 15:07:10'),
(63, 20, 'f', 'd', 'd', '2021-01-10 08:56:11', '2021-01-10 08:56:11'),
(64, 57, 'smile', 'smile@gmail.com', 'hello', '2021-01-11 07:03:51', '2021-01-11 07:03:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` double(20,2) NOT NULL,
  `shipment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `sku`, `customer_id`, `data`, `total_price`, `shipment`, `payment`, `date_order`, `status`, `created_at`, `updated_at`) VALUES
(26, 'KA09029826', 26, '{\"1\":{\"id\":\"1\",\"name\":\"Giày Thể Thao Siêu Nhẹ Cho Nam 202\",\"price\":980000,\"quantity\":2,\"attributes\":{\"size\":\"41\",\"color\":\"Trắng\",\"img\":\"nike-203.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 1960000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-04-09', '0', '2020-04-09 09:47:31', '2020-04-09 09:47:31'),
(27, 'KA09029827', 27, '{\"2\":{\"id\":\"2\",\"name\":\"Giày Nike Zoom Winflo 6 Nam - Trắng\",\"price\":199000,\"quantity\":\"1\",\"attributes\":{\"size\":\"38\",\"color\":\"Xanh\",\"img\":\"1586338923.png\",\"sale\":\"\"},\"conditions\":[]}}', 199000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-04-09', '0', '2020-04-09 09:48:08', '2020-04-09 09:48:08'),
(28, 'KA09029828', 28, '{\"1\":{\"id\":\"1\",\"name\":\"Giày Thể Thao Siêu Nhẹ Cho Nam 202\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"41\",\"color\":\"Trắng\",\"img\":\"nike-203.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 980000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-04-09', '0', '2020-04-09 09:56:23', '2020-04-09 09:56:23'),
(29, 'KA09029829', 29, '{\"1\":{\"id\":\"1\",\"name\":\"Giày Thể Thao Siêu Nhẹ Cho Nam 202\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"40\",\"color\":\"Trắng\",\"img\":\"nike-203.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 980000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-04-09', '1', '2020-04-09 10:01:57', '2020-04-11 15:10:07'),
(30, 'KA09029830', 30, '{\"2\":{\"id\":\"2\",\"name\":\"Giày Nike Zoom Winflo 6 Nam - Trắng\",\"price\":199000,\"quantity\":5,\"attributes\":{\"size\":\"40\",\"color\":\"Trăng\",\"img\":\"1586338923.png\",\"sale\":\"\"},\"conditions\":[]}}', 995000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-04-11', '2', '2020-04-11 14:41:49', '2020-04-11 14:43:04'),
(31, 'KA09029831', 31, '{\"16\":{\"id\":\"16\",\"name\":\"Giày tây da nam khóa kéo mẫu mới 2019 TRT-GTN-07\",\"price\":290000,\"quantity\":2,\"attributes\":{\"size\":\"38\",\"color\":\"Đen\",\"img\":\"49.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 580000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-04-11', '2', '2020-04-11 15:08:47', '2020-04-11 15:10:13'),
(32, 'KA09029832', 32, '{\"2\":{\"id\":\"2\",\"name\":\"Giày Nike Zoom Winflo 6 Nam - Trắng\",\"price\":199000,\"quantity\":10,\"attributes\":{\"size\":\"41\",\"color\":\"Trăng\",\"img\":\"1586338923.png\",\"sale\":\"\"},\"conditions\":[]}}', 1990000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-05-06', '0', '2020-05-06 01:19:34', '2020-05-06 01:19:34'),
(33, 'KA09029833', 33, '{\"1\":{\"id\":\"1\",\"name\":\"Giày Thể Thao Siêu Nhẹ Cho Nam 202\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"40\",\"color\":\"Trắng\",\"img\":\"nike-203.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 980000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-05-06', '0', '2020-05-06 01:39:24', '2020-05-06 01:39:24'),
(34, 'KA09029834', 34, '{\"1\":{\"id\":\"1\",\"name\":\"Giày Thể Thao Siêu Nhẹ Cho Nam 202\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"40\",\"color\":\"Trắng\",\"img\":\"nike-203.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 980000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-05-06', '0', '2020-05-06 01:45:43', '2020-05-06 01:45:43'),
(35, 'KA09029835', 35, '{\"1\":{\"id\":\"1\",\"name\":\"Giày Thể Thao Siêu Nhẹ Cho Nam 202\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"40\",\"color\":\"Trắng\",\"img\":\"nike-203.jpg\",\"sale\":\"\"},\"conditions\":[]},\"2\":{\"id\":\"2\",\"name\":\"Giày Nike Zoom Winflo 6 Nam - Trắng\",\"price\":199000,\"quantity\":\"1\",\"attributes\":{\"size\":\"42\",\"color\":\"Trăng\",\"img\":\"1586338923.png\",\"sale\":\"\"},\"conditions\":[]}}', 1179000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-05-06', '2', '2020-05-06 01:47:03', '2021-01-10 10:10:39'),
(36, 'KA09029836', 36, '{\"3\":{\"id\":\"3\",\"name\":\"Giày NIKE AIR FORCE 1\",\"price\":210000,\"quantity\":\"5\",\"attributes\":{\"size\":\"39\",\"color\":\"Trắng\",\"img\":\"18.png\",\"sale\":\"\"},\"conditions\":[]}}', 1050000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2020-05-06', '2', '2020-05-06 01:48:19', '2020-05-06 01:49:20'),
(37, 'KA09029837', 37, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:03:56', '2021-01-11 04:03:56'),
(38, 'KA09029838', 38, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:05:34', '2021-01-11 04:05:34'),
(39, 'KA09029839', 39, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:05:40', '2021-01-11 04:05:40'),
(40, 'KA09029840', 40, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:34:59', '2021-01-11 04:34:59'),
(41, 'KA09029841', 41, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:37:28', '2021-01-11 04:37:28'),
(42, 'KA09029842', 42, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:39:49', '2021-01-11 04:39:49'),
(43, 'KA09029843', 43, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:43:11', '2021-01-11 04:43:11'),
(44, 'KA09029844', 44, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:44:44', '2021-01-11 04:44:44'),
(45, 'KA09029845', 45, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:46:59', '2021-01-11 04:46:59'),
(46, 'KA09029846', 46, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:48:06', '2021-01-11 04:48:06'),
(47, 'KA09029847', 47, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:49:42', '2021-01-11 04:49:42'),
(48, 'KA09029848', 48, '{\"56\":{\"id\":\"56\",\"name\":\"BlaBle\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610337771.png\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 04:51:45', '2021-01-11 04:51:45'),
(49, 'KA09029849', 49, '{\"6\":{\"id\":\"6\",\"name\":\"Gỏi Cá Trix\",\"price\":87000,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"goica.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 87000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 06:38:44', '2021-01-11 06:38:44'),
(50, 'KA09029850', 50, '{\"57\":{\"id\":\"57\",\"name\":\"blebalfd\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Không\",\"img\":\"1610348557.jpeg\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 07:04:36', '2021-01-11 07:04:36'),
(51, 'KA09029851', 51, '{\"57\":{\"id\":\"57\",\"name\":\"blebalfd\",\"price\":10,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"1610348557.jpeg\",\"sale\":\"\"},\"conditions\":[]}}', 10.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 07:05:45', '2021-01-11 07:05:45'),
(52, 'KA09029855', 55, '{\"1\":{\"id\":\"1\",\"name\":\"Gà Tạ Ơn Siêu Cay\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"ga1.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 980000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 07:17:16', '2021-01-11 07:17:16'),
(53, 'KA09029856', 56, '{\"8\":{\"id\":\"8\",\"name\":\"Bún Cay Hải Phòng\",\"price\":25000,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"buncayhaiphong.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 25000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-11', '0', '2021-01-11 07:19:46', '2021-01-11 07:19:46'),
(54, 'KA09029857', 57, '{\"1\":{\"id\":\"1\",\"name\":\"Gà Tạ Ơn Siêu Cay\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"ga1.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 980000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-20', '0', '2021-01-20 03:50:11', '2021-01-20 03:50:11'),
(55, 'KA09029858', 58, '{\"1\":{\"id\":\"1\",\"name\":\"Gà Tạ Ơn Siêu Cay\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"ga1.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 980000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-20', '0', '2021-01-20 03:50:35', '2021-01-20 03:50:35'),
(56, 'KA09029859', 59, '{\"10\":{\"id\":\"10\",\"name\":\"Buffet Lẫu Nướng\",\"price\":260000,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"buffetlaunuong.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 260000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-20', '0', '2021-01-20 07:35:41', '2021-01-20 07:35:41'),
(57, 'KA09029860', 60, '{\"10\":{\"id\":\"10\",\"name\":\"Buffet Lẫu Nướng\",\"price\":260000,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"buffetlaunuong.jpg\",\"sale\":\"\"},\"conditions\":[]},\"1\":{\"id\":\"1\",\"name\":\"Gà Tạ Ơn Siêu Cay\",\"price\":980000,\"quantity\":\"1\",\"attributes\":{\"size\":\"0\",\"color\":\"Full\",\"img\":\"ga1.jpg\",\"sale\":\"\"},\"conditions\":[]}}', 1240000.00, 'Giao hàng tại nhà', 'Thanh toán sau khi nhận hàng', '2021-01-20', '2', '2021-01-20 08:19:23', '2021-01-21 14:56:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `address`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Đông trùn', 383059048, 'taibv@watermelon.vn', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-06 10:37:50', '2020-03-06 10:37:50'),
(2, 'Nguyễn Kim Ánh', 326913212, 'kimanh41276@gmail.com', '64 đường Phú diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-14 09:33:05', '2020-03-14 09:33:05'),
(3, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-23 08:20:48', '2020-03-23 08:20:48'),
(4, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-23 08:31:32', '2020-03-23 08:31:32'),
(5, 'Đông trùng tươi 250 gram', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-23 08:37:00', '2020-03-23 08:37:00'),
(6, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-23 09:25:12', '2020-03-23 09:25:12'),
(7, 'Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-25 10:26:58', '2020-03-25 10:26:58'),
(8, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-25 18:35:25', '2020-03-25 18:35:25'),
(9, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-29 09:18:59', '2020-03-29 09:18:59'),
(10, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-29 09:23:14', '2020-03-29 09:23:14'),
(11, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-03-29 09:25:44', '2020-03-29 09:25:44'),
(12, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 09:28:42', '2020-03-29 09:28:42'),
(13, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 09:40:42', '2020-03-29 09:40:42'),
(14, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 09:41:02', '2020-03-29 09:41:02'),
(15, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 09:41:40', '2020-03-29 09:41:40'),
(16, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 09:42:05', '2020-03-29 09:42:05'),
(17, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 09:43:09', '2020-03-29 09:43:09'),
(18, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 09:44:09', '2020-03-29 09:44:09'),
(19, 'WM Bui Van Tai', 383059048, 'kimanh41276@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 09:46:20', '2020-03-29 09:46:20'),
(20, 'Kim Ánh', 383059048, 'kimanh41276@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 10:02:11', '2020-03-29 10:02:11'),
(21, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-29 10:04:36', '2020-03-29 10:04:36'),
(22, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-03-31 06:03:56', '2020-03-31 06:03:56'),
(23, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', 'Giao hàng buổi sáng', '2020-04-03 23:15:48', '2020-04-03 23:15:48'),
(24, 'Đông trùng tươi sấy', 383059048, 't', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-04-09 09:31:10', '2020-04-09 09:31:10'),
(25, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-04-09 09:31:32', '2020-04-09 09:31:32'),
(26, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-04-09 09:47:31', '2020-04-09 09:47:31'),
(27, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-04-09 09:48:08', '2020-04-09 09:48:08'),
(28, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-04-09 09:56:23', '2020-04-09 09:56:23'),
(29, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-04-09 10:01:57', '2020-04-09 10:01:57'),
(30, 'Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-04-11 14:41:49', '2020-04-11 14:41:49'),
(31, 'Đông trùng tươi sấy', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-04-11 15:08:47', '2020-04-11 15:08:47'),
(32, 'Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-05-06 01:19:34', '2020-05-06 01:19:34'),
(33, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-05-06 01:39:24', '2020-05-06 01:39:24'),
(34, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-05-06 01:45:42', '2020-05-06 01:45:42'),
(35, 'WM Bui Van Tai', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-05-06 01:47:03', '2020-05-06 01:47:03'),
(36, 'Taibv123', 383059048, 'chutai3212@gmail.com', 'số nhà 9 nghách 136/64 đường cầu diễn - phường minh khai - Bắc từ liêm', NULL, '2020-05-06 01:48:19', '2020-05-06 01:48:19'),
(37, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:03:56', '2021-01-11 04:03:56'),
(38, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:05:34', '2021-01-11 04:05:34'),
(39, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:05:40', '2021-01-11 04:05:40'),
(40, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:34:59', '2021-01-11 04:34:59'),
(41, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:37:28', '2021-01-11 04:37:28'),
(42, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:39:49', '2021-01-11 04:39:49'),
(43, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:43:11', '2021-01-11 04:43:11'),
(44, 'PostgreSQL 13', 965480030, 'ladyking2211@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp qusa đi nf', '2021-01-11 04:44:43', '2021-01-11 04:44:43'),
(45, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:46:59', '2021-01-11 04:46:59'),
(46, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:48:06', '2021-01-11 04:48:06'),
(47, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:49:42', '2021-01-11 04:49:42'),
(48, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 04:51:44', '2021-01-11 04:51:44'),
(49, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 06:38:44', '2021-01-11 06:38:44'),
(50, 'Smile Smile', 965480030, 'lac.niem.tin.2211@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 07:04:36', '2021-01-11 07:04:36'),
(51, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 07:05:45', '2021-01-11 07:05:45'),
(52, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 07:05:49', '2021-01-11 07:05:49'),
(53, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 07:16:07', '2021-01-11 07:16:07'),
(54, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 07:16:20', '2021-01-11 07:16:20'),
(55, 'PostgreSQL 13', 965480030, 'lac.niem.tin.2211@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-11 07:17:16', '2021-01-11 07:17:16'),
(56, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp qusa đi nf', '2021-01-11 07:19:46', '2021-01-11 07:19:46'),
(57, 'Smile Smile', 965480030, 'lac.niem.tin.2211@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp qusa đi nf', '2021-01-20 03:50:11', '2021-01-20 03:50:11'),
(58, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp qusa đi nf', '2021-01-20 03:50:35', '2021-01-20 03:50:35'),
(59, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-20 07:35:40', '2021-01-20 07:35:40'),
(60, 'Smile Smile', 965480030, 'trancaothong2810@gmail.com', 'Thị trấn Đồng Lê, huyện Tuyên Hoá, tỉnh Quảng Bình', 'đẹp', '2021-01-20 08:19:23', '2021-01-20 08:19:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_20_142544_create_product_categories_table', 1),
(5, '2019_12_20_142617_create_product_types_table', 1),
(6, '2019_12_20_152322_create_products_colors_table', 1),
(7, '2019_12_20_152444_create_products_size_table', 1),
(8, '2019_12_20_152658_create_products_imagestable', 1),
(9, '2019_12_21_153907_create_companies_table', 1),
(10, '2019_12_25_115249_create_products_table', 1),
(11, '2019_12_29_101606_create_customers_table', 1),
(12, '2019_12_29_101654_create_billss_table', 1),
(13, '2020_03_23_165257_update_products_table', 2),
(14, '2020_03_29_024306_update_bills_table', 3),
(15, '2020_03_29_024753_update2_bills_table', 4),
(16, '2020_03_30_013421_update2_products_table', 5),
(17, '2020_03_30_013842_update3_products_table', 6),
(18, '2020_03_30_013947_update4_products_table', 7),
(19, '2020_03_30_014346_update5_products_table', 8),
(20, '2020_03_30_014649_update6_products_table', 9),
(21, '2020_03_30_034017_create_sale_codes_table', 10),
(22, '2020_04_04_152140_create_account_comment_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_type_id` bigint(20) DEFAULT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `price_sale` decimal(10,2) DEFAULT NULL,
  `excerpt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_type_id`, `product_image`, `sku`, `name`, `price`, `price_sale`, `excerpt`, `description`, `body`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'canhga.jpg', 'Gà-15784038', 'Cánh Gà Chiên Mắm', '110000.00', NULL, '', NULL, NULL, NULL, 1, '2020-03-06 10:33:06', '2020-03-06 10:33:06'),
(4, 1, 'supga.jpg', 'SupGa', 'Súp Gà Nấm Hương', '190000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:40:22', '2020-03-06 10:40:22'),
(5, 2, 'comboca.jpg', 'Ca-51034876', 'Combo Cá Kho Mắm', '190000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:42:23', '2020-03-06 10:42:23'),
(6, 2, 'goica.jpg', 'Ca-32783856', 'Gỏi Cá Trix', '87000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:44:10', '2020-03-06 10:44:10'),
(7, 2, 'cacuon.jpg', 'Ca-58951763', 'Cá Nục Cuốn Bánh Tráng', '80000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:45:56', '2020-03-06 10:45:56'),
(8, 3, 'buncayhaiphong.jpg', 'Bun-35129957', 'Bún Cay Hải Phòng', '25000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:47:03', '2020-03-06 10:47:03'),
(9, 3, 'bundaunhacuoi.jpg', 'Bun-37980861', 'Bún Đậu Nhà Cuội', '35000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:48:06', '2020-03-06 10:48:06'),
(10, 4, 'buffetlaunuong.jpg', 'Buffet-83280161', 'Buffet Lẫu Nướng', '260000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:49:53', '2020-03-06 10:49:53'),
(11, 4, 'buf2.jpg', 'Dokki-38260547', 'Buffet Dookki', '390000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:51:06', '2020-03-06 10:51:06'),
(12, 6, 'tr1.jpg', 'TS-14090315', 'Milktea - Trần Cao Vân', '185000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:52:27', '2020-03-06 10:52:27'),
(13, 4, 'buf3.jpg', 'Buffet3-00387589', 'Buffet Lẫu Nướng - Lữa Việt', '599000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:54:17', '2020-03-06 10:54:17'),
(14, 6, 'tr2.jpg', 'TS-23894478', 'Trà Sữa Mộc - Thái Phiên', '199000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:55:25', '2020-03-06 10:55:25'),
(15, 9, 'kem1.jpg', 'Kem-92714537', 'Kem Bơ Cô Vân', '15000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:57:18', '2020-04-09 06:59:12'),
(16, 6, 'tr3.jpg', 'TS-17243280', 'Trà Sữa 2CE', '290000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 10:59:21', '2020-03-06 10:59:21'),
(17, 7, 'cafe1.jpg', 'CF-69231146', 'Cafe Trung Nguyên', '19000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 11:00:29', '2020-03-06 11:00:29'),
(18, 8, 'che1.jpg', 'Chè-41980738', 'Chè Thái Cổ Truyền', '20000.00', NULL, NULL, NULL, NULL, NULL, 1, '2020-03-06 11:01:14', '2020-03-06 11:01:14'),
(19, 1, 'xoiga.jpg', 'TJ20200506085053', 'Xôi Gà Bà Hoa', '50000.00', NULL, NULL, NULL, NULL, '', 1, '2020-05-06 01:50:53', '2020-05-06 01:50:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_colors`
--

CREATE TABLE `products_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_colors`
--

INSERT INTO `products_colors` (`id`, `product_id`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, 'Full', NULL, NULL),
(2, 1, 'Không', NULL, NULL),
(5, 3, 'Không', NULL, NULL),
(6, 3, 'Full', NULL, NULL),
(7, 4, 'Không', NULL, NULL),
(8, 4, 'Full', NULL, NULL),
(28, 19, 'Full', NULL, NULL),
(29, 5, 'Không', NULL, NULL),
(30, 5, 'Full', NULL, NULL),
(32, 6, 'Full', NULL, NULL),
(33, 19, 'Không', NULL, NULL),
(34, 6, 'Không', NULL, NULL),
(35, 7, 'Full', NULL, NULL),
(36, 7, 'Không', NULL, NULL),
(37, 8, 'Full', NULL, NULL),
(38, 9, 'Full', NULL, NULL),
(39, 8, 'Không', NULL, NULL),
(40, 10, 'Full', NULL, NULL),
(41, 9, 'Không', NULL, NULL),
(42, 10, 'Không', NULL, NULL),
(43, 11, 'Full', NULL, NULL),
(45, 12, 'Không', NULL, NULL),
(46, 13, 'Full', NULL, NULL),
(47, 11, 'Không', NULL, NULL),
(48, 12, 'Full', NULL, NULL),
(49, 13, 'Không', NULL, NULL),
(50, 14, 'Full', NULL, NULL),
(51, 14, 'Không', NULL, NULL),
(52, 18, 'Full', NULL, NULL),
(53, 17, 'Không', NULL, NULL),
(54, 17, 'Full', NULL, NULL),
(55, 16, 'Không', NULL, NULL),
(56, 16, 'Full', NULL, NULL),
(57, 15, 'Không', NULL, NULL),
(58, 15, 'Full', NULL, NULL),
(59, 18, 'Không', NULL, NULL),
(60, 20, 'Không', NULL, NULL),
(61, 20, 'Full', NULL, NULL),
(62, 34, 'Đỏ', NULL, NULL),
(63, 34, 'Vàng', NULL, NULL),
(64, 35, 'Đỏ', NULL, NULL),
(65, 35, 'Vàng', NULL, NULL),
(66, 36, 'Trắng', NULL, NULL),
(67, 37, 'Trắng', NULL, NULL),
(68, 38, 'Trắng', NULL, NULL),
(69, 39, 'Trắng', NULL, NULL),
(70, 40, 'Trắng', NULL, NULL),
(71, 41, 'Đen', NULL, NULL),
(72, 42, 'Đen', NULL, NULL),
(73, 43, 'Hồng', NULL, NULL),
(74, 44, 'Đen', NULL, NULL),
(75, 44, 'Trắng', NULL, NULL),
(76, 45, 'Đỏ', NULL, NULL),
(77, 46, 'Đỏ', NULL, NULL),
(78, 46, 'Đen', NULL, NULL),
(79, 47, 'Đen', NULL, NULL),
(80, 47, 'Trắng', NULL, NULL),
(81, 48, 'Đen', NULL, NULL),
(82, 48, 'Trắng', NULL, NULL),
(174, 49, 'Đen', NULL, NULL),
(175, 49, 'Trắng', NULL, NULL),
(179, 2, 'Full', NULL, NULL),
(180, 2, 'Không', NULL, NULL),
(187, 50, 'Đen', NULL, NULL),
(191, 51, 'Đen', NULL, NULL),
(192, 51, 'Trắng', NULL, NULL),
(193, 51, 'Lam', NULL, NULL),
(194, 51, 'Đỏ', NULL, NULL),
(195, 51, 'Vàng', NULL, NULL),
(198, 52, 'Đen', NULL, NULL),
(199, 52, 'Trắng', NULL, NULL),
(200, 52, 'Lam', NULL, NULL),
(201, 52, 'Đỏ', NULL, NULL),
(202, 52, 'Vàng', NULL, NULL),
(203, 52, 'Hồng', NULL, NULL),
(207, 56, 'Full', NULL, NULL),
(208, 56, 'Không', NULL, NULL),
(209, 57, 'Full', NULL, NULL),
(210, 57, 'Không', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `images`, `created_at`, `updated_at`) VALUES
(3, 3, '1583461987.jpeg', '2020-03-06 10:33:07', '2020-03-06 10:33:07'),
(4, 5, '1583462544.jpeg', '2020-03-06 10:42:24', '2020-03-06 10:42:24'),
(5, 6, '1583462650.jpeg', '2020-03-06 10:44:10', '2020-03-06 10:44:10'),
(6, 7, '1583462756.jpeg', '2020-03-06 10:45:56', '2020-03-06 10:45:56'),
(7, 8, '1583462824.jpeg', '2020-03-06 10:47:04', '2020-03-06 10:47:04'),
(8, 9, '1583462887.jpeg', '2020-03-06 10:48:07', '2020-03-06 10:48:07'),
(9, 10, '1583462993.jpeg', '2020-03-06 10:49:53', '2020-03-06 10:49:53'),
(10, 11, '1583463066.jpeg', '2020-03-06 10:51:06', '2020-03-06 10:51:06'),
(11, 12, '1583463147.jpeg', '2020-03-06 10:52:27', '2020-03-06 10:52:27'),
(12, 13, '1583463257.jpeg', '2020-03-06 10:54:18', '2020-03-06 10:54:18'),
(13, 14, '1583463326.jpeg', '2020-03-06 10:55:26', '2020-03-06 10:55:26'),
(14, 15, '1583463438.jpeg', '2020-03-06 10:57:18', '2020-03-06 10:57:18'),
(15, 16, '1583463561.jpeg', '2020-03-06 10:59:22', '2020-03-06 10:59:22'),
(16, 17, '1583463629.jpeg', '2020-03-06 11:00:29', '2020-03-06 11:00:29'),
(17, 18, '1583463674.jpeg', '2020-03-06 11:01:14', '2020-03-06 11:01:14'),
(18, 19, '1583464006.jpeg', '2020-03-06 11:06:46', '2020-03-06 11:06:46'),
(19, 21, '1584981651.jpeg', '2020-03-23 09:40:51', '2020-03-23 09:40:51'),
(20, 22, '1584982976.jpeg', '2020-03-23 10:02:56', '2020-03-23 10:02:56'),
(21, 23, '1585153765.png', '2020-03-25 09:29:25', '2020-03-25 09:29:25'),
(22, 24, '1585157432.png', '2020-03-25 10:30:33', '2020-03-25 10:30:33'),
(23, 25, '1585186732.png', '2020-03-25 18:38:52', '2020-03-25 18:38:52'),
(24, 29, '1585532945.jpeg', '2020-03-29 18:49:05', '2020-03-29 18:49:05'),
(25, 30, '1585533478.jpeg', '2020-03-29 18:57:58', '2020-03-29 18:57:58'),
(26, 31, '1585533520.jpeg', '2020-03-29 18:58:40', '2020-03-29 18:58:40'),
(27, 32, '1585660513.jpeg', '2020-03-31 06:15:13', '2020-03-31 06:15:13'),
(28, 33, '1585981203.jpeg', '2020-04-03 23:20:03', '2020-04-03 23:20:03'),
(29, 34, '1586154837.jpeg', '2020-04-06 06:33:58', '2020-04-06 06:33:58'),
(30, 35, '1586154961.jpeg', '2020-04-06 06:36:01', '2020-04-06 06:36:01'),
(31, 36, '1586155053.jpeg', '2020-04-06 06:37:33', '2020-04-06 06:37:33'),
(32, 37, '1586155176.jpeg', '2020-04-06 06:39:36', '2020-04-06 06:39:36'),
(33, 38, '1586155189.jpeg', '2020-04-06 06:39:49', '2020-04-06 06:39:49'),
(34, 39, '1586155202.jpeg', '2020-04-06 06:40:03', '2020-04-06 06:40:03'),
(35, 40, '1586155287.jpeg', '2020-04-06 06:41:27', '2020-04-06 06:41:27'),
(36, 41, '1586155420.jpeg', '2020-04-06 06:43:41', '2020-04-06 06:43:41'),
(37, 42, '1586155531.jpeg', '2020-04-06 06:45:31', '2020-04-06 06:45:31'),
(38, 43, '1586155619.jpeg', '2020-04-06 06:46:59', '2020-04-06 06:46:59'),
(39, 44, '1586156224.jpeg', '2020-04-06 06:57:04', '2020-04-06 06:57:04'),
(40, 45, '1586156344.jpeg', '2020-04-06 06:59:04', '2020-04-06 06:59:04'),
(41, 46, '1586157520.jpeg', '2020-04-06 07:18:40', '2020-04-06 07:18:40'),
(42, 47, '1586158681.jpeg', '2020-04-06 07:38:01', '2020-04-06 07:38:01'),
(43, 48, '1586158760.jpeg', '2020-04-06 07:39:20', '2020-04-06 07:39:20'),
(44, 49, '1586311598.jpeg', '2020-04-08 02:06:38', '2020-04-08 02:06:38'),
(45, 50, '1586531729.jpeg', '2020-04-10 15:15:29', '2020-04-10 15:15:29'),
(46, 51, '1586616260.jpeg', '2020-04-11 14:44:20', '2020-04-11 14:44:20'),
(47, 52, '1586617876.jpeg', '2020-04-11 15:11:16', '2020-04-11 15:11:16'),
(48, 53, '1588729854.jpeg', '2020-05-06 01:50:54', '2020-05-06 01:50:54'),
(49, 54, '1610263735.jpeg', '2021-01-10 07:28:55', '2021-01-10 07:28:55'),
(50, 55, '1610264208.jpeg', '2021-01-10 07:36:48', '2021-01-10 07:36:48'),
(51, 56, '1610337569.png', '2021-01-11 03:59:29', '2021-01-11 03:59:29'),
(52, 57, '1610348558.jpeg', '2021-01-11 07:02:38', '2021-01-11 07:02:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_sizes`
--

CREATE TABLE `products_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_sizes`
--

INSERT INTO `products_sizes` (`id`, `product_id`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, 'XL', NULL, NULL),
(2, 1, 'L', NULL, NULL),
(4, 1, 'S', NULL, NULL),
(11, 3, 'L', NULL, NULL),
(14, 3, 'XL', NULL, NULL),
(15, 3, 'S', NULL, NULL),
(17, 4, 'L', NULL, NULL),
(18, 4, 'S', NULL, NULL),
(19, 4, 'XL', NULL, NULL),
(23, 5, 'L', NULL, NULL),
(24, 5, 'S', NULL, NULL),
(25, 5, 'XL', NULL, NULL),
(26, 8, 'L', NULL, NULL),
(28, 8, 'S', NULL, NULL),
(29, 6, 'L', NULL, NULL),
(30, 6, 'S', NULL, NULL),
(31, 6, 'XL', NULL, NULL),
(33, 7, 'XL', NULL, NULL),
(34, 7, 'S', NULL, NULL),
(35, 7, 'L', NULL, NULL),
(36, 8, 'XL', NULL, NULL),
(44, 9, 'L', NULL, NULL),
(45, 9, 'S', NULL, NULL),
(46, 9, 'XL', NULL, NULL),
(50, 10, 'L', NULL, NULL),
(51, 10, 'S', NULL, NULL),
(52, 10, 'XL', NULL, NULL),
(53, 12, 'S', NULL, NULL),
(54, 12, 'L', NULL, NULL),
(55, 12, 'XL', NULL, NULL),
(56, 11, 'L', NULL, NULL),
(59, 13, 'XL', NULL, NULL),
(60, 13, 'L', NULL, NULL),
(61, 13, 'S', NULL, NULL),
(63, 14, 'L', NULL, NULL),
(64, 14, 'XL', NULL, NULL),
(66, 14, 'S', NULL, NULL),
(68, 17, 'S', NULL, NULL),
(69, 17, 'L', NULL, NULL),
(70, 18, 'XL', NULL, NULL),
(71, 17, 'XL', NULL, NULL),
(72, 18, 'S', NULL, NULL),
(73, 16, 'L', NULL, NULL),
(74, 16, 'XL', NULL, NULL),
(75, 16, 'S', NULL, NULL),
(77, 20, 'XL', NULL, NULL),
(78, 20, 'L', NULL, NULL),
(83, 11, 'S', NULL, NULL),
(84, 11, 'XL', NULL, NULL),
(85, 19, 'L', NULL, NULL),
(86, 19, 'S', NULL, NULL),
(230, 19, 'XL', NULL, NULL),
(234, 18, 'L', NULL, NULL),
(241, 2, 'XL', NULL, NULL),
(242, 2, 'L', NULL, NULL),
(243, 2, 'S', NULL, NULL),
(244, 15, 'L', NULL, NULL),
(245, 15, 'S', NULL, NULL),
(246, 15, 'XL', NULL, NULL),
(264, 20, 'S', NULL, NULL),
(266, 56, 'S', NULL, NULL),
(267, 56, 'XL', NULL, NULL),
(268, 56, 'L', NULL, NULL),
(269, 57, 'XL', NULL, NULL),
(270, 57, 'L', NULL, NULL),
(271, 57, 'S', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Đồ Ăn', NULL, '2020-04-11 14:59:34'),
(2, 'Thức Uống', NULL, NULL),
(3, 'Ăn Vặt', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `product_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Gà', 1, NULL, '2020-04-11 15:00:00'),
(2, 'Cá', 1, NULL, NULL),
(3, 'Bún', 1, '2020-03-21 09:28:27', '2020-03-21 09:28:27'),
(4, 'Buffet', 1, '2020-03-21 09:28:05', '2020-03-21 09:28:05'),
(6, 'Trà sữa', 2, NULL, NULL),
(7, 'Cafe', 2, NULL, NULL),
(8, 'Chè ', 3, NULL, NULL),
(9, 'Kem', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale_codes`
--

CREATE TABLE `sale_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` bigint(20) NOT NULL,
  `excerpt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sale_codes`
--

INSERT INTO `sale_codes` (`id`, `code`, `value`, `excerpt`, `created_at`, `updated_at`) VALUES
(1, 'KH2323', 5, NULL, NULL, NULL),
(2, 'Smile', 10, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'admin2', 'admin@gmail.com', NULL, '123', NULL, '2020-04-11 15:13:08', '2020-04-11 15:13:15'),
(8, 'smile', 'smile@gmail.com', NULL, '1', NULL, '2021-01-10 10:10:03', '2021-01-11 03:33:06'),
(9, 'bla', 'smile1@gmail.com', NULL, '1', NULL, '2021-01-10 10:10:26', '2021-01-10 10:10:26'),
(10, 'Dawwnn', 'trancaothong2810@gmail.com', NULL, '$2y$10$nEvo.CD/UasVc1zQdD7NAO0DwmoVZOd7kM1c4JGjsMrqX814smgxW', 'Hehro5Oew3GY56Vg1GS1I3ODom84qMv7NqaHPOsRpY3cArbPylefB3eAWDUT', '2021-01-20 03:03:24', '2021-01-20 03:03:24');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account_comment`
--
ALTER TABLE `account_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `products_colors`
--
ALTER TABLE `products_colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_sizes`
--
ALTER TABLE `products_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sale_codes`
--
ALTER TABLE `sale_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sale_codes_code_unique` (`code`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account_comment`
--
ALTER TABLE `account_comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `products_colors`
--
ALTER TABLE `products_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT cho bảng `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `products_sizes`
--
ALTER TABLE `products_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sale_codes`
--
ALTER TABLE `sale_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
