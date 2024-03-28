-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2024 at 02:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `joining_date`, `salary`, `is_active`, `updated_at`, `created_at`) VALUES
(360, 'John Doe', 'john@example.com', 1234567890, '2023-03-15', 50000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(361, 'Alice Smith', 'alice@example.com', 9876543210, '2023-04-20', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(362, 'Bob Johnson', 'bob@example.com', 5555555555, '2023-05-10', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(363, 'Emma Wilson', 'ema@example.com', 4444444444, '2023-06-25', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(364, 'Michael Brown', 'michael@example.com', 3333333333, '2023-07-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(365, 'Sophia Clark', 'sophia@example.com', 9999999999, '2023-10-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(366, 'William White', 'william@example.com', 8888888888, '2023-11-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(367, 'Charlotte Harris', 'charslotte@example.com', 7777777777, '2023-12-10', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(368, 'Daniel Martinez', 'daniel@example.com', 6666666666, '2024-01-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(369, 'Emily King', 'emily@example.com', 5555555555, '2024-02-28', 65000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(370, 'Benjamin Lee', 'benjamin@example.com', 4444444444, '2024-03-05', 75000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(371, 'Grace Young', 'grace@example.com', 3333333333, '2024-04-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(372, 'Lucas Scott', 'lucas@example.com', 2222222222, '2024-05-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(373, 'Ava Lopez', 'ava@example.com', 1111111111, '2024-06-10', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(374, 'Mia Green', 'mia@example.com', 9999999998, '2024-07-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(375, 'Jackson Hill', 'jackson@example.com', 8888888887, '2024-08-28', 65000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(376, 'Sophie Adams', 'sophie@example.com', 7777777776, '2024-09-05', 75000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(377, 'Ethan Parker', 'ethan@example.com', 6666666665, '2024-10-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(378, 'Isabella Campbell', 'isabella@example.com', 5555555554, '2024-11-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(379, 'Henry Martinez', 'henry@example.com', 4444444443, '2024-12-10', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(380, 'Liam Thompson', 'liam@example.com', 3333333332, '2025-01-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(381, 'Oliver Baker', 'oliver@example.com', 2222222221, '2025-02-28', 65000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(382, 'Amelia Murphy', 'amelia@example.com', 1111111110, '2025-03-05', 75000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(383, 'Evelyn Nelson', 'evelyn@example.com', 9999999997, '2025-04-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(384, 'Alexander Kelly', 'alexander@example.com', 8888888886, '2025-05-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(385, 'Harper Roberts', 'harper@example.com', 7777777775, '2025-06-10', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(386, 'Charlotte Cooper', 'charlotte@example.com', 6666666664, '2025-07-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(387, 'James Rivera', 'jamesr@example.com', 5555555553, '2025-08-28', 65000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(388, 'Aiden Reed', 'aiden@example.com', 4444444442, '2025-09-05', 75000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(389, 'Emma Stewart', 'emma@example.com', 3333333331, '2025-10-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(390, 'Abigail Bailey', 'abigail@example.com', 2222222220, '2025-11-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(391, 'Ethan Ross', 'ethanr@example.com', 1111111119, '2025-12-10', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(392, 'Mia Diaz', 'miakalifa@example.com', 9999999996, '2026-01-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(393, 'Emily Evans', 'emilye@example.com', 8888888885, '2026-02-28', 65000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(394, 'Michael Cooper', 'michaelc@example.com', 7777777774, '2026-03-05', 75000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(395, 'Sophia Morgan', 'sophiam@example.com', 6666666663, '2026-04-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(396, 'Daniel Turner', 'danielt@example.com', 5555555552, '2026-05-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(397, 'Ava Peterson', 'avap@example.com', 4444444441, '2026-06-10', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(398, 'Alexander Reed', 'alexanderr@example.com', 3333333330, '2026-07-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(399, 'Sophie Clark', 'sophiec@example.com', 2222222229, '2026-08-28', 65000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(400, 'Charlotte Walker', 'charlottew@example.com', 1111111118, '2026-09-05', 75000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(401, 'Oliver Stewart', 'olivers@example.com', 9999999995, '2026-10-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(402, 'Harper Peterson', 'harperp@example.com', 8888888884, '2026-11-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(403, 'Jackson Rodriguez', 'jacksonr@example.com', 7777777773, '2026-12-10', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(404, 'Amelia Cox', 'ameliac@example.com', 6666666662, '2027-01-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(405, 'Evelyn Adams', 'evelyna@example.com', 5555555551, '2027-02-28', 65000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(406, 'Liam Lee', 'liaml@example.com', 4444444440, '2027-03-05', 75000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(407, 'Ethan Turner', 'ethant@example.com', 3333333339, '2027-04-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(408, 'Olivia Cox', 'oliviac@example.com', 2222222228, '2027-05-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(409, 'Isabella White', 'isabellaw@example.com', 1111111117, '2027-06-10', 55000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(410, 'Lucas Turner', 'lucast@example.com', 9999999994, '2027-07-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(411, 'Aiden Ross', 'aidenr@example.com', 8888888883, '2027-08-28', 65000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(412, 'Mia Stewart', 'miast@example.com', 7777777772, '2027-09-05', 75000.00, 0, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(413, 'Evelyn Hill', 'evelynh@example.com', 6666666661, '2027-10-15', 70000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(414, 'Henry Rivera', 'henryr@example.com', 5555555550, '2027-11-22', 60000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(415, 'Ella Wright', 'ella@example.com', 4444444439, '2027-12-10', 55000.00, 1, '2024-03-28 03:22:05', '2024-03-28 06:15:45'),
(416, 'Oliver Peterson', 'oliverp@example.com', 3333333338, '2028-01-18', 80000.00, 1, '2024-03-28 06:15:45', '2024-03-28 06:15:45'),
(417, 'Sophia leone', 'sophi@example.com', 9879879877, '2028-02-28', 65000.00, 1, '2024-03-28 03:21:44', '2024-03-28 06:15:45'),
(420, 'Tharsikan', 'Tharsikan@gmail.com', 8383838383, '2024-03-15', 2000.00, 1, '2024-03-28 03:30:42', '2024-03-28 03:28:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
