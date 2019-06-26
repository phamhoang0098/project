-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2018 lúc 12:57 AM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database_yumyum`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `date`, `user_id`, `food_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ngon', '2018-11-19 00:00:00', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `foods`
--

INSERT INTO `foods` (`id`, `name`, `description`, `information`, `price`, `size`, `image`, `promotion_id`, `created_at`, `updated_at`, `type_id`, `rating`, `deleted_at`) VALUES
(1, 'PIZZA THỊT HUN KHÓI', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y. Bột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave;...</p>', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/053/643/files/118.jpg?v=1454043417381\" /></p>\r\n\r\n<p>Thời gian nướng v&agrave; nhiệt độ nướng b&aacute;nh: Thời gian nướng rất quan trọng. Chiếc pizza mang tới tận nh&agrave; cho kh&aacute;ch cũng rất n&oacute;ng hổi chứ kh&ocirc;ng hề nguội. Nếu pizza để nguội th&igrave; vị thực sự của n&oacute; sẽ biến mất. Thời gian để nướng chiếc pizza rất quan trọng. Nếu kh&ocirc;ng căn được thời gian nướng th&igrave; chiếc b&aacute;nh c&oacute; thể bị ch&aacute;y, hoặc c&oacute; thể đế b&aacute;nh kh&ocirc;ng thể gi&ograve;n v&agrave; cũng c&oacute; thể l&agrave; đế b&aacute;nh ch&iacute;n kh&ocirc;ng đều. Vậy n&ecirc;n nền nhiệt v&agrave; thời gian rất quan trọng để quyết định cho ra một chiếc pizza đế b&aacute;nh gi&ograve;n rụm khi đưa v&agrave;o miệng v&agrave; phần nh&acirc;n b&aacute;nh vẫn kh&ocirc;ng bị ch&aacute;y. Nhiệt độ nướng tại cửa h&agrave;ng pizza lu&ocirc;n đạt tại 250-350 độ C với thời gian 1-2 ph&uacute;t. Nếu tự l&agrave;m ở nh&agrave; th&igrave; nướng mất khoảng 7-8 ph&uacute;t trong nền nhiệt 250 độ C</p>', 350000, 'Vừa', '01.png', 1, NULL, NULL, 1, 100.00, NULL),
(2, 'PIZZA THẬP CẨM', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y. Bột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave;...</p>', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/053/643/files/119.jpg?v=1454043325664\" /></p>\r\n\r\n<p>Thời gian nướng v&agrave; nhiệt độ nướng b&aacute;nh: Thời gian nướng rất quan trọng. Chiếc pizza mang tới tận nh&agrave; cho kh&aacute;ch cũng rất n&oacute;ng hổi chứ kh&ocirc;ng hề nguội. Nếu pizza để nguội th&igrave; vị thực sự của n&oacute; sẽ biến mất. Thời gian để nướng chiếc pizza rất quan trọng. Nếu kh&ocirc;ng căn được thời gian nướng th&igrave; chiếc b&aacute;nh c&oacute; thể bị ch&aacute;y, hoặc c&oacute; thể đế b&aacute;nh kh&ocirc;ng thể gi&ograve;n v&agrave; cũng c&oacute; thể l&agrave; đế b&aacute;nh ch&iacute;n kh&ocirc;ng đều. Vậy n&ecirc;n nền nhiệt v&agrave; thời gian rất quan trọng để quyết định cho ra một chiếc pizza đế b&aacute;nh gi&ograve;n rụm khi đưa v&agrave;o miệng v&agrave; phần nh&acirc;n b&aacute;nh vẫn kh&ocirc;ng bị ch&aacute;y. Nhiệt độ nướng tại cửa h&agrave;ng pizza lu&ocirc;n đạt tại 250-350 độ C với thời gian 1-2 ph&uacute;t. Nếu tự l&agrave;m ở nh&agrave; th&igrave; nướng mất khoảng 7-8 ph&uacute;t trong nền nhiệt 250 độ C</p>', 356000, 'Vừa', '02.png', 2, NULL, NULL, 1, NULL, NULL),
(3, 'PIZZA GÀ HẢI SẢN', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y. Bột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave;...</p>', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/053/643/files/116.jpg?v=1454043015933\" /></p>\r\n\r\n<p>Thời gian nướng v&agrave; nhiệt độ nướng b&aacute;nh: Thời gian nướng rất quan trọng. Chiếc pizza mang tới tận nh&agrave; cho kh&aacute;ch cũng rất n&oacute;ng hổi chứ kh&ocirc;ng hề nguội. Nếu pizza để nguội th&igrave; vị thực sự của n&oacute; sẽ biến mất. Thời gian để nướng chiếc pizza rất quan trọng. Nếu kh&ocirc;ng căn được thời gian nướng th&igrave; chiếc b&aacute;nh c&oacute; thể bị ch&aacute;y, hoặc c&oacute; thể đế b&aacute;nh kh&ocirc;ng thể gi&ograve;n v&agrave; cũng c&oacute; thể l&agrave; đế b&aacute;nh ch&iacute;n kh&ocirc;ng đều. Vậy n&ecirc;n nền nhiệt v&agrave; thời gian rất quan trọng để quyết định cho ra một chiếc pizza đế b&aacute;nh gi&ograve;n rụm khi đưa v&agrave;o miệng v&agrave; phần nh&acirc;n b&aacute;nh vẫn kh&ocirc;ng bị ch&aacute;y. Nhiệt độ nướng tại cửa h&agrave;ng pizza lu&ocirc;n đạt tại 250-350 độ C với thời gian 1-2 ph&uacute;t. Nếu tự l&agrave;m ở nh&agrave; th&igrave; nướng mất khoảng 7-8 ph&uacute;t trong nền nhiệt 250 độ C</p>', 320000, 'Nhỏ', '05.png', 2, NULL, NULL, 1, NULL, NULL),
(4, 'PIZZA HẢI SẢN', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y. Bột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave;...</p>', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/053/643/files/117.jpg?v=1454040850337\" /></p>\r\n\r\n<p>Thời gian nướng v&agrave; nhiệt độ nướng b&aacute;nh: Thời gian nướng rất quan trọng. Chiếc pizza mang tới tận nh&agrave; cho kh&aacute;ch cũng rất n&oacute;ng hổi chứ kh&ocirc;ng hề nguội. Nếu pizza để nguội th&igrave; vị thực sự của n&oacute; sẽ biến mất. Thời gian để nướng chiếc pizza rất quan trọng. Nếu kh&ocirc;ng căn được thời gian nướng th&igrave; chiếc b&aacute;nh c&oacute; thể bị ch&aacute;y, hoặc c&oacute; thể đế b&aacute;nh kh&ocirc;ng thể gi&ograve;n v&agrave; cũng c&oacute; thể l&agrave; đế b&aacute;nh ch&iacute;n kh&ocirc;ng đều. Vậy n&ecirc;n nền nhiệt v&agrave; thời gian rất quan trọng để quyết định cho ra một chiếc pizza đế b&aacute;nh gi&ograve;n rụm khi đưa v&agrave;o miệng v&agrave; phần nh&acirc;n b&aacute;nh vẫn kh&ocirc;ng bị ch&aacute;y. Nhiệt độ nướng tại cửa h&agrave;ng pizza lu&ocirc;n đạt tại 250-350 độ C với thời gian 1-2 ph&uacute;t. Nếu tự l&agrave;m ở nh&agrave; th&igrave; nướng mất khoảng 7-8 ph&uacute;t trong nền nhiệt 250 độ C</p>', 120000, 'Vừa', '08.png', NULL, NULL, NULL, 1, NULL, NULL),
(5, 'MÌ Ý THỊT BẰM XỐT CÀ CHUA', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y. Bột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave;...</p>', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/053/643/files/117.jpg?v=1454040850337\" /></p>\r\n\r\n<p>Thời gian nướng v&agrave; nhiệt độ nướng b&aacute;nh: Thời gian nướng rất quan trọng. Chiếc pizza mang tới tận nh&agrave; cho kh&aacute;ch cũng rất n&oacute;ng hổi chứ kh&ocirc;ng hề nguội. Nếu pizza để nguội th&igrave; vị thực sự của n&oacute; sẽ biến mất. Thời gian để nướng chiếc pizza rất quan trọng. Nếu kh&ocirc;ng căn được thời gian nướng th&igrave; chiếc b&aacute;nh c&oacute; thể bị ch&aacute;y, hoặc c&oacute; thể đế b&aacute;nh kh&ocirc;ng thể gi&ograve;n v&agrave; cũng c&oacute; thể l&agrave; đế b&aacute;nh ch&iacute;n kh&ocirc;ng đều. Vậy n&ecirc;n nền nhiệt v&agrave; thời gian rất quan trọng để quyết định cho ra một chiếc pizza đế b&aacute;nh gi&ograve;n rụm khi đưa v&agrave;o miệng v&agrave; phần nh&acirc;n b&aacute;nh vẫn kh&ocirc;ng bị ch&aacute;y. Nhiệt độ nướng tại cửa h&agrave;ng pizza lu&ocirc;n đạt tại 250-350 độ C với thời gian 1-2 ph&uacute;t. Nếu tự l&agrave;m ở nh&agrave; th&igrave; nướng mất khoảng 7-8 ph&uacute;t trong nền nhiệt 250 độ C</p>', 120000, NULL, 'HA30.png', 2, NULL, NULL, 3, NULL, NULL),
(6, 'MÌ Ý HẢI SẢN XỐT CÀ CHUA', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/053/643/files/117.jpg?v=1454040850337\" /></p>\r\n\r\n<p>Thời gian nướng v&agrave; nhiệt độ nướng b&aacute;nh: Thời gian nướng rất quan trọng. Chiếc pizza mang tới tận nh&agrave; cho kh&aacute;ch cũng rất n&oacute;ng hổi chứ kh&ocirc;ng hề nguội. Nếu pizza để nguội th&igrave; vị thực sự của n&oacute; sẽ biến mất. Thời gian để nướng chiếc pizza rất quan trọng. Nếu kh&ocirc;ng căn được thời gian nướng th&igrave; chiếc b&aacute;nh c&oacute; thể bị ch&aacute;y, hoặc c&oacute; thể đế b&aacute;nh kh&ocirc;ng thể gi&ograve;n v&agrave; cũng c&oacute; thể l&agrave; đế b&aacute;nh ch&iacute;n kh&ocirc;ng đều. Vậy n&ecirc;n nền nhiệt v&agrave; thời gian rất quan trọng để quyết định cho ra một chiếc pizza đế b&aacute;nh gi&ograve;n rụm khi đưa v&agrave;o miệng v&agrave; phần nh&acirc;n b&aacute;nh vẫn kh&ocirc;ng bị ch&aacute;y. Nhiệt độ nướng tại cửa h&agrave;ng pizza lu&ocirc;n đạt tại 250-350 độ C với thời gian 1-2 ph&uacute;t. Nếu tự l&agrave;m ở nh&agrave; th&igrave; nướng mất khoảng 7-8 ph&uacute;t trong nền nhiệt 250 độ C</p>', 350000, NULL, 'HA32.png', 1, NULL, NULL, 3, NULL, NULL),
(7, 'XÚC XÍCH Ý NƯỚNG', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>', '<p>Nguồn nguy&ecirc;n liệu tươi ngon được nhập ch&iacute;nh ngạch hằng ng&agrave;y đ&atilde; qua kiểm định an to&agrave;n thực phẩm n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ tươi ngon của những chiếc b&aacute;nh nơi đ&acirc;y.<br />\r\nBột mỳ trắng mịn c&ugrave;ng với phương ph&aacute;p nh&agrave;o bột thủ c&ocirc;ng để l&agrave;m n&ecirc;n những chiếc đế b&aacute;nh khi nướng th&igrave; nở xốp v&agrave; gi&ograve;n m&agrave; kh&ocirc;ng hề chai cứng. Một sự kết hợp ho&agrave;n hảo giữa đế b&aacute;nh v&agrave; nh&acirc;n b&aacute;nh, Chiếc b&aacute;nh bạn nhận được sẽ vẫn c&ograve;n n&oacute;ng hổi, viền b&aacute;nh hơi ch&aacute;y cạnh rất thơm v&agrave; gi&ograve;n tan khi đưa v&agrave;o miệng. Nh&acirc;n b&aacute;nh đặc s&aacute;nh ph&ocirc; mai với sốt c&agrave; chua đỏ tươi v&agrave; nhiều bột xen lẫn c&aacute;c l&aacute;t thịt, hải sản tươi thơm ngon l&agrave;m n&ecirc;n chiếc pizza ho&agrave;n hảo v&agrave; đ&uacute;ng phong vị nhất.</p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/053/643/files/117.jpg?v=1454040850337\" /></p>\r\n\r\n<p>Thời gian nướng v&agrave; nhiệt độ nướng b&aacute;nh: Thời gian nướng rất quan trọng. Chiếc pizza mang tới tận nh&agrave; cho kh&aacute;ch cũng rất n&oacute;ng hổi chứ kh&ocirc;ng hề nguội. Nếu pizza để nguội th&igrave; vị thực sự của n&oacute; sẽ biến mất. Thời gian để nướng chiếc pizza rất quan trọng. Nếu kh&ocirc;ng căn được thời gian nướng th&igrave; chiếc b&aacute;nh c&oacute; thể bị ch&aacute;y, hoặc c&oacute; thể đế b&aacute;nh kh&ocirc;ng thể gi&ograve;n v&agrave; cũng c&oacute; thể l&agrave; đế b&aacute;nh ch&iacute;n kh&ocirc;ng đều. Vậy n&ecirc;n nền nhiệt v&agrave; thời gian rất quan trọng để quyết định cho ra một chiếc pizza đế b&aacute;nh gi&ograve;n rụm khi đưa v&agrave;o miệng v&agrave; phần nh&acirc;n b&aacute;nh vẫn kh&ocirc;ng bị ch&aacute;y. Nhiệt độ nướng tại cửa h&agrave;ng pizza lu&ocirc;n đạt tại 250-350 độ C với thời gian 1-2 ph&uacute;t. Nếu tự l&agrave;m ở nh&agrave; th&igrave; nướng mất khoảng 7-8 ph&uacute;t trong nền nhiệt 250 độ C</p>', 350000, NULL, 'HA31.png', 2, NULL, NULL, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_details`
--

CREATE TABLE `food_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `food_details`
--

INSERT INTO `food_details` (`id`, `image`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 'img/01.png', 1, NULL, NULL),
(2, 'img/02.png', 1, NULL, NULL),
(3, 'img/03.png', 1, NULL, NULL),
(4, 'img/02.png', 2, NULL, NULL),
(5, 'img/03.png', 2, NULL, NULL),
(6, 'img/04.png', 2, NULL, NULL),
(7, 'img/02.png', 3, NULL, NULL),
(8, 'img/03.png', 3, NULL, NULL),
(9, 'img/04.png', 3, NULL, NULL),
(10, 'img/02.png', 4, NULL, NULL),
(11, 'img/03.png', 4, NULL, NULL),
(12, 'img/04.png', 4, NULL, NULL),
(13, 'img/FA527.png', 5, NULL, NULL),
(14, 'img/GA08.png', 5, NULL, NULL),
(15, 'img/HA30.png', 5, NULL, NULL),
(16, 'img/HA31.png', 6, NULL, NULL),
(17, 'img/HA32.png', 6, NULL, NULL),
(18, 'img/HA33.png', 6, NULL, NULL),
(19, 'img/HA30.png', 7, NULL, NULL),
(20, 'img/HA31.png', 7, NULL, NULL),
(21, 'img/HA32.png', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_types`
--

CREATE TABLE `food_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `food_types`
--

INSERT INTO `food_types` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bánh pizza', '<p>B&aacute;nh pizza</p>', NULL, NULL, NULL),
(2, 'Bánh kem', '<p>B&aacute;nh kem</p>', NULL, NULL, NULL),
(3, 'Mỳ ý & Cơm', '<p>Mỳ v&agrave; cơm</p>', NULL, NULL, NULL),
(4, 'Đồ ăn nhẹ', '<p>Đồ ăn nhẹ</p>', NULL, NULL, NULL);

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
(3, '2018_10_17_044237_create_categories_table', 1),
(4, '2018_10_17_044351_create_slides_table', 1),
(5, '2018_10_17_044552_create_promotions_table', 1),
(6, '2018_10_17_044748_create_workspaces_table', 1),
(7, '2018_10_17_045122_create_stores_table', 1),
(8, '2018_10_17_045417_create_orders_table', 1),
(9, '2018_10_17_045534_create_foods_table', 1),
(10, '2018_10_17_045616_create_store_food_table', 1),
(11, '2018_10_17_045715_create_order_food_table', 1),
(12, '2018_10_17_045822_create_comments_table', 1),
(13, '2018_10_19_083320_change_name_column_restaurant_id_of_order_table', 1),
(14, '2018_10_19_083924_drop_workspace_table', 1),
(15, '2018_10_19_084254_add_column_to_user_table', 1),
(16, '2018_10_19_084849_create_roles_table', 1),
(17, '2018_10_19_084920_create_user_role_table', 1),
(18, '2018_10_30_061048_change_food_table', 1),
(19, '2018_10_30_153947_drop_column_of_foods_table', 1),
(20, '2018_10_30_155210_create_food_details_table', 1),
(21, '2018_10_31_022653_add_column_to_foods_table', 1),
(22, '2018_10_31_024456_create_food_types_table', 1),
(23, '2018_11_05_073353_create_reviews_table', 1),
(24, '2018_11_06_041130_change_tables_users_orders_comments_roles', 1),
(25, '2018_11_06_074110_change_foods_users_table', 1),
(26, '2018_11_08_064532_change_all_table_add_column_delete_at', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_food`
--

CREATE TABLE `order_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promotions`
--

INSERT INTO `promotions` (`id`, `discount`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, '2018-11-20 00:00:00', '2018-11-25 00:00:00', NULL, NULL, NULL),
(2, 15, '2018-11-20 00:00:00', '2018-11-17 00:00:00', NULL, NULL, NULL),
(3, 20, '2018-11-20 00:00:00', '2018-11-24 00:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `food_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5.00, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `links` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `stores`
--

INSERT INTO `stores` (`id`, `name`, `description`, `address`, `phone`, `avatar`, `workspace_id`, `created_at`, `updated_at`) VALUES
(1, 'YumYum - Trần Khất Chân', 'Số 434, Trần Khất Chân, Hà Nội', 'Số 434, Trần Khất Chân, Hà Nội', '0372505286', 'pizza.jpg', 1, NULL, NULL),
(2, 'YumYum - Linh Đàm', 'Kiot 28, Khu đô thị Linh Đàm, Hà Nội', 'Kiot 28, Khu đô thị Linh Đàm, Hà Nội', '03786333414', 'banh_ngot.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_food`
--

CREATE TABLE `store_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `confirm_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `username`, `level`, `confirm_password`, `avatar`, `deleted_at`) VALUES
(1, 'Phan Nhân Đạt', 'phannhandat@gmail.com', '$2y$10$rpX1NGQwfX7DFXl9Cs43DOGio2gxh5i5hdqWZTCgbpSefq6dXUEqm', NULL, NULL, NULL, '0372505286', 'Hà Nội', 'datpn0602', 1, '$2y$10$91jXiQfvmQ.l8MoQdvPvaOGPwzN5Y9BQugYb9wM9EKc9LNIswgo8G', 'user.png', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `food_details`
--
ALTER TABLE `food_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_food`
--
ALTER TABLE `order_food`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_food`
--
ALTER TABLE `store_food`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `food_details`
--
ALTER TABLE `food_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `food_types`
--
ALTER TABLE `food_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_food`
--
ALTER TABLE `order_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `store_food`
--
ALTER TABLE `store_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
