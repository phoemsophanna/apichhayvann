-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2026 at 04:39 PM
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
-- Database: `chhay_vann_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleKm` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `summaryKm` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `titleKm`, `summary`, `summaryKm`, `image`, `ordering`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Most Transparent FX Broker', NULL, 'Global Forex Awards Jun, 2016', NULL, '/award/CamGoTech_TB3IHdBoegI2X1DtNfZCsnwxhZd9G2p4PIn63X2Z.webp', 1, 1, '2026-01-09 01:38:27', '2026-01-09 01:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleKm` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `subtitleKm` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `descriptionKm` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `linkLabel` varchar(255) DEFAULT NULL,
  `linkLabelKm` varchar(255) DEFAULT NULL,
  `linkTo` text DEFAULT NULL,
  `redirectNewTap` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `titleKm`, `subtitle`, `subtitleKm`, `description`, `descriptionKm`, `image`, `linkLabel`, `linkLabelKm`, `linkTo`, `redirectNewTap`, `ordering`, `isActive`, `created_at`, `updated_at`) VALUES
(2, 'Global Markets', '', '', '', '', '', '/banner/CamGoTech_nav9dD8kewd81IujDfUgkbFpLKHsX4zNvZixU07O.jpg', NULL, NULL, NULL, 0, 1, 1, '2026-01-26 20:03:32', '2026-01-26 20:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleKm` varchar(255) DEFAULT NULL,
  `des` text DEFAULT NULL,
  `desKm` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `contentKm` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `locationKm` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `titleKm`, `des`, `desKm`, `content`, `contentKm`, `location`, `locationKm`, `deadline`, `type`, `ordering`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Card Dispute Resolution Officer', '', '<p>Card Dispute Resolution Officer is to monitor daily suspicious declines and approve transactions on both the issuing and acquiring sides by calling to inform/verify with the cardholder/merchant in order to reduce declines occurring and prevent cardholder/bank financial losses.</p>', '', '<ul role=\"list\">\n<li>To monitor transactions on both the issuing and acquiring sides (Visa/UPI Debit Card, Visa/Master Credit Card, ATM/CSS Card, Merchant POS, Merchant E-Commerce, and ATM).</li>\n<li>Monitor/review suspicious account/transaction activity on QR payments, WeChat payments, POS payments, e-commerce payments, and ATM.</li>\n<li>Monitor/review the offline transactions and investigation/confirmation with the cardholder.</li>\n<li>Call cardholders/merchants to collect relevant information and verify transactions in case they are suspicious.</li>\n<li>Block cards/funds in case the transactions are suspicious.</li>\n<li>Follow up on the previous suspicious transactions.</li>\n<li>To support call-in/email inquiries from the cardholder/merchant/branch and provide a solution if needed.</li>\n<li>To understand the workflow in the department.</li>\n<li>To understand the Rule of Chargeback/Dispute on Card Scheme (Visa/Master/UPl/CSS).</li>\n<li>To properly update the report to the supervisor and perform other duties as assigned by the manager.</li>\n</ul>', '', 'Head Office, Phnom Penh', '', '2026-01-31', '', 1, 1, '2026-01-15 01:38:25', '2026-01-15 01:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `career_applies`
--

CREATE TABLE `career_applies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fileCv` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `careerId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `career_applies`
--

INSERT INTO `career_applies` (`id`, `firstname`, `lastname`, `phoneNumber`, `email`, `fileCv`, `message`, `careerId`, `created_at`, `updated_at`) VALUES
(1, 'Phanna', 'Phoem', '+855 17843304', 'admin@gmail.com', NULL, 'Test', 1, '2026-01-29 02:19:37', '2026-01-29 02:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleKm` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type`, `title`, `titleKm`, `image`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NEWS', 'Economic Calendar', NULL, NULL, 1, 1, '2026-01-13 00:11:34', '2026-01-13 00:11:34'),
(2, 'NEWS', 'Analyst Research', NULL, NULL, 2, 1, '2026-01-13 00:11:53', '2026-01-13 00:11:53'),
(3, 'FAQ', 'Account', NULL, NULL, 1, 1, '2026-01-15 02:11:29', '2026-01-15 02:11:29'),
(4, 'FAQ', 'Company', NULL, NULL, 2, 1, '2026-01-15 02:11:59', '2026-01-15 02:11:59'),
(5, 'FAQ', 'Trading', NULL, NULL, 3, 1, '2026-01-15 02:20:22', '2026-01-15 02:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `currency_converts`
--

CREATE TABLE `currency_converts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subCurrency` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`subCurrency`)),
  `rate` varchar(191) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_converts`
--

INSERT INTO `currency_converts` (`id`, `currency`, `type`, `subCurrency`, `rate`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Khmer Riel', 'KHR', '[{\"id\":2,\"image\":\"\\/currency\\/CamGoTech_PbEpk5obIP3q8AorcQ3Sz64NAemq41xd1E1cJxRB.png\",\"title\":\"US Dollar\",\"type\":\"USD\",\"rate\":\"1\"}]', '4050', '/currency/CamGoTech_Zg0T5H3gJ6YDixb8NmF5aScAvUAOlzjB16klaMSr.png', 1, '2026-01-11 21:09:38', '2026-01-26 20:30:14'),
(2, 'US Dollar', 'USD', '[{\"id\":1,\"image\":\"\\/currency\\/CamGoTech_Zg0T5H3gJ6YDixb8NmF5aScAvUAOlzjB16klaMSr.png\",\"title\":\"Khmer Riel\",\"type\":\"KHR\",\"rate\":\"4090\"}]', '1', '/currency/CamGoTech_PbEpk5obIP3q8AorcQ3Sz64NAemq41xd1E1cJxRB.png', 1, '2026-01-12 00:08:38', '2026-01-12 00:08:38'),
(3, 'Chinese', 'CNY', '[]', '6.95', '/currency/CamGoTech_9yABhKnjys8XEP2VG3tFImFxwxHkDevtWnBEKVv1.jpg', 1, '2026-01-28 18:11:16', '2026-01-28 18:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rates`
--

CREATE TABLE `exchange_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `sell` varchar(255) DEFAULT NULL,
  `buy` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exchange_rates`
--

INSERT INTO `exchange_rates` (`id`, `from`, `to`, `sell`, `buy`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'EUR', 'USD', '$1.069', '$1.999', '/exchange/CamGoTech_vqUg9lERbAtAx28K8zpOJK4C0AsKfrA7sF0zwThY.webp', 1, '2026-01-11 19:22:31', '2026-01-11 19:22:31');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `questionKm` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answerKm` text DEFAULT NULL,
  `mainId` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `questionKm`, `answer`, `answerKm`, `mainId`, `ordering`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'How can I start trading Forex?', 'Test', 'Which of us ever undertakes laborious physical exercise, except to some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences.', '', 4, 1, 1, '2026-01-15 03:05:05', '2026-01-15 03:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleKm` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `summaryKm` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `title`, `titleKm`, `summary`, `summaryKm`, `year`, `image`, `ordering`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'The Establishment', NULL, 'Denounce with righteous indigation dislike men who are so beguiled and demoralized by pleasure of the moment.', NULL, '2000', '/history/CamGoTech_NbupOGcL0FEoCMcRApXayoB8yGgrNuqgZtxEVJcT.webp', 1, 1, '2026-01-09 02:20:34', '2026-01-09 02:21:17');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_19_022629_create_services_table', 1),
(6, '2023_10_19_095945_create_news_table', 1),
(7, '2023_10_23_075315_create_testimonials_table', 1),
(8, '2023_10_23_102456_create_banners_table', 1),
(9, '2023_10_24_082055_create_faqs_table', 1),
(10, '2023_10_24_091255_create_careers_table', 1),
(11, '2023_10_27_134236_create_site_settings_table', 1),
(12, '2023_11_09_015606_create_page_banners_table', 1),
(13, '2026_01_09_071318_create_partners_table', 2),
(14, '2026_01_09_080132_create_awards_table', 3),
(15, '2026_01_09_085614_create_histories_table', 4),
(16, '2026_01_09_092309_create_teams_table', 5),
(17, '2026_01_12_014437_create_exchange_rates_table', 6),
(18, '2026_01_12_023424_create_currency_converts_table', 7),
(19, '2026_01_12_072217_create_products_table', 8),
(20, '2026_01_13_020804_create_tradings_table', 9),
(21, '2026_01_13_045646_create_categories_table', 10),
(22, '2026_01_19_025951_create_permission_tables', 11),
(23, '2026_01_29_080213_create_career_applies_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleKm` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `summaryKm` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `contentKm` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `metaKeyword` varchar(255) DEFAULT NULL,
  `metaDesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `titleKm`, `summary`, `summaryKm`, `content`, `contentKm`, `date`, `category_id`, `isDisplayHomepage`, `image`, `ordering`, `isActive`, `metaKeyword`, `metaDesc`, `created_at`, `updated_at`) VALUES
(2, 'How Global Events are Shaping Commodity Prices', '', 'Desire that they cannot foresee all the pain business it will frequently occur', '', '<div class=\"blog-details-text1\">\n<p>Triving and dislike men who are so that beguiled and demoralized welcomed every pain avoided frequently occur that pleasures indignation and dislike men who are so beguiled the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain troublethat are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of same as saying through shrinking our being able to do.</p>\n<p>Foresee the pain trouble that are bound to ensue equal blame belongs to those who fail in their duties which is the same as saying through shrinking annoying consequences.</p>\n<p>Our being able to do what we like best every pleasure is to be welcomed every pain avoided but in certain that matters to this principle circumstances and owing to the claims.foresee the pain troublethat are bound to ensue equal blame belongs to those who fail in their duty through weakness of will which is the same as saying through shrinking.</p>\n</div>\n<div class=\"blog-details-quote\">\n<div class=\"blog-details-quote__inner\">\n<div class=\"text-box\">\n<p>Empower your trading journey with the right tools, strategies, and market insights&mdash;trade smarter, not harder.</p>\n</div>\n<div class=\"words-by\">\n<p>N.Isabella,&nbsp;Market Analyst.</p>\n</div>\n<div class=\"icon-box\"><img src=\"https://chhayvann.camgotech.com/_next/image?url=%2Fassets%2Fimages%2Ficon%2Ficon-quote.png&amp;w=256&amp;q=75\" srcset=\"/_next/image?url=%2Fassets%2Fimages%2Ficon%2Ficon-quote.png&amp;w=96&amp;q=75 1x, /_next/image?url=%2Fassets%2Fimages%2Ficon%2Ficon-quote.png&amp;w=256&amp;q=75 2x\" alt=\"Icon\" width=\"95\" height=\"68\" loading=\"lazy\" data-nimg=\"1\"></div>\n</div>\n</div>\n<div class=\"blog-details-text2\">\n<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, cause it pain, but because occasionally circumstances.</p>\n</div>\n<div class=\"what-are-fiscal-policies\">\n<div class=\"title-box\">\n<h3>What Are Fiscal Policies?</h3>\n<p>To take a trivial example, which of us ever undertaked laborious physical exercise, except that to btain someadvantage from it but who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying.</p>\n</div>\n<div class=\"list-item\">\n<p class=\"color\">Rationally encounter consequences that are extremely painful,</p>\n<ul>\n<li>\n<div class=\"icon\">&nbsp;</div>\n<p>Pleasure that has no annoying consequences.</p>\n</li>\n<li>\n<div class=\"icon\">&nbsp;</div>\n<p>The wise man therefore always holds</p>\n</li>\n<li>\n<div class=\"icon\">&nbsp;</div>\n<p>Rejects pleasures to secure other greater pleasures, or else he endures.</p>\n</li>\n</ul>\n</div>\n</div>', '', '2026-01-07', '1', 1, '/news/CamGoTech_dZzqUIGip5gCQqXKUXdxo6Dm6wGzXVeiXyRctJyD.webp', 1, 1, '', '', '2026-01-13 01:38:07', '2026-01-26 20:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `page_banners`
--

CREATE TABLE `page_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `pageTitle` varchar(255) NOT NULL DEFAULT '0',
  `pageTitleKm` varchar(255) NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_banners`
--

INSERT INTO `page_banners` (`id`, `image`, `type`, `pageTitle`, `pageTitleKm`, `isActive`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ABOUT', 'ABOUT', '0', 0, NULL, NULL),
(2, NULL, 'ORGANIZATION', 'ORGANIZATION', '0', 0, NULL, NULL),
(3, NULL, 'HISTORY', 'HISTORY', '0', 0, NULL, NULL),
(4, NULL, 'TEAM', 'TEAM', '0', 0, NULL, NULL),
(5, NULL, 'TestimonialPage', 'TestimonialPage', '0', 0, NULL, NULL),
(6, NULL, 'ExchangePage', 'ExchangePage', '0', 0, NULL, NULL),
(7, NULL, 'SERVICE', 'SERVICE', '0', 0, NULL, NULL),
(8, NULL, 'PRODUCT', 'PRODUCT', '0', 0, NULL, NULL),
(9, NULL, 'NEWS', 'NEWS', '0', 0, NULL, NULL),
(10, NULL, 'CareerPage', 'CareerPage', '0', 0, NULL, NULL),
(11, NULL, 'ContactPage', 'ContactPage', '0', 0, NULL, NULL),
(12, NULL, 'FaqPage', 'FaqPage', '0', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `link`, `image`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'kkk', '/partners/CamGoTech_Idx2Zy25w1akMXvUfepHC6ocAKptqxAvX68hubZH.png', 1, '2026-01-09 00:49:44', '2026-01-09 00:55:04');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(2, 'banner-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(3, 'banner-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(4, 'banner-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(5, 'banner-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(6, 'service-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(7, 'service-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(8, 'service-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(9, 'service-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(10, 'news-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(11, 'news-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(12, 'news-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(13, 'news-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(14, 'faq.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(15, 'faq.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(16, 'faq.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(17, 'faq.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(18, 'partners-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(19, 'partners-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(20, 'partners-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(21, 'partners-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(22, 'award-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(23, 'award-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(24, 'award-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(25, 'award-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(26, 'product-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(27, 'product-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(28, 'product-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(29, 'product-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(30, 'testimonial.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(31, 'testimonial.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(32, 'testimonial.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(33, 'testimonial.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(34, 'career-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(35, 'career-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(36, 'career-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(37, 'career-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(38, 'history-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(39, 'history-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(40, 'history-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(41, 'history-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(42, 'team-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(43, 'team-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(44, 'team-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(45, 'team-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(46, 'privacy-policy.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(47, 'privacy-policy.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(48, 'privacy-policy.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(49, 'privacy-policy.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(50, 'exchange-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(51, 'exchange-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(52, 'exchange-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(53, 'exchange-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(54, 'currency-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(55, 'currency-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(56, 'currency-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(57, 'currency-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(58, 'page-banner.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(59, 'page-banner.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(60, 'user-management.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(61, 'user-management.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(62, 'user-management.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(63, 'user-management.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(64, 'site-setting', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(65, 'role-menu.view', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(66, 'role-menu.create', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(67, 'role-menu.edit', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23'),
(68, 'role-menu.delete', 'api', '2026-01-23 00:44:23', '2026-01-23 00:44:23');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleKm` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `descriptionKm` text DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `typeKm` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `countryKm` varchar(255) DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `titleKm`, `description`, `descriptionKm`, `price`, `images`, `type`, `typeKm`, `country`, `countryKm`, `gallery`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Argor Heraeus', NULL, '<p>Triving and dislike men who are so that beguiled and demoralized welcomed every pain avoided frequently occur that pleasures indignation and dislike men who are so beguiled the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain troublethat are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of same as saying through shrinking our being able to do.</p>', NULL, NULL, NULL, 'Gold Bar 1 KG', NULL, 'Cambodia', NULL, '[\"\\/product\\/CamGoTech_IwAp16zDgXK64kvu299YP9pkijOxLe3V6vcDLqqj.png\",\"\\/product\\/CamGoTech_tdH0XwyvK07P8JYlPLYd63D2af6FTDp3PIluvMCv.png\"]', 1, 1, '2026-01-12 00:55:59', '2026-01-12 00:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'api', '2026-01-23 00:44:23', '2026-01-25 21:09:52'),
(4, 'Tester', 'api', '2026-01-25 20:04:39', '2026-01-25 20:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 4),
(7, 1),
(7, 4),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(10, 4),
(11, 1),
(11, 4),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleKm` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `summaryKm` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `contentKm` longtext DEFAULT NULL,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `metaKeyword` varchar(255) DEFAULT NULL,
  `metaDesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `titleKm`, `summary`, `summaryKm`, `content`, `contentKm`, `isDisplayHomepage`, `image`, `ordering`, `isActive`, `metaKeyword`, `metaDesc`, `created_at`, `updated_at`) VALUES
(1, 'Money Tranfer', 'ការផ្ទេរប្រាក់', '', '', '<p>Demoralized by the charms pleasure the moment blinded by desired that they cannot foresee that pain and trouble that are bound to ensue equal blame belongs to those who fail in their which is the same as saying through shrinking foresee the pain and trouble idea of denouncings master-builder of human happiness no one rejects dislikes or avoids.</p>', '', 0, '/service/CamGoTech_jY4iDFSRK0clCcb1BEIaAFCntr7ozSK9MJKr7jRp.jpg', 1, 1, '', '', '2026-01-12 01:07:16', '2026-01-12 01:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `type`, `content`, `created_at`, `updated_at`) VALUES
(1, 'HOMEPAGE', '{\"subtitle\":\"Welcome To\",\"subtitleKm\":\"\",\"companyName\":\"CHHAY VANN CO., LTD\",\"companyNameKm\":\"\",\"aboutCompany\":\"<p>It gives a complete and carefully structured account of the system, explaining its principles in detail while clearly expounding the teachings of the great explorer of truth, the master-builder of human understanding. Through thoughtful explanation and reasoned insight, it reveals how these teachings were formed and why they continue to influence human thought and progress. The text explores not only the surface ideas, but also the deeper foundations upon which the system is built, guiding the reader through its logic, purpose, and long-term significance.<\\/p>\",\"aboutCompanyKm\":\"\",\"subtitleTwo\":\"News & Research\",\"subtitleTwoKm\":\"\",\"title\":\"Latest Insights and Updates\",\"titleKm\":\"\",\"summary\":\"Discover the most competitive prices in the market, update.\",\"summaryKm\":\"\",\"thumbnail\":\"\"}', '2026-01-08 19:24:46', '2026-01-08 19:24:46'),
(2, 'HOWTRADE', '{\"subtitle\":\"How to Trade\",\"subtitleKm\":\"\\u179a\\u1794\\u17c0\\u1794\\u1792\\u17d2\\u179c\\u17be\\u1796\\u17b6\\u178e\\u17b7\\u1787\\u17d2\\u1787\\u1780\\u1798\\u17d2\\u1798\",\"des\":\"<p>Watch our trading videos to get the most from the markets and become a profitable trader.Watch our trading.<\\/p>\\n<p>Watch our trading videos to get the most from the markets and become a profitable trader.Watch our trading get the most from.<\\/p>\",\"desKm\":\"\",\"title\":\"Easy to Follow Video\",\"titleKm\":\"\",\"linkVideo\":\"https:\\/\\/www.youtube.com\\/watch?v=i5OZQQWj5-I\",\"link\":\"\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_skXi8AsOJEUumj8OCgwDse4ClVBL5McjzVECqvtJ.webp\"}', '2026-01-08 19:31:27', '2026-01-28 18:15:47'),
(3, 'WHYCHOOSE', '{\"subtitle\":\"Why Choose Us\",\"subtitleKm\":\"\",\"title\":\"The Top Choice for Traders\",\"titleKm\":\"\",\"summary\":\"Discover the most competitive prices in the market, updated regularly for your advantage.\",\"summaryKm\":\"\",\"titleOne\":\"Friendly & Expert\",\"titleOneKm\":\"\",\"titleTwo\":\"Regulated & Secure\",\"titleTwoKm\":\"\",\"titleThree\":\"24\\/7 Support\",\"titleThreeKm\":\"\",\"titleFour\":\"Trusted Broker\",\"titleFourKm\":\"\",\"titleFive\":\"Global Market Access\",\"titleFiveKm\":\"\",\"titleSix\":\"24\\/6 Market Access\",\"titleSixKm\":\"\",\"desOne\":\"Chhayvann is a member of SBMA (Singapore Bullion Market Association)\",\"desOneKm\":\"\",\"desTwo\":\"Chhayvann mainly import and export London Bullion Market Association (LBMA) accredited refineries gold and silver bars\",\"desTwoKm\":\"\",\"desThree\":\"24 hours trading of precious metals\",\"desThreeKm\":\"\",\"desFour\":\"Wide range of products including Gold bar, Gold\\/Silver scrap, Gold\\/Silver dore, Gold\\/Silver granules and etc.\",\"desFourKm\":\"\",\"desFive\":\"Automatic price setting and order submission no need to monitor gold prices all the time\",\"desFiveKm\":\"\",\"desSix\":\"We use international reputable secured carriers such as Brinks, Malca-Amit, Loomis for shipment\",\"desSixKm\":\"\",\"image\":\"\\/site-setting\\/CamGoTech_3sC291QNOSM627TzSMs0WeBiAWhBY8Nkzfz07BTm.png\",\"image2\":\"\",\"image3\":\"\\/site-setting\\/CamGoTech_Hdl1JGTmyFmU1aX7sv0WjbL7KwTo9NaUuRUoF0eT.png\",\"image4\":\"\",\"image5\":\"\",\"image6\":\"\"}', '2026-01-08 20:52:02', '2026-01-08 23:43:36'),
(4, 'ABOUTCOMPANY', '{\"subtitle\":\"About Us\",\"subtitleKm\":\"\",\"companyName\":\"CHHAY VANN CO., LTD\",\"companyNameKm\":\"\",\"aboutCompany\":\"<p>It is a long established fact that reader will be distracted by the readable content of a page when looking atlayout point of making here is that it has a more-or-less normal distribution all letters as opposed to using.<\\/p>\\n<p>It is a long established fact that reader will be distracted by the readable content of a page when looking atlayout point of making here is that it has a more-or-less normal distribution all letters as opposed to using.<\\/p>\",\"aboutCompanyKm\":\"\",\"titleVision\":\"Vision Statement\",\"titleVisionKm\":\"\",\"desVision\":\"<div class=\\\"text\\\">\\n<p>Impedit quo minus id quod maxime at perferendis facere possimus, omnis voluptas assumenda aut omnis quibus- dam dolorem fugiat.<\\/p>\\n<\\/div>\\n<ul class=\\\"list-item\\\">\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Et harum quidem rerum facilis est expedita.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Temporibus autem quibusdam et aut.<\\/p>\\n<\\/div>\\n<\\/li>\\n<\\/ul>\",\"desVisionKm\":\"\",\"titleMission\":\"Our Mission\",\"titleMissionKm\":\"\",\"desMission\":\"<div class=\\\"text\\\">\\n<p>Impedit quo minus id quod maxime at perferendis facere possimus, omnis voluptas assumenda aut omnis quibus- dam dolorem fugiat.<\\/p>\\n<\\/div>\\n<ul class=\\\"list-item\\\">\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Et harum quidem rerum facilis est expedita.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Temporibus autem quibusdam et aut.<\\/p>\\n<\\/div>\\n<\\/li>\\n<\\/ul>\",\"desMissionKm\":\"\",\"titleValue\":\"Our Value\",\"titleValueKm\":\"\",\"desValue\":\"<div class=\\\"text\\\">\\n<p>Impedit quo minus id quod maxime at perferendis facere possimus, omnis voluptas assumenda aut omnis quibus- dam dolorem fugiat.<\\/p>\\n<\\/div>\\n<ul class=\\\"list-item\\\">\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Et harum quidem rerum facilis est expedita.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Temporibus autem quibusdam et aut.<\\/p>\\n<\\/div>\\n<\\/li>\\n<\\/ul>\",\"desValueKm\":\"\",\"subtitlePartner\":\"Our Partners\",\"subtitlePartnerKm\":\"\",\"titlePartner\":\"Partnering with Industry Leaders\",\"titlePartnerKm\":\"\",\"valuePartner\":\"15+\",\"subtitleAward\":\"Awards & Honors\",\"subtitleAwardKm\":\"\",\"titleAward\":\"Proud Moments of Achievement\",\"titleAwardKm\":\"\",\"summaryAward\":\"Discover the most competitive prices in the market, updated regularly for your advantage.\",\"summaryAwardKm\":\"\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_U1oIwFtGDn1Z2XWlcYD155fMB7oe6z2yofIWt69W.webp\",\"image2\":\"\\/site-setting\\/CamGoTech_gtg45ZNfDOX6fKX0L2kOex1VAR4c57d6F0algQoV.webp\",\"image3\":\"\\/site-setting\\/CamGoTech_2qb4OWCVVk4BZGk0nfwc3ZPtC2VZYOHJ04alwm2b.webp\",\"image4\":\"\\/site-setting\\/CamGoTech_r0RGpoi6YZOYvosvtWim4fDaiEiW9YOUNJaw4pde.webp\",\"image5\":\"\\/site-setting\\/CamGoTech_7wO6EHHB02YMuIImLroYqJ9YWQSZHFbGxBsFPshH.webp\"}', '2026-01-08 23:58:44', '2026-01-09 00:05:08'),
(5, 'ORGANIZATION', '{\"des\":\"<p><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/content\\/CamGoTech_eg95ssDxmWasNHy0jPDg3WkhcERahPhfn1ekelNP.jpg\\\" alt=\\\"\\\" width=\\\"1280\\\" height=\\\"1205\\\"><\\/p>\",\"desKm\":\"\"}', '2026-01-09 01:54:00', '2026-01-09 01:54:00'),
(6, 'SERVICE', '{\"title\":\"Most Popular Currency\",\"titleKm\":\"\",\"summary\":\"Discover the most competitive prices in the market, updated\\nregularly for your advantage.\",\"summaryKm\":\"\",\"convertSummary\":\"The rates above are for indicative purpose only and only applicable for Swift Transfer. For the updated rates, please refer to your nearest Chhayvann or call +85523 XXX XXX.\",\"convertSummaryKm\":\"\",\"description\":\"<p>Demoralized by the charms pleasure the moment blinded by desired that they cannot foresee that pain and trouble that are bound to ensue equal blame belongs to those who fail in their which is the same as saying through shrinking foresee the pain and trouble idea of denouncings master-builder of human happiness no one rejects dislikes or avoids.<\\/p>\",\"descriptionKm\":\"\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_uMl44d1c3peJtACAahZQVsU21cJj6mOtHimXQzCL.avif\"}', '2026-01-12 02:49:09', '2026-01-12 02:49:09'),
(7, 'TRADING', '{\"subtitle\":\"How to Invest\",\"subtitleKm\":\"\",\"title\":\"Step-by-Step Trading Guide\",\"titleKm\":\"\"}', '2026-01-12 21:46:36', '2026-01-12 21:48:09'),
(8, 'CAREER', '{\"subtitle\":\"Work and grow with Chhayvann\",\"subtitleKm\":\"\",\"title\":\"Work and grow with Chhayvann Co., Ltd.\",\"titleKm\":\"\",\"summary\":\"At Chhayvann, we believe ourselves well placed to capture opportunities ahead. We are also strengthening our franchise in the country and fortify our position as Cambodia\\u2019s safest bank.\",\"summaryKm\":\"\"}', '2026-01-13 01:53:33', '2026-01-15 01:09:50'),
(9, 'CONTACT', '{\"email1\":\"info@chhayvann.com.kh\",\"email2\":\"\",\"working1\":\"Mon - Sat: 8.00am to 5.00pm\",\"working2\":\"Mon - Sat: 8.00am to 5.00pm\",\"phoneNumber\":\"[{\\\"number\\\":\\\"012-XXX-XXX\\\"},{\\\"number\\\":\\\"023-XXX-XXX\\\"},{\\\"number\\\":\\\"096-XXX-XXX\\\"},{\\\"number\\\":\\\"097-XXX-XXX\\\"}]\",\"address\":\"No. 31, St. 286, Sangkat Olympic, Khan Boeng Keng Kang, Phnom Penh, Cambodia.\",\"embedMap\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d7817.902489118325!2d104.910056!3d11.555353000000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3109511753bcff5d%3A0x368a4a8664c5508b!2s31%20St%20286%2C%20Phnom%20Penh!5e0!3m2!1sen!2skh!4v1768788145968!5m2!1sen!2skh\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"facebookLink\":\"\",\"instagramLink\":\"\",\"telegramLink\":\"\",\"linkedinLink\":\"\",\"youtube\":\"\",\"appId\":\"\",\"pageId\":\"\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_JvJOLLQbHva5lxB3zBNWNfbFw8hFAs00zmntmYZu.jpg\",\"contactFormEmail\":\"info@chhayvann.com.kh\"}', '2026-01-18 19:03:44', '2026-01-18 19:03:44'),
(10, 'GENERAL', '{\"title\":\"CHHAYVANN CO., LTD.\",\"titleKm\":\"\",\"summary\":\"Business it will frequently to occur that pleasures have all repudiated and annoyances accepted.\",\"summaryKm\":\"\",\"keyword\":\"trading, sell, buy, gold\",\"logo_header\":\"\\/site-setting\\/CamGoTech_ljUvbGuSDh5mM34KyBHCRFHjXkbotqNJWG1NAoEa.webp\",\"logo_footer\":\"\\/site-setting\\/CamGoTech_yu4Oioh1nqSPK78bzQofKTtS1sDM21uG364bcnjG.webp\"}', '2026-01-18 19:37:08', '2026-01-18 19:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nameKm` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `positionKm` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `experienceKm` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `nameKm`, `position`, `positionKm`, `experience`, `experienceKm`, `facebook`, `telegram`, `linkedin`, `phone`, `email`, `image`, `ordering`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'M.Frederick', NULL, 'Head of Market Research', NULL, '6+ years of experience in markets.', NULL, 'https://www.facebook.com/HaileyOfficialPage', NULL, NULL, NULL, NULL, '/team/CamGoTech_WVJNyP7ei2LK6ibZBjFImnjGJVbd73SwDiv2FBfE.webp', 1, 1, '2026-01-09 02:59:57', '2026-01-09 03:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reviewerName` varchar(255) DEFAULT NULL,
  `reviewerPosition` varchar(255) DEFAULT NULL,
  `reviewerPositionKm` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `commentKm` text DEFAULT NULL,
  `reviewerProfile` varchar(255) DEFAULT NULL,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `reviewerName`, `reviewerPosition`, `reviewerPositionKm`, `comment`, `commentKm`, `reviewerProfile`, `isDisplayHomepage`, `ordering`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Newton Lester', 'Forex Trader', '', 'The platform\'s tools and resources significantly improved my trading strategy. Tradebrohas been instrumental in my trading success.', '', '/testimonial-profile/CamGoTech_H1BHKG9Yl3wwcHukQXAed9qoq3WuHoeboa6lmuUv.webp', 0, 1, 1, '2026-01-11 18:42:22', '2026-01-11 18:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `tradings`
--

CREATE TABLE `tradings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `step` varchar(255) DEFAULT NULL,
  `stepKm` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleKm` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `summaryKm` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tradings`
--

INSERT INTO `tradings` (`id`, `step`, `stepKm`, `title`, `titleKm`, `summary`, `summaryKm`, `image`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Step 01', '', 'Open Your Account', '', 'Always holds these matters to this principle of selection or else cases he endures pains.', '', NULL, 1, 1, '2026-01-12 21:48:56', '2026-01-12 21:48:56'),
(2, 'Step 02', '', 'Fund Your Account', '', 'Beguiled and demoralized the charms of pleasure of the moment, so blinded by desire that they foresee.', '', NULL, 2, 1, '2026-01-12 21:49:33', '2026-01-12 21:49:33'),
(3, 'Step 03', '', 'Choose Your Asset', '', 'Business it will frequently occur that pleasures have to be repudiated and annoyances accepted.', '', NULL, 3, 1, '2026-01-12 21:50:09', '2026-01-12 21:50:09'),
(4, 'Step 04', '', 'Open Your Account', '', 'Always holds these matters to this principle of selection or else cases he endures pains.', '', NULL, 4, 1, '2026-01-12 21:50:47', '2026-01-12 21:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `userRole` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phoneNumber`, `userRole`, `image`, `email_verified_at`, `password`, `isActive`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@gmail.com', NULL, NULL, NULL, '2026-01-07 20:44:37', '$2y$10$l3clnX7BYDvRN1ML8gs3GOxJXl8tIbF0PZH6HORYnHfWEuWmDB2M2', 0, 'mIenq8lbpm', '2026-01-07 20:44:37', '2026-01-07 20:44:37'),
(6, 'Phanna Phoem', 'phanna@gmail.com', NULL, 'Tester', NULL, NULL, '$2y$10$4nrPVlMewVENxSitYPXU4ucL/68zYwiI/YnFY0Q8q6seoqzrIA0se', 1, NULL, '2026-01-25 21:32:42', '2026-01-25 21:36:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_applies`
--
ALTER TABLE `career_applies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_converts`
--
ALTER TABLE `currency_converts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_rates`
--
ALTER TABLE `exchange_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_banners`
--
ALTER TABLE `page_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tradings`
--
ALTER TABLE `tradings`
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
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `career_applies`
--
ALTER TABLE `career_applies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currency_converts`
--
ALTER TABLE `currency_converts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exchange_rates`
--
ALTER TABLE `exchange_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_banners`
--
ALTER TABLE `page_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tradings`
--
ALTER TABLE `tradings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
