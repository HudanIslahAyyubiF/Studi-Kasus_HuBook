-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2023 at 01:59 PM
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
-- Database: `online_book_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Elias', 'hdn@gmail.com', '$2y$10$Nqq/y251QX2Ccvb1Ax7hUuMqQSkG3yRLCxN2KPdetnSP3oaXVH70a');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Tere Liye'),
(3, 'Manabu Kaminaga'),
(4, 'Robert Kiyosaki');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`) VALUES
(8, 'Psychic Detective Yakumo - The Vanished Spirit', 3, 'Yakumo terbangun dan mendapati mayat bermandikan darah tergeletak di sampingnya. dalam keadaan bingung, hantu gadis berseragam muncul di depannya dan bergumam, “Takkan kumaafkan”. Yakumo mengejarnya, namun berakhir dicurigai sebagai tersangka pembunuhan.  Sementara itu, Haruka yang mendapatkan informasi dari Gotou bahwa Yakumo menjadi tersangka, menemukan fakta bahwa persis sebelum menyembunyikan diri, Yakumo mendapat permintaan untuk menyelidiki suatu kasus fenomena gaib. Bagaimana nasib yakumo yang menjadi buron?', 4, '9786024804824_Psychic-Detective-Yakumo_The-Vanished-Spirit.jpg', 'Shinrei Tantei Yakumo - Volume 08 - The Vanished Spirit.pdf'),
(9, 'Hujan', 1, 'Perjalanan hidup seorang anak yatim di tahun 2042. Dengan banyaknya rintangan hidup yang harus dilalui Lail juga harus menghadapi rintangan untuk mendapatkan cinta sejatinya.', 4, 'Hujan - Tere Liye.jpg', 'Porsche 911 GT3RS 992 spec.pdf'),
(11, 'Bedebah di Ujung Tanduk', 1, 'Thomas bertarung sengit dengan Bujang. Naasnya saat pertarungan itu dilakukan, gedung yang mereka gunakan untuk bertarung diserang oleh segerombolan orang bersenjata. Awalnya, Bujang berpikir dialah yang akan diserang kelompok bersenjata itu. Namun, mereka justru mengincar Thomas. Ternyata, alasan Thomas diincar lantaran ia melakukan kesalahan besar dan membuat penguasa jalur sutra, kelompok “teratai Emas” geram karena wilayah kekuasaanya diganggu. Thomas dan Bujang akhirnya mengumpulkan semua kekuatannya untuk pergi ke Bhutan. Mereka dibantu Ayoko, Yuki, Kiko, Salonga, Junior, dan White untuk bertempur dengan kelompok teratai Emas. Siapakah yang akan memenangkan pertarungan sengit ini?', 4, '9786239726218.jpg', 'Tere Liye -  Bedebah di Ujung Tanduk.pdf'),
(12, 'Rich Dad Poor Dad', 4, 'Dalam buku ini, Robert Kiyosaki mencoba mengajarkan para pembaca untuk mulai saat ini melatih anak dan cucunya kelak, bahkan untuk dirinya sendiri agar cerdas dalam mengelola persoalan finansial. Selain itu, Robert juga menggarisbawahi bahwa orang kaya tidak bekerja hanya untuk uang, melainkan uang yang akan bekerja untuknya. Rich Dad Poor Dad—Buku Pengelolaan Keuangan Pribadi No. 1 Sepanjang Masa!', 5, '9786020333175_rich-dad-poor-dad-_edisi-revisi_.jpg', 'Rich dad , poor dad .pdf');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(4, 'Novel'),
(5, 'Financial');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
