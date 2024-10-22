-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 01:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_info`
--

CREATE TABLE `brand_info` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_info`
--

INSERT INTO `brand_info` (`id`, `name`, `description`, `contact`) VALUES
(1, 'Meredian', 'Good in quality', 1885555214),
(2, 'Arong', 'dress', 1258744851);

-- --------------------------------------------------------

--
-- Table structure for table `cartegories`
--

CREATE TABLE `cartegories` (
  `id` bigint(250) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(200) NOT NULL,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartegories`
--

INSERT INTO `cartegories` (`id`, `name`, `description`, `contact`) VALUES
(1, 'CHips', 'Good in quality', 1996666325);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `id` bigint(250) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `address` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`id`, `name`, `email`, `password`, `address`, `details`, `contact`) VALUES
(1, 'Anika chakraborty', 'anika@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Jubliroad,Chittagong', 'Chittagong,Bangladesh', 185222222),
(2, 'Omi Biswas', 'omi@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'potiya,chittagong', 'Chittagong,Bangladesh', 1785552123),
(3, 'Moinul Ehetesam', 'moinul@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'potiya,chittagong', 'Chittagong,Bangladesh', 1874444526);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_info`
--

CREATE TABLE `products_info` (
  `id` bigint(250) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `supplierinfo` varchar(255) NOT NULL,
  `originalprice` decimal(10,3) NOT NULL,
  `buydate` date NOT NULL,
  `expiredate` date NOT NULL,
  `sellprice` decimal(10,2) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_info`
--

INSERT INTO `products_info` (`id`, `name`, `brand`, `category`, `description`, `supplierinfo`, `originalprice`, `buydate`, `expiredate`, `sellprice`, `quantity`, `contact`) VALUES
(1, 'CHips', '1', '1', 'Good in quality', '1', 150.000, '2024-07-12', '2024-07-26', 155.00, 5, 1521111478),
(2, 'Juice', '1', '1', 'Good in quality', '1', 50.000, '2024-07-12', '2024-08-10', 53.00, 1, 187444521);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) NOT NULL,
  `purchaseorder_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `quantity` int(100) NOT NULL,
  `unit_price` decimal(10,0) NOT NULL,
  `totalprice` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchaseorder_id`, `products_id`, `quantity`, `unit_price`, `totalprice`) VALUES
(1, 1, 2, 3, 53, 159),
(2, 1, 1, 1, 155, 155),
(3, 2, 2, 1, 53, 53),
(4, 2, 1, 1, 155, 155),
(5, 3, 1, 3, 155, 465),
(6, 3, 2, 3, 53, 159),
(7, 4, 1, 1, 155, 155),
(8, 5, 2, 1, 53, 53),
(9, 7, 1, 1, 155, 155),
(10, 8, 1, 1, 155, 155);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `total_amount` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `grand_total` decimal(10,0) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `date`, `supplier_id`, `total_amount`, `discount`, `grand_total`, `purchase_code`) VALUES
(1, NULL, 1, 314, 14, 300, '000001'),
(2, '2024-07-26', 1, 208, 8, 200, '000002'),
(3, '2024-07-26', 3, 624, 24, 600, '000003'),
(4, '2024-09-10', 20, 155, 5, 150, '000004'),
(5, '2024-09-10', 20, 53, 3, 50, '000005'),
(6, '2024-09-10', 20, 53, 3, 50, '000006'),
(7, '2024-09-12', 1, 155, 2, 153, '000007'),
(8, '2024-09-19', 1, 155, 2, 153, '000008');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` bigint(20) NOT NULL,
  `salesorder_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `unit_price` decimal(10,0) NOT NULL,
  `totalprice` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`id`, `salesorder_id`, `products_id`, `quantity`, `unit_price`, `totalprice`) VALUES
(18, 17, 2, 2, 53, 106),
(19, 17, 1, 4, 155, 620),
(20, 18, 1, 1, 155, 155),
(21, 19, 1, 1, 155, 155),
(22, 21, 1, 1, 155, 155);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `total_amount` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `grand_total` decimal(10,0) NOT NULL,
  `sales_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`id`, `date`, `customer_id`, `total_amount`, `discount`, `grand_total`, `sales_code`) VALUES
(17, '2024-07-26', 1, 726, 26, 700, '000001'),
(19, '2024-09-11', 2, 155, 2, 153, '000002'),
(20, '2024-09-11', 2, 155, 2, 153, '000003'),
(21, '2024-09-11', 2, 155, 2, 153, '000004');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_info`
--

CREATE TABLE `supplier_info` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` bigint(15) NOT NULL,
  `details` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_info`
--

INSERT INTO `supplier_info` (`id`, `name`, `email`, `password`, `address`, `contact`, `details`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Jafree Traders', 'jafree@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Jubliroad,Chittagong', 1785555236, 'Chittagong,Bangladesh', '2024-09-05 10:15:40', '2024-09-05 10:15:40', 'No'),
(3, 'Palmal Group', 'palmal@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Jubliroad,Chittagong', 1524444630, 'Product Supplier', '2024-09-05 10:15:40', '2024-09-05 10:15:40', 'No'),
(4, 'K hussain', 'hussain@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Jubliroad,Chittagong', 1885555234, 'Chittagong,Bangladesh', '2024-09-05 10:15:40', '2024-09-05 10:15:40', 'No'),
(19, 'salman', 'shoaibcse39@gmail.com', 'admin123', 'chittagong', 1521111478, 'GOOD', '2024-09-05 06:26:38', '2024-09-05 06:26:38', 'No'),
(20, 'JK', 'shoaibcse39@gmail.com', 'admin123', 'chittagong', 1521111478, 'GOOD', '2024-09-05 06:27:55', '2024-09-05 06:27:55', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'masteradmin', 'masteradmin@gmail.com', NULL, '$2y$10$7AUHLZBcYtsgslsYrDiLKeu9g./Aqd0qtNXSLjHILAUTFpdUkoGay', NULL, '2024-09-09 01:54:17', '2024-09-09 01:54:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_info`
--
ALTER TABLE `brand_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartegories`
--
ALTER TABLE `cartegories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products_info`
--
ALTER TABLE `products_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_info`
--
ALTER TABLE `supplier_info`
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
-- AUTO_INCREMENT for table `brand_info`
--
ALTER TABLE `brand_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cartegories`
--
ALTER TABLE `cartegories`
  MODIFY `id` bigint(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` bigint(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_info`
--
ALTER TABLE `products_info`
  MODIFY `id` bigint(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `supplier_info`
--
ALTER TABLE `supplier_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
