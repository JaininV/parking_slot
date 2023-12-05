-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 30, 2023 at 05:36 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

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
  `slot_id` int NOT NULL AUTO_INCREMENT,
  `entry_time` datetime(6) NOT NULL,
  `exit_time` datetime(6) NOT NULL,
  `total_time` int NOT NULL,
  `total_pay` int NOT NULL,
  PRIMARY KEY (`slot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slot_1`
--

DROP TABLE IF EXISTS `slot_1`;
CREATE TABLE IF NOT EXISTS `slot_1` (
  `id` int NOT NULL,
  `car_number` int NOT NULL,
  `entry_time` datetime(6) NOT NULL,
  `exit_time` datetime(6) NOT NULL,
  `total_time` int NOT NULL,
  `total_payment` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slot_details`
--

INSERT INTO `slot_details` (`slot_id`, `location`, `code_name`, `qr_code_image`, `total_car_vehicle`, `total_colection`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slot 1 in ground floor', 'Slot 1', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018649444154789ced9a418e9c3010455fc548599a1bcc51cccd72a6b981394a6e6096918cfe2c0c3da41529d9782074d50aec27f1f529acaa1226fe1ef3b77f80c029a79c72caa9ab53b6c5002c03362dfbca74aaae97a09224a9804d6d214892f43bf5f5ba5e825a1e39ce6acac0f6199cacebced4f0742f1096defb3dd1a93d9ebdb7ee4f746a8fddfb286001205458e0d8745d55fd2da8d9cccc462015b089b5953967ebba35d5f2fe98e3b1b643ff5c5daf43998dabc162a6bc98b5fa7e5a3cefbb52b43a3e032de533a01c2b52612bfcf355d5ffdf54f39e248954426bb036db4b907bdf91e2b37d558e15888f6e366a0bf7be0b75cc7b0092f683e7b1e1def7a10e758e006cb6d0de82a5f7712f77aeaafe0ed4618e99ca6af6a30441ac67ebba37753c5a54829409db9554bdcef90aea738e192badc39dc7e033e49ed41f666943d53c8111d77df7aaeaef4529c75f5b379b7e7ef7bcef493dcf312d95154b5a8df9ad7a9dd393dabc9f5bae078020e6b1c8601ddcfb8e94f9bf514e39e594532f417d00fe84c78bdd7930aa0000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:17:05.722550', '2023-11-30 12:17:05.722550'),
(2, 'Slot 2 in ground floor', 'Slot 2', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018249444154789ced9a416a85301445cf6b843f54f80be852e2ce4a77a64be9020a6658506e07495af9b4b4137ffc9a3711cd012fcf9b67f2d4c4df313efd03824a55aa5295aad4de294bd1c0d881f5215fe98bea3a36d5c4831f00c215f3d3d288e06600ac94ae335121795caf9d8b4b9f380d4aeb3a32d5dc9c27df6f78c74afd4669080dd6dff18ee7a5b2ef5b01010cdc6c006bf3ef55fd21a8d1cccc3ac04f002c7199535ad7a1a9e8fb6f8f8bb0589a0625759d81429252a2a3e55b09da190ded1c4735ec55fd11284929d9f101a4c2e3647d515dc7a6b2b371c24f4e1a000dad849fa8bedf92faca3d40f4bd93a4390dfb9afbcda85cefdb64fe58e5a3ef95a3e67e136abdcef102a305034363f79e77b87b557f046ad5c72456fe7de83a36956a4eac2f53aa39399c6abdbf0395fb98f6f276113e2e393f2cbd84f7aefe31a9db3e660e27834bdeddee55fd63533fe47eb1f49a0dd772bace40ddf631199f057e5a0aeb3a03b5eee740fa64955b39b59fb32965f5dfa84a55aa52953a05f50927ffcfe5ea99d21b0000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:20:03.303646', '2023-11-30 12:20:03.303646'),
(3, 'Slot 3 in ground floor', 'Slot 3', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018d49444154789ced99416e83301045ff2f48591aa907e851f0cd7a35384a6e8097911cfd2ec64ed376d12e1a4c606665c193fc65c6df9e81c2ef31bffc01029c72ca29a79cda3ac5127d19c5549fc4a6ba0e418d92a405d0143234a19324e92bb5beae4350e996e3e9642b4eb26fafeb60d4956bcfe894c5b874625c73c6c352d556820024000817cbfbfba26babea7741cd24c9016034bfbfda35a7b5ae5d5396f777393e0f60d9062d751d8722872b19536fd74b20152f626caa6bdf54cdfb7412cdeac3626f88b0d40db155f5cf4dc14aa87101acb692a492fc4029baa6adaa7f6eaaac3d420610cac83e8016f8daaf41a51e18cf3da4f3a9f8fdfc96dbebda3f559c266430860b19430670339e8dab7f56caceda7a8fefb26676e24c0008f0b37605ead6c784f5734286a6e4bdb455a8dac7e4bbb2393f465dbc7fff48aafff1240d0042ee81f4ea7eff48eafbdacb3c3e0d2000629cdae83a1215244da87f4ce6a1bbd97f5b5d7ba66a6d65d1d50a57b99ebf5e5b3d8cfadec72c9ef379b56fa4cb29a79c72caa9ffa53e00cf22b6a0ac2740e90000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:20:24.737221', '2023-11-30 12:20:24.737221'),
(4, 'Slot 4 in ground floor', 'Slot 4', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000017f49444154789ced98418ac4201444eb8fc22c15e640e66673357394be812e03869a8526a47b33bd494c275f884479602115537e21fe6fe3d71b10a094524a29a5d4d92969cdb6b7212f3343575db7a0024932018cae80118624c967ea785db7a0f2eaf1fc5d775c446c7f5d37a366397a45a56a0bc950862357bc2db51c2b8e003200b8a9fa7e7be93aabfa4b50a388887840867adecf35e6f4d67569aafa7ee3f1d143da67d053d77d28113f8b0cd9d67809e47616c9d055d7b529d41c1f5d01503b122119028eadc5b3aaff6caaee3d425a861186cdfc40bb74e9deef498d1e607464cd39810564eaafebd2d4d6f72119926b175d51dfef49ad3987005020214e82100b00184a2f5d77a0b02d99a159be8df45f7b08b5d63131fa596ad85983e6e9d57f38b5d431e53701080f0b9293d6eff7a4ecebc4e801c04d42e41faddf1f49313a9231dbe5ae7b125d57a45eeb98121eb6601c4c01b2efa7eb0ed46bce015c01c925da6bced98f7aad63b23de6a9907956f54a29a594524abd4bfd01df4bd1c67743cfe60000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:20:30.194649', '2023-11-30 12:20:30.194649'),
(5, 'Slot 5 in ground floor', 'Slot 5', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000019249444154789cedd9418ea3301085e1bfc6ec6da90fd04731579e1be0a3e40666d992d19b059090c948d31b1a07ec4524e09378b24a56a530f1ff957e7d0341534d35d55453b52b5b5687f580f5e37aa73f34d725549424652085c934e024497a563f9feb126abcd7f8b816bf59777cae4ba998dd6bdb5941ae13aaeeaf6ba580edfac6a6d6b5eebd173082c5fc510c605bfdb5a67f6fb5ec7d9a6bddddef4f4fc55f6bfaf756f3de3f6a5c50d073d5d79bfe0cca2c6c1b1beb998cd4fafb7d155a5641839734780970d2e0cbf274a835fd7babb9d20d9c2cdeba42bc75057c3e38d79594ffb2cd4fcc931133587f70ae332b1ea3030d00518579ba10559661433b737651db3e278af97f95c5419042961d95eb0aea7ede03e08a1803620c106fb6b69ab5a63f85bacf31cd821329388197ac3f36d7a9d53a531803c4df003e63309952c8c7e5ba827a99a5317605007b1c45d5a63f994a9f05f005f0d2dcfbd490eb84ea758e793388c37470ae2b28b69f0671025f90f2facdb0f5f7fba97fcc31d172e63c1ed49abea9a69a6aaaa9efaa3f9ff9ae60941b24fd0000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:20:34.584531', '2023-11-30 12:20:34.584531'),
(6, 'Slot 6 in ground floor', 'Slot 6', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018749444154789ced9931ae83301044673f96521ae91f80a3d847c747c90d70896434bfb01d25343f4d30c1eb0aac27318265d81d84f87f859f37204029a594524aa9b353529629473ed61ddf5457179423492e00679bc019034992afd4f1babaa0e2a3c6e32ddf711131ed7575466d72f41595cacb2d03c51f79c56ea96a2b96002200d835d7fdf3d07556f597a08288888c80f8ecf75b6e735aebba3495ebfea9c6c30829af414b5dfd5022e326e2a3c9ed25108b17896faaebda54f5fb68c0302588ab152fb04b7d21ceaafebb299411ca26e4d98a244bf10365e89acfaafe0a1479bf11b0a4f82802c7f2281aebea81126fd7ecf708138bdf8729b5d6756dead1e70c049000376f066e4e0030505ae9ea81c273648681e452ad1e9665a9df7f927ae49865aeb524e7a859da2154cd31b3e9bbbb011c57cdef3f4999fd46989201ec2a44fcd5fcfe482aff3699a3a9b3ee49745d91dae798e2ee2621f82101716ca7ab076adfe7c02d00c954bfbfdae77c8cdae7982c27c34b907956f54a29a594524abd4bfd0193c9b8e94387abd30000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:20:47.597044', '2023-11-30 12:20:47.597044'),
(7, 'Slot 7 in ground floor', 'Slot 7', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018749444154789ced98c18aac3010454f8dc25b46980fe84f493e5dff28593628f72d12fbf5f45bcc6c6c1dad8022e18017a9ba56ae89efd7f4f103089c72ca29a79c3a3a656df5ed29957527edaaeb1254942465d0186634d24992f4957abfae4b50e551e3e54ffde266d6efafeb62d462ef7ea35375c5dcc9d23bdf78596ab59520a000847badfbe743d751d59f829acccc6c004bd5ef973ae6ecadebd454adfba71a9f06acb5c19ebaae43990d8b592a7d1d2fa1342fb2b4abae7353abdf971e4db71962feac3b46c86b431c55fdefa6a86728e54e40bbb5e28776e81a8faafe0c94a570b73ae2c4bc18513352de5dd7b9295a741024627e6e038d61f6badf9e5aa31cc9128b590a33f0309e83abffad14cf9119ddc3f901426b02affb4da9478ec974bb1b84198dc5b3b44da956f73153a31ca2e6fa24c9fd7e53aaff6fa70c40b89b289feef75b52afdf5ed34d401930c088e33ebaae40bde6984600a6d4cdad0376d27505ea75cea9bfd97f56ef73ce76d46b8ea976755f82cca3aa77ca29a79c72eaa7d45ff90dd0ce1339cdb70000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:20:51.645115', '2023-11-30 12:20:51.645115'),
(8, 'Slot 8 in ground floor', 'Slot 8', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018549444154789ced994b8ec3201044ab064b5962690e304731379babd947c90dcc321256cd02c86f33d9c42676b3b2d19328a1a2e96e28fc3fa6af1720c028a38c32caa8d62996d195af10eb4cd854d721a8419234031a7d82463849921ea9f5751d828a578fc753de7192ddf6ba0e462d5c7b45a3f21866278635573c2c55c38a17800800fe927d7f5f74b5aa7e17d44492ec01861cef979ce66cad6bd754f6fd9dc7a71e2cc7604b5dc7a1c87e2143ec727a09c4128b1836d5b56faac6fb7812a79f04c2cf7986f0733d10adaaff6c0ab9861a6fbfb353313f508aaeb155f5fba106490c58884109d2dc88aebd52c5f7ba6db6978af97d32dfaf4239015ec2302f64f0a9ce6dad6bc754be6b6b1eef9200274e04000fbb6b57a0ae7d4c4cfdc27c02ae8966f3ea3f9caa7d4cfe9e3b6038931874b1fefd3ba9ee7962ea01c0a74e88df16efd7a4f2b3c918bb5aeb36a26b8fd4731f33d7b553700988fd76ba8e40e1fe69104ea5ac524ded65f9fddba8e73ea64a56ef1e1a99adaa37ca28a38c32ea55ea0fedb3b3f84d6db68e0000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:20:55.205011', '2023-11-30 12:20:55.205011'),
(9, 'Slot 9 in ground floor', 'Slot 9', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018449444154789ced9a416ae4301444df8f0dbd94210798a3a8af9623e506f651728080b55753b390449c8690d9b8d5637f6d8ca5072ee45249fed8c4ef6d79f907089c72ca29a79c7a76ca6a1b6199c0aea9f55cbbea3a3635964b9c01d22b16d7db28d29001b05ebace44a5ea71bd4d4339fa9465d05bd791a9f1eebefa7ec7273af513a5398dd8f5814f3c2fd57c1f04243018b2016ccdffacea0f412d666636017105e0568e39bd751d9a2abefff2b84837abcba0a7ae335048529de862f92041c8680eb98c6a7e56f5c7a042466f7fa4f2026af00cb26b675d47a6dab7d5fb4590c6ac65fa1cb54cab2c7e580ba36755ff7f532d734286a80c044952aec3d1336737aa26bad66113fa9a8354a6ddf37e3f0a7d6f650500bed73e88dad431e3c7456dafedaeebd854cdfbd8824773e91ea499419ef73b526dee5720ae75b2dbaeeb99f3586a2995e341902efa897abcae0352f73564089f560ef9a4d77ebace40ddd7318bdbe37aebaceb0cd4b69e53926653caf1bcdf9532ff37ca29a79c72ea14d45f8a1de528d97e54be0000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:20:58.576244', '2023-11-30 12:20:58.576244'),
(10, 'Slot 10 in ground floor', 'Slot 10', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018a49444154789cedd9416e83301085e17f8aa52e41ca017214fb6abd191ca537c0cb4a46af0b3b296d17eda2c4696c2f10419fc4533220cfc4c4cf6b79fa0582aebaeaaaabaeee5d59590e9669330bf1722554cdd584f292a415203a34334892f459dd3e57132a961ab73026f29999ab9fab25a5f972b8d51dbbba2efffa2c0bb7bc63b3eaf25a1905448031e52bfba6eb5ed33f845acccc6c020bd1016c799b533bd743ab5cf7bb1a5fce6f561e839ab95a50f9bb37185229f2e8d0624382784ad572b5a324a5cb265f127edd0cd87a6f75bcb2c0667ac97d2d5818f569b373dfe9ffab22577a696413d23ae40eb73c019234df6bfa87505e69d7c85a60e8757fb8721fa70230c0b49c13104f49b572b5a37673ccbca2cbbb4d0b557335a13ee6985e090b6379f3d7ced5848ad7597d74688e0eb369eb7ded91ca7df9ac651a127e3d819f37fafbfe86aaccefc704c4eb44b37eae4754dfe798d1251127b49cdfacd7fd818afd5f830cca07bf0ec25fe70cbdb73a447d9d63aa1c122a3f459d5c5d75d555575dfdad7a078124b035361c7f8d0000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:21:02.145188', '2023-11-30 12:21:02.145188'),
(11, 'Slot 11 in ground floor', 'Slot 11', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000018949444154789cedd94d6ec2301086e1771a4b5d0689037094f8e8c9517a83cc12c9d1d785cd4fdb45bb68638aed8515a247ca2730663c98f87e2c2f3f40d055575d75d5d5a32b2b23c072d8cca25feec4aab99a5093246905f080660649923eaafd7335a1bcac718b63225f9985fab95a529a2fd35e4fecea3aa6b75759dcf389cdaacbb6320a708031e53bf787ae474dff146a3133b30358f400b0e532a776aea75679dddfadf1e574b6f235a899ab0595df7b83219545ee012d3624f063aa96ab1da5793c5b29f22531ad9b015b3f5beda1fc55a5c8f780c5511f8a9d474fff3f55b85d0a04cb2921fc9804c26ae56a47591ccf564a1c0f58843c55cef5dcea56e70848186ca6e594a02cfe3ab9da51777dcc3c3ce46ad362d55c4da85b1f735a4b434d5a87dec7dc43f9b5570f68f680d961ebe7dabf54e1d36be143625a8f30cd1b7dbfdf5159a4ec39e0d78e66fd5ccfa8bef63101e107b49cced6d7fd1f2aeeff1a64108c12d33a8849a9fc08cf8f9afe7fabcf7d4c9529a1fc5154cad555575d75d5d5efaa774b5a9b3b6bbf9b320000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:21:07.386663', '2023-11-30 12:21:07.386663'),
(12, 'Slot 12 in ground floor', 'Slot 12', 0x89504e470d0a1a0a0000000d494844520000012200000122010000000075c5e21b0000017549444154789ced994d6e83400c469f0b529644ea017214b841af0c47c90d9865a5415f1730049a48ed86f0e759ccc2f3243e198f6d8c89bf57f3f10f089c72ca29a79cda3a65c3ca7ba3552159aa55759d822a25492d40c801324992e6d4fb759d820a638cd319008f6bb07df5c7a0ac227b6e3bd7d7750aaab9c5373ff1b4544a2b8580006abeba5c049846ff56d5ef9b625a52c944d966a26c93a594a47aabeaf74df571ff88714144f3a8dfaefa23506657a03133267dce75755d67a054d3995545c4aa90cfdcbeaaae63537dbe579d52bdea427dbe97daf174abeaf74dcd6a6d11d33636f95e6b17a74a4528ef97b1c47696dec2aaba0e4d0d59655c438fa9e10678ce59907aeaef2922aac7cd7dbf1c35f87e986366a21f61b6d353f7fdb2549a63aa2ebe8de636c4fdeaba8e4ce5af8c063906179fdfbf952aef39a9c5e9fcbfd592d4ef39a651c41cc245103e53d2d9aafa7d53cf73ccbef44624799fb328f5628e091abe6b33cff74e39e5945347a17e00b23adb170e88101f0000000049454e44ae426082, 0, 0, 'active', '2023-11-30 12:21:12.347703', '2023-11-30 12:21:12.347703');

-- --------------------------------------------------------

--
-- Table structure for table `slot_status`
--

DROP TABLE IF EXISTS `slot_status`;
CREATE TABLE IF NOT EXISTS `slot_status` (
  `slot_id` int NOT NULL,
  `mall_slot_number` int NOT NULL,
  `Available` varchar(10) NOT NULL,
  `last_use` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slot_status`
--

INSERT INTO `slot_status` (`slot_id`, `mall_slot_number`, `Available`, `last_use`) VALUES
(1, 2, 'Available', '2023-10-31 23:09:01.437239'),
(2, 1, 'Available', '2023-10-31 23:09:01.437239'),
(3, 4, 'Available', '2023-10-31 23:09:01.437239'),
(4, 6, 'Available', '2023-10-31 23:09:01.437239'),
(5, 7, 'Available', '2023-10-31 23:09:01.437239'),
(6, 8, 'Available', '2023-10-31 23:09:01.437239'),
(7, 10, 'Available', '2023-10-31 23:09:01.437239'),
(8, 11, 'Available', '2023-10-31 23:09:01.437239'),
(9, 3, 'Available', '2023-10-31 23:09:01.437239'),
(10, 10, 'Available', '2023-10-31 23:09:01.437239'),
(11, 11, 'Available', '2023-10-31 23:09:01.437239'),
(12, 12, 'Available', '2023-10-31 23:09:01.437239');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;