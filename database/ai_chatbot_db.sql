-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 06, 2026 at 10:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_chatbot_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_history`
--

CREATE TABLE `chat_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_message` text NOT NULL,
  `bot_reply` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_history`
--

INSERT INTO `chat_history` (`id`, `user_id`, `user_message`, `bot_reply`, `created_at`) VALUES
(1, NULL, 'price', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-05 07:41:32'),
(2, NULL, 'price', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-05 15:17:44'),
(3, 1, 'supun', 'Sorry, I don\'t know this answer yet. Please ask about packages, destinations, booking, price or contact details.', '2026-05-05 16:05:15'),
(4, 1, 'supun', 'pepole name', '2026-05-05 16:05:36'),
(5, NULL, 'price', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 06:42:10'),
(6, NULL, 'tell me about sigiriya', 'Sigiriya is a UNESCO World Heritage rock fortress and one of the most famous attractions in Sri Lanka.', '2026-05-06 06:53:42'),
(7, NULL, 'do you arrange private car tour', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 06:53:56'),
(8, NULL, 'can I get vegetarian food', 'Vegetarian and vegan food options are available in many hotels and restaurants.', '2026-05-06 06:54:08'),
(9, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 06:54:21'),
(10, NULL, 'vegetarian vegan food', 'Vegetarian and vegan food options are available in many hotels and restaurants.', '2026-05-06 06:55:29'),
(11, NULL, 'is sri lanka safe safety dangerous', 'Yes, Sri Lanka is generally safe for tourists. Popular tourist areas are friendly and safe for travel. Always follow local guidelines and take normal travel precautions.', '2026-05-06 06:57:18'),
(12, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 06:57:28'),
(13, NULL, 'airport pickup transfer', 'Yes, airport pickup and drop-off can be arranged on request.', '2026-05-06 06:57:58'),
(14, NULL, 'vegetarian vegan food', 'Vegetarian and vegan food options are available in many hotels and restaurants.', '2026-05-06 06:58:08'),
(15, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 06:58:23'),
(16, NULL, 'hello', 'Hello! Welcome to the AI Travel Support Assistant. How can I help you plan your Sri Lanka tour?', '2026-05-06 07:00:40'),
(17, NULL, 'good morning', 'Good morning! I can help you with Sri Lanka tour packages, destinations, prices and booking details.', '2026-05-06 07:00:47'),
(18, NULL, 'thank you', 'You are welcome! Let me know if you need more travel help.', '2026-05-06 07:00:55'),
(19, NULL, 'how to book a tour', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:01:02'),
(20, NULL, 'best places in sri lanka', 'Top Sri Lanka destinations include Sigiriya, Kandy, Ella, Yala, Galle Fort, Mirissa, Nuwara Eliya and Colombo.', '2026-05-06 07:01:45'),
(21, NULL, 'custom tour package', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:01:57'),
(22, NULL, 'beach tours', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:02:02'),
(23, NULL, 'contact number', 'You can contact us via WhatsApp: 0775553987 or Email: leisurepalsl@gmail.com.', '2026-05-06 07:02:10'),
(24, NULL, 'how much is the tour package', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:02:17'),
(25, NULL, 'visa for sri lanka', 'Most travelers can apply for a Sri Lanka ETA visa online before arrival.', '2026-05-06 07:02:25'),
(26, NULL, 'how to book a tour', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:31:59'),
(27, NULL, 'how to book a tour', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:32:06'),
(28, NULL, 'how to book a tour', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:32:13'),
(29, NULL, 'how to book a tour', 'To book a tour, please send your travel date, number of guests, pickup location and preferred package.', '2026-05-06 07:38:04'),
(30, NULL, 'packages', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:38:30'),
(31, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 07:39:12'),
(32, NULL, 'airport pickup', 'Yes, airport pickup and drop can be arranged based on your tour package and arrival time.', '2026-05-06 07:39:26'),
(33, NULL, 'tell me about ella', 'Ella is famous for Nine Arch Bridge, Little Adam’s Peak, tea estates and beautiful mountain views.', '2026-05-06 07:39:35'),
(34, NULL, 'vegetarian food', 'Vegetarian and vegan food options are available in many hotels and restaurants.', '2026-05-06 07:39:44'),
(35, NULL, 'contact number', 'You can contact us via WhatsApp: 0775553987 or Email: leisurepalsl@gmail.com.', '2026-05-06 07:39:51'),
(36, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 07:51:21'),
(37, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 07:51:27'),
(38, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 07:51:54'),
(39, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 07:54:33'),
(40, NULL, 'is sri lanka safe', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', '2026-05-06 07:54:53'),
(41, NULL, 'is sri lanka safe', 'Sri Lanka is generally safe for tourists, but normal travel precautions are recommended.', '2026-05-06 07:56:53'),
(42, NULL, 'tell me about ella', 'Sorry, I don\'t know this answer yet. Please ask about packages, destinations, booking, price or contact details.', '2026-05-06 07:57:22'),
(43, NULL, 'airport pickup', 'Yes, airport pickup and drop can be arranged based on your tour package and arrival time.', '2026-05-06 07:57:31'),
(44, NULL, 'vegetarian food', 'Vegetarian and vegan food options are available in many hotels and restaurants.', '2026-05-06 07:57:40'),
(45, NULL, 'contact number', 'Sorry, I don\'t know this answer yet. Please ask about packages, destinations, booking, price or contact details.', '2026-05-06 07:57:49'),
(46, NULL, 'how to book a tour', 'To book a tour, please send your travel date, number of guests, pickup location and preferred package.', '2026-05-06 07:58:01'),
(47, NULL, 'show packages', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 07:58:10'),
(48, NULL, 'tour packages', 'Tuk tuk tours are available in Colombo, Kandy, Galle and selected local areas.', '2026-05-06 07:58:23'),
(49, NULL, 'best shopping mall in sri lanka', 'Popular souvenirs include tea, spices, gems, batik, handicrafts and wooden carvings.', '2026-05-06 07:58:36'),
(50, NULL, 'best shopping mall in sri lanka', 'Popular souvenirs include tea, spices, gems, batik, handicrafts and wooden carvings.', '2026-05-06 08:00:38'),
(51, NULL, 'tour packages', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 08:00:57'),
(52, NULL, 'show packages', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 08:01:04'),
(53, NULL, 'contact number', 'Sorry, I don\'t know this answer yet. Please ask about packages, destinations, booking, price or contact details.', '2026-05-06 08:01:12'),
(54, NULL, 'hello', 'Sorry, I don\'t know this answer yet. Please ask about packages, destinations, booking, price or contact details.', '2026-05-06 08:04:52'),
(55, NULL, 'contact number', 'For emergencies in Sri Lanka, tourists can contact local police, ambulance services or their tour operator.', '2026-05-06 08:04:57'),
(56, NULL, 'packages', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 08:05:07'),
(57, NULL, 'airport pickup', 'Yes, airport pickup and drop can be arranged based on your tour package and arrival time.', '2026-05-06 08:05:13'),
(58, 1, 'contact number', '0775553987', '2026-05-06 08:08:28'),
(59, 1, 'tell me about ella', 'Sorry, I don\'t know this answer yet. Please ask about packages, destinations, booking, price or contact details.', '2026-05-06 08:09:03'),
(60, 1, 'hello', 'hello...', '2026-05-06 08:31:19'),
(61, 1, 'hi', 'Sorry, I don\'t know this answer yet. Please ask about packages, destinations, booking, price or contact details.', '2026-05-06 08:31:25'),
(62, 1, 'contact number', '0775553987', '2026-05-06 08:31:30'),
(63, 1, 'airport pickup', 'Yes, airport pickup and drop can be arranged based on your tour package and arrival time.', '2026-05-06 08:31:35'),
(64, 1, 'vegetarian food', 'Vegetarian and vegan food options are available in many hotels and restaurants.', '2026-05-06 08:31:42'),
(65, 1, 'ella sri lanka', 'Ella is a beautiful hill country destination in Sri Lanka, famous for Nine Arch Bridge, Little Adam’s Peak, tea plantations and mountain views.', '2026-05-06 08:31:50'),
(66, 1, 'tour packages', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 08:31:56'),
(67, 1, 'available packages', 'Available Tour PackagesSri Lanka Classic TourDuration: 7 Days / 6 NightsPrice: USD 495Places: Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, GalleHill Country EscapeDuration: 4 Days / 3 NightsPrice: USD 280Places: Kandy, Nuwara Eliya, EllaWildlife &amp; Beach TourDuration: 5 Days / 4 NightsPrice: USD 350Places: Yala, Mirissa, Galle, HikkaduwaColombo Tuk Tuk City TourDuration: Half DayPrice: USD 35Places: Colombo Fort, Pettah, Galle Face, Gangaramaya', '2026-05-06 08:32:04'),
(68, 1, 'is sri lanka safe', 'Sorry, I don\'t know this answer yet. Please ask about packages, destinations, booking, price or contact details.', '2026-05-06 08:32:09'),
(69, 1, 'how to book a tour', 'We offer cultural tours, beach tours, wildlife tours, hill country tours and private custom tours around Sri Lanka.', '2026-05-06 08:32:21'),
(70, 1, 'best shopping mall in sri lanka', 'Popular souvenirs include tea, spices, gems, batik, handicrafts and wooden carvings.', '2026-05-06 08:32:44'),
(71, 1, 'airport to sigiriya time', 'Travel time from Colombo airport to Sigiriya is usually around 4 to 5 hours.', '2026-05-06 08:40:02'),
(72, 1, 'is sri lanka safe', 'Yes, Sri Lanka is generally safe for tourists, but normal travel precautions are recommended.', '2026-05-06 08:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base`
--

CREATE TABLE `knowledge_base` (
  `id` int(11) NOT NULL,
  `question_pattern` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `category` varchar(100) DEFAULT 'general',
  `is_learned` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledge_base`
--

INSERT INTO `knowledge_base` (`id`, `question_pattern`, `answer`, `category`, `is_learned`, `created_at`) VALUES
(1, 'hello hi hey hii', 'Hello! Welcome to Ceylon Travel Assistant. How can I help you plan your Sri Lanka tour?', 'greeting', 0, '2026-05-05 07:34:53'),
(2, 'good morning', 'Good morning! I can help you with Sri Lanka tour packages, destinations, prices and booking details.', 'greeting', 0, '2026-05-05 07:34:53'),
(3, 'thank you thanks', 'You are welcome! Let me know if you need more travel help.', 'greeting', 0, '2026-05-05 07:34:53'),
(4, 'bye goodbye', 'Goodbye! Have a wonderful day and safe travels.', 'greeting', 0, '2026-05-05 07:34:53'),
(5, 'contact phone whatsapp email', 'You can contact us via WhatsApp: 0775553987 or Email: leisurepalsl@gmail.com.', 'contact', 0, '2026-05-05 07:34:53'),
(6, 'booking book reserve', 'To book a tour, please send your travel date, number of guests, pickup location and preferred package.', 'booking', 0, '2026-05-05 07:34:53'),
(7, 'sri lanka best places destinations', 'Top Sri Lanka destinations include Sigiriya, Kandy, Ella, Yala, Galle Fort, Mirissa, Nuwara Eliya and Colombo.', 'destination', 0, '2026-05-05 07:34:53'),
(8, 'sigiriya lion rock', 'Sigiriya is a UNESCO World Heritage rock fortress and one of the most famous attractions in Sri Lanka.', 'destination', 0, '2026-05-05 07:34:53'),
(9, 'ella nine arch bridge', 'Ella is famous for Nine Arch Bridge, Little Adam’s Peak, tea estates and beautiful mountain views.', 'destination', 0, '2026-05-05 07:34:53'),
(10, 'yala safari elephant leopard', 'Yala National Park is popular for safari tours, elephants, crocodiles, birds and leopards.', 'destination', 0, '2026-05-05 07:34:53'),
(11, 'galle fort', 'Galle Fort is a historic UNESCO site with colonial buildings, museums, cafes and ocean views.', 'destination', 0, '2026-05-05 07:34:53'),
(12, 'airport pickup drop', 'Yes, airport pickup and drop can be arranged based on your tour package and arrival time.', 'service', 0, '2026-05-05 07:34:53'),
(13, 'food breakfast lunch dinner', 'Meals depend on the package. Some tours include breakfast, and lunch or dinner can be added on request.', 'service', 0, '2026-05-05 07:34:53'),
(14, 'supun', 'pepole name', 'learned', 1, '2026-05-05 16:05:28'),
(15, 'price cost package price tour price', 'Our tour package prices depend on duration, places, hotel category and number of guests. Please share your travel dates and number of people for an exact price.', 'price', 0, '2026-05-06 06:44:59'),
(16, 'how to book a tour booking reserve book now make booking', 'To book a tour, please send your travel date, number of guests, pickup location and preferred package.', 'booking', 0, '2026-05-06 06:44:59'),
(17, 'custom tour tailor made tour private tour', 'Yes, we can arrange tailor-made private tours based on your travel plan, budget and preferred destinations.', 'booking', 0, '2026-05-06 06:44:59'),
(18, 'airport pickup airport drop transfer', 'Yes, airport pickup and drop-off can be arranged on request.', 'service', 0, '2026-05-06 06:44:59'),
(19, 'hotel accommodation room stay', 'Hotel accommodation can be arranged according to your budget and preferred hotel category.', 'service', 0, '2026-05-06 06:44:59'),
(20, 'breakfast lunch dinner meals food', 'Meal options depend on the package. Breakfast, lunch or dinner can be added on request.', 'service', 0, '2026-05-06 06:44:59'),
(21, 'transport vehicle car van driver guide', 'We provide comfortable transport with driver-guide service for Sri Lanka tours.', 'service', 0, '2026-05-06 06:44:59'),
(22, 'contact phone whatsapp email', 'You can contact us via WhatsApp: 0775553987 or Email: leisurepalsl@gmail.com.', 'contact', 0, '2026-05-06 06:44:59'),
(23, 'payment advance bank transfer cash', 'Payment can be discussed during booking. Advance payment may be required to confirm the tour.', 'payment', 0, '2026-05-06 06:44:59'),
(24, 'cancellation cancel refund', 'Cancellation and refund conditions depend on the booking date and package type. Please contact us for details.', 'policy', 0, '2026-05-06 06:44:59'),
(25, 'sigiriya lion rock', 'Sigiriya is a UNESCO World Heritage rock fortress and one of the most famous attractions in Sri Lanka.', 'destination', 0, '2026-05-06 06:44:59'),
(26, 'ella nine arch bridge little adams peak', 'Ella is a beautiful hill country destination famous for Nine Arch Bridge, Little Adam’s Peak and tea estate views.', 'destination', 0, '2026-05-06 06:44:59'),
(27, 'kandy temple tooth lake', 'Kandy is a cultural city famous for the Temple of the Tooth, Kandy Lake and traditional Sri Lankan culture.', 'destination', 0, '2026-05-06 06:44:59'),
(28, 'yala safari elephant leopard', 'Yala National Park is popular for wildlife safaris, elephants, crocodiles and leopards.', 'destination', 0, '2026-05-06 06:44:59'),
(29, 'galle fort unesco', 'Galle Fort is a historic UNESCO site with colonial buildings, museums, cafés and ocean views.', 'destination', 0, '2026-05-06 06:44:59'),
(30, 'mirissa whale watching beach', 'Mirissa is famous for whale watching, beaches, surfing and relaxing coastal experiences.', 'destination', 0, '2026-05-06 06:44:59'),
(31, 'nuwara eliya tea plantation', 'Nuwara Eliya is known as Little England and is famous for tea plantations, cool climate and beautiful landscapes.', 'destination', 0, '2026-05-06 06:44:59'),
(32, 'colombo city tour pettah galle face', 'Colombo is Sri Lanka’s capital city with markets, temples, shopping areas, Galle Face and modern city attractions.', 'destination', 0, '2026-05-06 06:44:59'),
(33, 'best places sri lanka destinations', 'Top Sri Lanka destinations include Sigiriya, Kandy, Ella, Yala, Galle Fort, Mirissa, Nuwara Eliya and Colombo.', 'destination', 0, '2026-05-06 06:44:59'),
(34, 'hello hi hey', 'Hello! Welcome to the AI Travel Support Assistant. How can I help you plan your Sri Lanka tour?', 'greeting', 0, '2026-05-06 06:44:59'),
(35, 'good morning', 'Good morning! I can help you with Sri Lanka tour packages, destinations, prices and booking details.', 'greeting', 0, '2026-05-06 06:44:59'),
(36, 'thank you thanks', 'You are welcome! Let me know if you need more travel help.', 'greeting', 0, '2026-05-06 06:44:59'),
(37, 'bye goodbye', 'Goodbye! Have a wonderful day and safe travels.', 'greeting', 0, '2026-05-06 06:44:59'),
(38, 'tour package sri lanka package', 'We offer cultural tours, beach tours, wildlife tours, hill country tours and private custom tours around Sri Lanka.', 'package', 0, '2026-05-06 06:47:49'),
(39, 'family tour family package kids', 'Yes, we arrange family-friendly Sri Lanka tours with safe hotels and comfortable transport.', 'package', 0, '2026-05-06 06:47:49'),
(40, 'honeymoon package honeymoon tour couple', 'We offer romantic honeymoon packages with beach hotels, hill country stays and private transport.', 'package', 0, '2026-05-06 06:47:49'),
(41, 'solo traveler single traveler', 'Yes, solo travelers are welcome. We can arrange safe and comfortable private tours.', 'package', 0, '2026-05-06 06:47:49'),
(42, 'group tour friends tour', 'We can arrange group tours for friends, families and company trips around Sri Lanka.', 'package', 0, '2026-05-06 06:47:49'),
(43, 'luxury tour luxury package', 'Luxury Sri Lanka tours with premium hotels, private vehicles and exclusive experiences are available.', 'package', 0, '2026-05-06 06:47:49'),
(44, 'budget tour cheap package low budget', 'We also offer affordable Sri Lanka budget tour packages based on your budget.', 'package', 0, '2026-05-06 06:47:49'),
(45, 'best time visit sri lanka weather season', 'Sri Lanka can be visited throughout the year. West and south coasts are best from December to April.', 'travel', 0, '2026-05-06 06:47:49'),
(46, 'visa sri lanka visa process', 'Most travelers can apply for a Sri Lanka ETA visa online before arrival.', 'travel', 0, '2026-05-06 06:47:49'),
(47, 'currency sri lanka money exchange', 'The currency used in Sri Lanka is the Sri Lankan Rupee (LKR).', 'travel', 0, '2026-05-06 06:47:49'),
(48, 'how many days sri lanka tour', 'Most travelers choose 5 to 10 day Sri Lanka tours to cover major destinations.', 'travel', 0, '2026-05-06 06:47:49'),
(49, 'beach tour beaches sri lanka', 'Popular Sri Lanka beach destinations include Mirissa, Unawatuna, Bentota and Hikkaduwa.', 'destination', 0, '2026-05-06 06:47:49'),
(50, 'surfing surfing places', 'Popular surfing areas include Weligama, Arugam Bay and Hikkaduwa.', 'activity', 0, '2026-05-06 06:47:49'),
(51, 'whale watching whales', 'Whale watching tours are mainly available in Mirissa during the season.', 'activity', 0, '2026-05-06 06:47:49'),
(52, 'train ride kandy ella train', 'The Kandy to Ella train journey is one of the most beautiful train rides in the world.', 'activity', 0, '2026-05-06 06:47:49'),
(53, 'tea factory tea plantation', 'Tea factory visits can be arranged in Nuwara Eliya and Ella areas.', 'activity', 0, '2026-05-06 06:47:49'),
(54, 'safari jeep safari', 'Safari jeep tours are available in Yala, Udawalawe and Minneriya National Parks.', 'activity', 0, '2026-05-06 06:47:49'),
(55, 'airport colombo airport', 'Bandaranaike International Airport is the main international airport in Sri Lanka.', 'travel', 0, '2026-05-06 06:47:49'),
(56, 'driver english speaking guide', 'We provide friendly English-speaking drivers and tour guides.', 'service', 0, '2026-05-06 06:47:49'),
(57, 'wifi internet sim card', 'Tourists can easily buy local SIM cards and internet packages at the airport.', 'travel', 0, '2026-05-06 06:47:49'),
(58, 'is sri lanka safe safety secure dangerous travel safe country safe for tourists', 'Yes, Sri Lanka is generally safe for tourists. Popular travel destinations are friendly and safe. Always follow local guidelines and normal travel precautions.', 'destination', 0, '2026-05-06 06:52:46'),
(59, 'polonnaruwa ancient ruins', 'Polonnaruwa is a UNESCO World Heritage city with ancient ruins, temples and royal palaces.', 'destination', 0, '2026-05-06 06:52:46'),
(60, 'dambulla cave temple', 'Dambulla Cave Temple is a famous Buddhist temple with ancient cave paintings and statues.', 'destination', 0, '2026-05-06 06:52:46'),
(61, 'pinnawala elephant orphanage', 'Pinnawala is famous for elephants and is a popular stop for families and wildlife lovers.', 'destination', 0, '2026-05-06 06:52:46'),
(62, 'udawalawe safari national park', 'Udawalawe National Park is one of the best places to see elephants in Sri Lanka.', 'destination', 0, '2026-05-06 06:52:46'),
(63, 'minneriya elephant gathering', 'Minneriya National Park is famous for elephant gatherings, especially during the dry season.', 'destination', 0, '2026-05-06 06:52:46'),
(64, 'hikkaduwa beach coral reef', 'Hikkaduwa is famous for beaches, coral reefs, turtles, surfing and nightlife.', 'destination', 0, '2026-05-06 06:52:46'),
(65, 'unawatuna beach', 'Unawatuna is a beautiful beach destination near Galle, popular for swimming and relaxing.', 'destination', 0, '2026-05-06 06:52:46'),
(66, 'bentota beach river safari', 'Bentota is popular for beach holidays, water sports and Madu River boat safaris.', 'destination', 0, '2026-05-06 06:52:46'),
(67, 'arugam bay surfing', 'Arugam Bay is one of the best surfing destinations in Sri Lanka.', 'destination', 0, '2026-05-06 06:52:46'),
(68, 'trincomalee nilaveli pigeon island', 'Trincomalee is famous for Nilaveli Beach, Pigeon Island and whale watching.', 'destination', 0, '2026-05-06 06:52:46'),
(69, 'pasikuda beach', 'Pasikuda is known for calm shallow beaches and relaxing beach holidays.', 'destination', 0, '2026-05-06 06:52:46'),
(70, 'negombo beach airport', 'Negombo is close to the airport and is popular for beach stays before or after a tour.', 'destination', 0, '2026-05-06 06:52:46'),
(71, 'adam peak sri pada', 'Adam’s Peak, also known as Sri Pada, is a sacred mountain and popular hiking destination.', 'destination', 0, '2026-05-06 06:52:46'),
(72, 'horton plains worlds end', 'Horton Plains is famous for World’s End viewpoint, nature trails and cool climate.', 'destination', 0, '2026-05-06 06:52:46'),
(73, 'knuckles mountain range', 'Knuckles Mountain Range is ideal for hiking, trekking and nature lovers.', 'destination', 0, '2026-05-06 06:52:46'),
(74, 'sinharaja rainforest', 'Sinharaja Rainforest is a UNESCO natural heritage site famous for biodiversity and bird watching.', 'destination', 0, '2026-05-06 06:52:46'),
(75, 'kitulgala rafting', 'Kitulgala is popular for white water rafting, adventure activities and rainforest experiences.', 'activity', 0, '2026-05-06 06:52:46'),
(76, 'madu river boat safari', 'Madu River boat safari is a relaxing activity with mangroves, islands and fish therapy.', 'activity', 0, '2026-05-06 06:52:46'),
(77, 'turtle hatchery sri lanka', 'Turtle hatcheries can be visited along the south coast to learn about sea turtle conservation.', 'activity', 0, '2026-05-06 06:52:46'),
(78, 'ayurveda spa massage', 'Ayurveda spa and massage treatments are available in many tourist areas in Sri Lanka.', 'activity', 0, '2026-05-06 06:52:46'),
(79, 'cultural dance show kandy', 'Kandy cultural dance shows are popular evening experiences with traditional Sri Lankan dancing.', 'activity', 0, '2026-05-06 06:52:46'),
(80, 'cooking class sri lanka food', 'Sri Lankan cooking classes can be arranged for guests who want to learn local food preparation.', 'activity', 0, '2026-05-06 06:52:46'),
(81, 'village tour local experience', 'Village tours offer local food, farming experiences and traditional Sri Lankan lifestyle.', 'activity', 0, '2026-05-06 06:52:46'),
(82, 'cycling tour bike tour', 'Cycling tours can be arranged in rural areas, tea country and cultural destinations.', 'activity', 0, '2026-05-06 06:52:46'),
(83, 'hiking trekking tour', 'Sri Lanka offers hiking and trekking in Ella, Knuckles, Adam’s Peak and Horton Plains.', 'activity', 0, '2026-05-06 06:52:46'),
(84, 'boat tour lagoon safari', 'Boat tours and lagoon safaris are available in Bentota, Madu River, Negombo and coastal areas.', 'activity', 0, '2026-05-06 06:52:46'),
(85, 'diving snorkeling sri lanka', 'Snorkeling and diving are popular in Hikkaduwa, Trincomalee, Unawatuna and Pigeon Island.', 'activity', 0, '2026-05-06 06:52:46'),
(86, 'water sports jet ski banana boat', 'Water sports such as jet skiing, banana boat rides and snorkeling are available in beach areas.', 'activity', 0, '2026-05-06 06:52:46'),
(87, 'shopping sri lanka souvenirs', 'Popular souvenirs include tea, spices, gems, batik, handicrafts and wooden carvings.', 'travel', 0, '2026-05-06 06:52:46'),
(88, 'gem museum gem shopping', 'Sri Lanka is famous for gemstones, especially blue sapphires. Gem museums and shops are available.', 'travel', 0, '2026-05-06 06:52:46'),
(89, 'tea buying sri lanka', 'Ceylon tea is one of the best souvenirs from Sri Lanka. Tea shops are available in tea country and Colombo.', 'travel', 0, '2026-05-06 06:52:46'),
(90, 'spice garden sri lanka', 'Spice gardens show cinnamon, cardamom, pepper and other Sri Lankan spices.', 'travel', 0, '2026-05-06 06:52:46'),
(91, 'local food sri lanka', 'Popular Sri Lankan foods include rice and curry, kottu, hoppers, string hoppers and seafood.', 'food', 0, '2026-05-06 06:52:46'),
(92, 'vegetarian food vegan food', 'Vegetarian and vegan food options are available in many hotels and restaurants.', 'food', 0, '2026-05-06 06:52:46'),
(93, 'halal food sri lanka', 'Halal food can be found in many cities and tourist areas in Sri Lanka.', 'food', 0, '2026-05-06 06:52:46'),
(94, 'seafood fish fresh seafood crab prawns', 'Fresh seafood is popular in coastal areas such as Mirissa, Galle, Negombo and Trincomalee.', 'food', 0, '2026-05-06 06:52:46'),
(95, 'spicy food sri lanka', 'Sri Lankan food can be spicy, but mild food can be arranged on request.', 'food', 0, '2026-05-06 06:52:46'),
(96, 'water drinking safe', 'It is better to drink bottled water or filtered water while travelling in Sri Lanka.', 'travel', 0, '2026-05-06 06:52:46'),
(97, 'safety sri lanka tourist safe', 'Sri Lanka is generally safe for tourists, but normal travel precautions are recommended.', 'safety', 0, '2026-05-06 06:52:46'),
(98, 'solo female traveler safety', 'Solo female travelers can travel safely with proper planning, reliable transport and trusted accommodation.', 'safety', 0, '2026-05-06 06:52:46'),
(99, 'emergency number sri lanka', 'For emergencies in Sri Lanka, tourists can contact local police, ambulance services or their tour operator.', 'safety', 0, '2026-05-06 06:52:46'),
(100, 'travel insurance', 'Travel insurance is recommended for medical emergencies, cancellations and unexpected travel issues.', 'travel', 0, '2026-05-06 06:52:46'),
(101, 'airport to colombo time', 'Travel time from Colombo airport to Colombo city is usually around 45 minutes to 1.5 hours depending on traffic.', 'transport', 0, '2026-05-06 06:52:46'),
(102, 'airport to kandy time', 'Travel time from Colombo airport to Kandy is usually around 3 to 4 hours depending on traffic.', 'transport', 0, '2026-05-06 06:52:46'),
(103, 'airport to sigiriya time', 'Travel time from Colombo airport to Sigiriya is usually around 4 to 5 hours.', 'transport', 0, '2026-05-06 06:52:46'),
(104, 'colombo to ella time', 'Travel time from Colombo to Ella is around 6 to 8 hours by road, or longer by train.', 'transport', 0, '2026-05-06 06:52:46'),
(105, 'kandy to ella train time', 'The Kandy to Ella train journey usually takes around 6 to 7 hours.', 'transport', 0, '2026-05-06 06:52:46'),
(106, 'private car tour', 'Private car tours are available with a driver-guide for flexible and comfortable travel.', 'transport', 0, '2026-05-06 06:52:46'),
(107, 'van tour group transport', 'Van transport can be arranged for families and groups travelling around Sri Lanka.', 'transport', 0, '2026-05-06 06:52:46'),
(108, 'tuk tuk tour', 'Tuk tuk tours are available in Colombo, Kandy, Galle and selected local areas.', 'transport', 0, '2026-05-06 06:52:46'),
(109, 'train tickets sri lanka', 'Train tickets can be arranged based on availability, route and travel date.', 'transport', 0, '2026-05-06 06:52:46'),
(110, 'driver accommodation food', 'Driver accommodation and meals are usually arranged separately or included depending on the package.', 'transport', 0, '2026-05-06 06:52:46'),
(111, 'is sri lanka safe safety secure dangerous travel safe country safe for tourists', 'Yes, Sri Lanka is generally safe for tourists. Popular travel destinations are friendly and safe. Always follow local guidelines and normal travel precautions.', 'safety', 1, '2026-05-06 07:56:45'),
(112, 'contact number', '0775553987', 'learned', 1, '2026-05-06 08:07:50'),
(113, 'hello', 'hello...', 'learned', 1, '2026-05-06 08:07:55'),
(114, 'tell me about ella', 'Ella is a beautiful hill country destination in Sri Lanka, famous for Nine Arch Bridge, Little Adam’s Peak, tea plantations and mountain views.', 'learned', 1, '2026-05-06 08:09:17'),
(115, 'hi', 'hii how are you', 'learned', 1, '2026-05-06 08:36:29'),
(116, 'is sri lanka safe', 'Yes, Sri Lanka is generally safe for tourists, but normal travel precautions are recommended.', 'learned', 1, '2026-05-06 08:53:09'),
(117, 'wht is best city srilanka ?', 'Galle,Ella,Kandy', 'general', 0, '2026-05-06 08:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` int(11) NOT NULL,
  `package_name` varchar(150) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `places` text NOT NULL,
  `description` text NOT NULL,
  `status` varchar(20) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `package_name`, `duration`, `price`, `places`, `description`, `status`) VALUES
(1, 'Sri Lanka Classic Tour', '7 Days / 6 Nights', 'USD 495', 'Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, Galle', 'A balanced Sri Lanka tour covering culture, mountains, wildlife and beach areas.', 'active'),
(2, 'Hill Country Escape', '4 Days / 3 Nights', 'USD 280', 'Kandy, Nuwara Eliya, Ella', 'Perfect for tea plantations, waterfalls, cool climate and mountain scenery.', 'active'),
(3, 'Wildlife & Beach Tour', '5 Days / 4 Nights', 'USD 350', 'Yala, Mirissa, Galle, Hikkaduwa', 'Best for safari, whale watching, beaches and southern coastal attractions.', 'active'),
(4, 'Colombo Tuk Tuk City Tour', 'Half Day', 'USD 35', 'Colombo Fort, Pettah, Galle Face, Gangaramaya', 'A fun city tour by tuk tuk covering Colombo highlights and local experiences.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `unknown_questions`
--

CREATE TABLE `unknown_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `status` enum('pending','trained') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unknown_questions`
--

INSERT INTO `unknown_questions` (`id`, `question`, `answer`, `status`, `created_at`) VALUES
(1, 'supun', 'pepole name', 'trained', '2026-05-05 16:05:15'),
(2, 'tell me about ella', 'Ella is a beautiful hill country destination in Sri Lanka, famous for Nine Arch Bridge, Little Adam’s Peak, tea plantations and mountain views.', 'trained', '2026-05-06 07:57:22'),
(3, 'contact number', '0775553987', 'trained', '2026-05-06 07:57:49'),
(4, 'hello', 'hello...', 'trained', '2026-05-06 08:04:52'),
(5, 'hi', 'hii how are you', 'trained', '2026-05-06 08:31:25'),
(6, 'is sri lanka safe', 'Yes, Sri Lanka is generally safe for tourists, but normal travel precautions are recommended.', 'trained', '2026-05-06 08:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Administrator', 'admin@chatbot.com', '$2y$12$rfLQBmOpP8StCVmimVrKyuOmV49dhix/OXsZf7c8xhbSlBN/bqJsS', 'admin', '2026-05-05 07:34:53'),
(2, 'Demo User', 'user@chatbot.com', '$2y$12$N3O66y.2RuktHJbjh4HMsu74qIMlIPo/9U7yR/4JPbglW6W7Ya5nK', 'user', '2026-05-05 07:34:53'),
(3, 'supun', 'supundhana22@gmail.com', '$2y$10$MeRKiDu7I4zi1SO/35HejunwFD.9pFZ/Jp3UJX6J5cLIb0/FZhZyK', 'user', '2026-05-05 07:45:36'),
(4, 'supun', 'dhana22@gmail.com', '$2y$10$CqBJeZ33v5Sy9vqsTYoqguWk6zhd79qypnDg2o4X7bXFb4YV2k5LW', 'user', '2026-05-05 07:46:11'),
(5, 'supun', 'nimal22@gmail.com', '$2y$10$lsSgovbiz9qLce6SGGIxReIrjfFKtMr98hgGSRKSY3fOkZ1fYpkhe', 'user', '2026-05-05 16:06:13'),
(6, 'nimal', 'n22@gmail.com', '$2y$10$21O709wu8NLFkpBal92y1OEGLbmPloGkvwOtiwosTKaeV.tH5uwV2', 'user', '2026-05-05 16:07:13'),
(7, 'kaveen', 'd22@gmail.com', '$2y$10$Qz80szuHLOk.VirC2by7VuL1DGcZarEknt4RSbtkn99BdnZmhvLx6', 'user', '2026-05-06 06:42:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `knowledge_base`
--
ALTER TABLE `knowledge_base`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unknown_questions`
--
ALTER TABLE `unknown_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `knowledge_base`
--
ALTER TABLE `knowledge_base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unknown_questions`
--
ALTER TABLE `unknown_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_history`
--
ALTER TABLE `chat_history`
  ADD CONSTRAINT `chat_history_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
