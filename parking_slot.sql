-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 27, 2023 at 09:04 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parking_slot`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_holder`
--

DROP TABLE IF EXISTS `car_holder`;
CREATE TABLE IF NOT EXISTS `car_holder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slot_id` int NOT NULL,
  `car_number` varchar(12) DEFAULT NULL,
  `entry_time` datetime(6) NOT NULL,
  `exit_time` datetime(6) NOT NULL,
  `total_time` int NOT NULL,
  `total_pay` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `car_holder`
--

INSERT INTO `car_holder` (`id`, `slot_id`, `car_number`, `entry_time`, `exit_time`, `total_time`, `total_pay`) VALUES
(1, 1, 'HANU 0707', '2023-12-26 11:30:29.299068', '2023-12-27 15:38:53.487910', 28, 79),
(2, 2, 'RANO 8803', '2023-12-26 11:30:53.025475', '0000-00-00 00:00:00.000000', 0, 0),
(3, 3, 'DSAM 2808', '2023-12-26 11:32:03.656623', '0000-00-00 00:00:00.000000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slot_1`
--

DROP TABLE IF EXISTS `slot_1`;
CREATE TABLE IF NOT EXISTS `slot_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_number` varchar(20) NOT NULL,
  `entry_time` datetime(6) NOT NULL,
  `exit_time` datetime(6) NOT NULL,
  `total_time` int NOT NULL,
  `total_payment` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slot_1`
--

INSERT INTO `slot_1` (`id`, `car_number`, `entry_time`, `exit_time`, `total_time`, `total_payment`) VALUES
(1, 'HANU 0707', '2023-12-26 11:30:29.299068', '2023-12-27 16:03:02.992122', 28, 79);

-- --------------------------------------------------------

--
-- Table structure for table `slot_2`
--

DROP TABLE IF EXISTS `slot_2`;
CREATE TABLE IF NOT EXISTS `slot_2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_number` varchar(15) NOT NULL,
  `entry_time` datetime(6) NOT NULL,
  `exit_time` datetime(6) NOT NULL,
  `total_time` int NOT NULL,
  `total_payment` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slot_2`
--

INSERT INTO `slot_2` (`id`, `car_number`, `entry_time`, `exit_time`, `total_time`, `total_payment`) VALUES
(1, 'RANO 8803', '2023-12-26 11:30:53.025475', '0000-00-00 00:00:00.000000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slot_3`
--

DROP TABLE IF EXISTS `slot_3`;
CREATE TABLE IF NOT EXISTS `slot_3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_number` varchar(15) NOT NULL,
  `entry_time` datetime(6) NOT NULL,
  `exit_time` datetime(6) NOT NULL,
  `total_time` int NOT NULL,
  `total_payment` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slot_3`
--

INSERT INTO `slot_3` (`id`, `car_number`, `entry_time`, `exit_time`, `total_time`, `total_payment`) VALUES
(1, 'DSAM 2808', '2023-12-26 11:32:03.656623', '0000-00-00 00:00:00.000000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slot_details`
--

DROP TABLE IF EXISTS `slot_details`;
CREATE TABLE IF NOT EXISTS `slot_details` (
  `slot_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `code_name` varchar(255) NOT NULL,
  `qr_code_image` longblob NOT NULL,
  `total_car_vehicle` int NOT NULL,
  `total_colection` int NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`slot_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slot_details`
--

INSERT INTO `slot_details` (`slot_id`, `location`, `code_name`, `qr_code_image`, `total_car_vehicle`, `total_colection`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slot 1 in ground floor', 'slot 1', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000017f49444154789ced9a416ac3301045dfd4862c15e8017214e9cab9817d94dcc05a06647e17b2d3345db41bc5219ed9493cd067187f8d069bf83bc68f7f40e094534e39e5d4ab53b6440fe41e4b79dd499beada051525491358aa1b9d24493fa9e7ebda05956f35ce6c1a80e533d858d73b53fdc35a202c9edb9de8d41a8fb9b7e6273ab5c69afb202003d015c870ffe87a55f56f418d66667604e20496986b9bb3b5aeb7a66adddfd77828d5f4b7d5b51fcaec381b64330dd9acf6f7297bdd37a558dbf85b431f0a1a42419a581affe155d5bf0715ae8bc1c74b0ff1d26389cedf562da95af71a00a20a1abe331eb484d77d13ea2ef71aaaf114ea5292dc73da53b1e6b960291f6addfb5ddb9aaa3de69ae3ae40b81a71fa2c4628bdb6d2b507eade5a34755a8c675adcc73de709d46d8e1927a82fdcf1e87dce53294b50ef5a4bcceef72da95f33e4f174b55aeef17c906da56b0fd4e31cd3086051b3319e0a7ed736a46e3305003a11a74e1ac23a5df0b7553bcafcdf28a79c72caa95d505f3beacb22381c23ea0000000049454e44ae426082, 0, 0, 'active', '2023-12-26 09:32:00.000000', '2023-12-26 09:32:00.000000'),
(2, 'Slot 2 in ground floor', 'slot 2', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000017d49444154789ced9a416a85301445cfab42870a5d409712b7d69de952fe0eccb0a0dc0e627eed87d24e6c6c7c99a8c9815cc2cd353e34f1739b9e7e0181534e39e5945367a76c6b2d4c3dd81073cf505457dd549b2e6104882f5898d756c46601c04ae9ba1215378febad6fd2d1276d83d2ba6aa6da87e7cdf707cee8d47794c6d862c31fce785d2afbbe1310c1a0590c606ffeb3aaaf829accccac07c20cc09a8e39a575554d25df7f7a5cc4d5b66d5052d7152824695be864f94e826e4163b7a4518d67555f05152431bd4ad2adbd074f231bcaeaaa9aca99137b20a67c374dfd2c0b37cb617456f5ff9bda658ea41c32d2b20d07cf9cc3a8bcd8f3bd2345bd9496ddf3fe38ea6ef4ad11b2e535768bfbfe786a5fc7b467e5772d682caaab6e8aec76499a1b25b76fad91fbfe0fa85cc7b421adf882c6eedddcf707528f754c88ed02343278ce5fb767555f1915e6d5f4d6afb63ffb9c405785d4631d33dd85792daceb0ad4be9e03cdd7528ed7730ea5ccff8d72ca29a79cba04f5014d6ddb0e1632fbaf0000000049454e44ae426082, 0, 0, 'active', '2023-12-26 09:41:00.000000', '2023-12-26 09:41:00.000000'),
(3, 'Slot 3 in ground floor', 'slot 3', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000019149444154789ced99416ec3201444e717a42cf10d72147c831e295783a3e4066619096bba00dcb45eb41b07826195a02765f43d92e74f84f8fbf88f7f40c0a00635a8410daa754af2d11099009943b999abea3a056549920b40972e1449923fa9d7eb3a0515b2c7e576d7e94644747d5d3d537a77631e4284e37e7150e5ec66ef45ed237fabeadf9b2ab337041080efb93f3f8156d5774179112911474366ac29e6d4d6d535957cffe4763f29f0a7ebdb55df03953d1e34e4b600f053ce393257d5750aca9214b9460026426ecb2a742656d7d53585b4433900745004ccb6519998972ed7aafa1e28b93122457b17340043e647515557dfd4e67b45e4262182ce90b96718be3f8ccaf9de966823304b723b11a612775a55ffde549a7dc9f12ae661071d0550e565dbaafa2ea8adc704b096e61840fed4b8fa37a7c2d6d5078dd4267359c75efb4a4a645284bf3e04fe1a4b9d5f5fd72928bbb9ddde2f23631e49fdee31010062ef17c27f46887575749d81c2f35f8369afcddb2ceca246be3f92daf598db3702a3cf19d4a00635a86ea82f5b3eb33f1379f84b0000000049454e44ae426082, 0, 0, 'active', '2023-12-26 09:41:00.000000', '2023-12-26 09:41:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `slot_status`
--

DROP TABLE IF EXISTS `slot_status`;
CREATE TABLE IF NOT EXISTS `slot_status` (
  `slot_id` int NOT NULL,
  `mall_slot_number` int NOT NULL,
  `Available` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Available',
  `last_use` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slot_status`
--

INSERT INTO `slot_status` (`slot_id`, `mall_slot_number`, `Available`, `last_use`) VALUES
(1, 1, 'Available', '2023-12-26 09:32:00.000000'),
(2, 2, 'Available', '2023-12-26 09:41:00.000000'),
(3, 3, 'Available', '2023-12-26 09:41:00.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
