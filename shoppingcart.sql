-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 02:17 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_10_23_143922_create_products_table', 1),
(8, '2018_10_25_183038_create_users_table', 1),
(9, '2018_10_30_060540_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(1, '2018-10-30 02:26:02', '2018-10-30 02:26:02', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:12:\"Harry Potter\";s:11:\"description\";s:31:\"Super cool -at least as a child\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:12:\"Harry Potter\";s:11:\"description\";s:31:\"Super cool -at least as a child\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:7:\"Dracula\";s:11:\"description\";s:37:\"Great horror , able to terrify anyone\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:7:\"Dracula\";s:11:\"description\";s:37:\"Great horror , able to terrify anyone\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:5:\"Mummy\";s:11:\"description\";s:38:\"Fictional novel- super cool as a child\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:5:\"Mummy\";s:11:\"description\";s:38:\"Fictional novel- super cool as a child\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:30;}', 'asdf', 'john', 'ch_1DQs4zDEjWBsgpwP2rvf3uC2'),
(2, '2018-10-30 05:34:56', '2018-10-30 05:34:56', 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:7:\"Dracula\";s:11:\"description\";s:37:\"Great horror , able to terrify anyone\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:7:\"Dracula\";s:11:\"description\";s:37:\"Great horror , able to terrify anyone\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:12:\"Harry Potter\";s:11:\"description\";s:31:\"Super cool -at least as a child\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:12:\"Harry Potter\";s:11:\"description\";s:31:\"Super cool -at least as a child\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:20;}', 'ghj', 'john', 'ch_1DQv1nDEjWBsgpwPU1uIDR49'),
(3, '2018-10-30 05:36:39', '2018-10-30 05:36:39', 3, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:7:\"Dracula\";s:11:\"description\";s:37:\"Great horror , able to terrify anyone\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:7:\"Dracula\";s:11:\"description\";s:37:\"Great horror , able to terrify anyone\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:10;}', 't', 'smith', 'ch_1DQv3SDEjWBsgpwPZn9XGrJq'),
(4, '2018-10-30 09:10:05', '2018-10-30 09:10:05', 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:12:\"Harry Potter\";s:11:\"description\";s:31:\"Super cool -at least as a child\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:12:\"Harry Potter\";s:11:\"description\";s:31:\"Super cool -at least as a child\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:7:\"Dracula\";s:11:\"description\";s:37:\"Great horror , able to terrify anyone\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:7:\"Dracula\";s:11:\"description\";s:37:\"Great horror , able to terrify anyone\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:2;s:5:\"price\";i:20;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:5:\"Mummy\";s:11:\"description\";s:38:\"Fictional novel- super cool as a child\";s:5:\"price\";i:10;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2018-10-26 14:57:56\";s:10:\"updated_at\";s:19:\"2018-10-26 14:57:56\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg\";s:5:\"title\";s:5:\"Mummy\";s:11:\"description\";s:38:\"Fictional novel- super cool as a child\";s:5:\"price\";i:10;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:4;s:10:\"totalPrice\";i:40;}', 'asdf', 'mark', 'ch_1DQyNyDEjWBsgpwPDyDCvHOT');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `imagePath`, `title`, `description`, `price`) VALUES
(1, '2018-10-26 09:27:56', '2018-10-26 09:27:56', 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg', 'Harry Potter', 'Super cool -at least as a child', 10),
(2, '2018-10-26 09:27:56', '2018-10-26 09:27:56', 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg', 'Dracula', 'Great horror , able to terrify anyone', 10),
(3, '2018-10-26 09:27:56', '2018-10-26 09:27:56', 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg', 'Mummy', 'Fictional novel- super cool as a child', 10),
(4, '2018-10-26 09:27:56', '2018-10-26 09:27:56', 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg', 'Elm street', 'a very good book', 10),
(5, '2018-10-26 09:27:56', '2018-10-26 09:27:56', 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg', 'Mondi cristo', 'A revenge story which travels in unexpected paths', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `remember_token`, `email`, `password`) VALUES
(1, '2018-10-26 09:30:11', '2018-10-26 09:30:11', '7750XzAJgPbFuaUkXxqoY8R8IKn9XdYnJrDJf9cql0n8CUjWiraT0IOrs6hv', 'shameeerushahul@gmail.com', '$2y$10$fbJrL5SojYa82LLM.0RAh.xr31k.7hanSZzLKfHOjKJxRfSySQR4K'),
(2, '2018-10-26 09:30:30', '2018-10-26 09:30:30', 'e9PYlySQ4gzKIfl0fIoX7ObjP5atiNBidKiTmKea7Wm041noECPYfR8AJa1E', 'john@gmail.com', '$2y$10$roc1QzY4jhQxKVpdVhDlEePeyJyyQDeInVK37GboRqwoZfjl./zH6'),
(3, '2018-10-30 05:36:04', '2018-10-30 05:36:04', 'nvw5RjXOQ9FDHwQqDGUumGCwP44YX5JwZJDB4wRXR9ViDJBcSawYJN70aCRf', 'smith@yahoo.com', '$2y$10$bYvNsVpmTsPwFZI1JSc4u.l8ZKNlCvmn1IFtqwNhaPiTGGnfHqua2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
