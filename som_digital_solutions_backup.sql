-- SOM Digital Solutions Database Backup
-- Compatible with MySQL/phpMyAdmin (cPanel)
-- Generated on: 2025-09-06
-- Database: SOM Digital Solutions Website

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `som_digital_solutions`

-- --------------------------------------------------------

--
-- Table structure for table `contact_submissions`
--

CREATE TABLE `contact_submissions` (
  `id` varchar(36) NOT NULL DEFAULT (UUID()),
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text DEFAULT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_submissions`
--

INSERT INTO `contact_submissions` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`) VALUES
('b428ed17-3b8d-4b67-aa7c-a496f619106f', 'cabduqadir ahmed', 'cabduqadircali23@gmail.com', '+25261', 'consultation', 'I need to build my own website.', '2025-08-11 04:31:06'),
('a2a25cda-e6c3-48cf-b380-5d4a4e6bfd8e', 'Ali', 'adan34120@gmail.com', '7207361807', 'gps-solutions', 'Sbdbhsdhhs', '2025-09-02 21:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL DEFAULT (UUID()),
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

COMMIT;

-- --------------------------------------------------------
-- Additional Notes:
-- 1. This backup is compatible with MySQL 5.7+ and MariaDB 10.2+
-- 2. Import this file through phpMyAdmin in your cPanel
-- 3. Make sure to create a new database first before importing
-- 4. The UUID() function generates unique IDs for new records
-- 5. All text fields are UTF-8 compatible for international characters
-- --------------------------------------------------------