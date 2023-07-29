-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 04:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hightech`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `username`, `password`, `name`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$zCyh.Vcw8KhhfWXunrgBQOmRX02DvMySNRRNl.1Vk346TRFOMr0Sq', 'ADMIN', '35 Nguyễn Quang Bích', '0348572999', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `thumbnail`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Start Your Adventure in the Odyssey Ark’s Multi-Universe', '<p>The Odyssey Ark, a groundbreaking gaming screen, was released to make every gamer&rsquo;s dream come true.</p>\r\n<p>&nbsp;</p>\r\n<p>Along with 4K resolution and the 165Hz refresh rate, the world&rsquo;s first 55-inch, 1000R curved gaming screen delivers a brand new gaming experience. The Odyssey Ark is equipped with innovative, high-performance gaming features, providing enhanced graphics and an upgraded gaming experience for gamers to enjoy while in the midst of intense gameplay.</p>\r\n<p>&nbsp;</p>\r\n<p>Together with Odyssey Ark, gamers will dive into an uncharted multi-universe experience and discover the new features throughout the three worlds of the Ark-verse: Gaming Universe for gamers who value an optimized gaming environment, Cinematic Universe for gamers who value immersive experiences and sound quality and Multi-task Universe for gamers who value easy control and screen usability.</p>\r\n<p>&nbsp;</p>\r\n<p>Create an optimal gaming environment with the 55-inch gaming screen that can be scaled to 27-inches. Users can choose a screen ratio between 16:9, 21:9 or 32:9. Four surround-sound speakers fill gamers&rsquo; peripheral vision for a truly immersive experience. Multi View allows users to use the large screen to its full potential by displaying up to four screens all at once while horizontal, or three while in Cockpit Mode.</p>\r\n<p>&nbsp;</p>\r\n<p>Gamers can start a new, personalized adventure today in the Ark-verse with Odyssey Ark.</p>', 'Samsung', 'samsungNews.jpg', '1', '2022-08-22 09:20:17', NULL),
(6, '[Infographic] Samsung’s Portable SSD T7 Series Delivers Reliable Performance and Increased Durability', '<p>Samsung Electronics&rsquo; Portable Solid State Drive (PSSD) T7 Series brings durability and upgraded performance in three devices that fit in the palm of your hand: the T7, T7 Touch and T7 Shield.</p>\r\n<p>&nbsp;</p>\r\n<p>All devices in the T7 Series offer a read speed of 1,050 megabytes per second (MB/s) and a write speed of 1,000 MB/s, delivering reliable high speeds up to 9.5 times faster than external hard disk drives (HDD) without degradation in performance.</p>\r\n<p>&nbsp;</p>\r\n<p>Whether you&rsquo;re storing critical business documents, games, or movies, the T7, T7 Touch and T7 Shield do it all in a palm-sized package. The 85-by-57-millimeter T7 and T7 Touch and 88-by-59-millimeter T7 Shield offer the user credit card-sized portability.</p>\r\n<p>&nbsp;</p>\r\n<p>Optimized to be compatible across a variety of devices, including PC, Mac, Android devices and gaming consoles, the T7, T7 Touch and T7 Shield come with increased security to ensure data is protected even if the device gets lost. The T7 Touch even offers the option of unlocking with a touch of your finger or with a password, so you can keep your private files secure without sacrificing convenience.</p>\r\n<p>&nbsp;</p>\r\n<p>What&rsquo;s more, Samsung&rsquo;s T7 Shield is its most durable PSSD yet &mdash; built to withstand falls of up to 3 meters. The T7 Shield is IP65-certified as both water and dust-resistant yet weighs a mere 98 grams, making it the perfect compact storage device for those who work on the go.</p>\r\n<p>&nbsp;</p>\r\n<p>Designed to store everything from large work files to photos and videos of memorable moments, the T7 Series provides users with the ease of mind that their data is secure in devices that are built to last. Take a look at the infographic below to learn more about the groundbreaking features of the T7, T7 Touch and T7 Shield.</p>', 'Samsung', 'samsungNews2.jpg', '1', '2022-08-22 13:03:59', NULL),
(7, 'Sustainability Through Durability, Samsung’s 20-Year Commitment', '<p>At Bespoke Home 2022 in June, Samsung introduced its vision for sustainable solutions at home based on the Bespoke concept of flexible appliances that adapt to provide efficient home care solutions as lives evolve. This concept includes reducing waste by extending the lifespan of Samsung&rsquo;s appliances through reliability as frequent replacement of home appliances not only costs time and energy but also produces physical waste. Samsung is further combating this waste with sustainable solutions based on durability backed by the company&rsquo;s class-leading 20-year warranty<sup>1</sup>&nbsp;for the digital inverter technologies<sup>2</sup>&nbsp;in its washer, dryer and refrigerator, going into effect July 1.</p>\r\n<p>Samsung is devoted to providing high-quality, durable appliances that improve the lives of users at home, and the 20-year warranty on the key components of major appliances serves as evidence.</p>\r\n<p>&nbsp;</p>\r\n<p>While the warranty initially started as a 10-year warranty for both Europe and the U.S., this increase of up to 20-years reflects Samsung&rsquo;s confidence and commitment to its products.</p>\r\n<p>&nbsp;</p>\r\n<p>The start of this commitment began with research and development. Through decades of continued investment, Samsung is able to offer consumers appliances that pair the most advanced Samsung technologies with beautiful designs that elevate the home experience. This is evidenced by the latest kitchen and living appliances.</p>', 'Samsung', 'samsungNews3.jpg', '1', '2022-08-22 13:30:49', NULL),
(8, 'Apple expands Self Service Repair to Mac notebooks', '<div class=\"pagebody-copy\">Apple announced Self Service Repair will be available tomorrow for MacBook Air and MacBook Pro notebooks with the M1 family of chips, providing repair manuals and genuine Apple parts and tools through the Apple&nbsp;<a href=\"https://www.selfservicerepair.com/\" target=\"_blank\" rel=\"nofollow noopener\" data-analytics-exit-link=\"\">Self Service Repair Store</a>. Self Service Repair for iPhone launched earlier this year and the program will expand to additional countries &mdash; beginning in Europe &mdash; as well as additional Mac models later this year.</div>\r\n<div class=\"pagebody-copy\">Self Service Repair for MacBook Air and MacBook Pro offers more than a dozen different repair types for each model, including the display, top case with battery, and trackpad, with more to come. Customers who are experienced with the complexities of repairing electronic devices will be able to complete repairs on these Mac notebooks, with access to many of the same parts and tools available to Apple Store locations and Apple Authorized Service Providers.</div>\r\n<div class=\"pagebody-copy\">To start the Self Service Repair process, a customer will first review the repair manual for the product they want to repair by visiting&nbsp;<a href=\"https://support.apple.com/self-service-repair\" target=\"_blank\" rel=\"nofollow noopener\" data-analytics-exit-link=\"\">support.apple.com/self-service-repair</a>. Then, they can visit the Apple Self Service Repair Store and order the necessary parts and tools.</div>\r\n<div class=\"pagebody-copy\">Every genuine Apple part is designed and engineered for each product, and goes through extensive testing to ensure the highest quality, safety, and reliability. Customers can send replaced parts back to Apple for refurbishment and recycling, and in many cases receive credit of their purchase by doing so.</div>', 'Apple', 'appleNew1.jpg', '1', '2022-08-22 13:34:43', NULL),
(9, 'Shazam turns 20', '<div class=\"pagebody-copy\">Shazam turns 20 today, and as of this week, it has officially surpassed 70 billion song recognitions. A mainstay in popular culture, the platform has changed the way people engage with music by making song identification accessible to everyone. For more than 225 million global monthly users, to &ldquo;Shazam&rdquo; is to discover something new.</div>\r\n<div class=\"pagebody-copy\">To mark the occasion, Shazam invites fans to take a trip down memory lane with a special playlist comprised of the most Shazamed song of each calendar year for the past 20 years. Featuring everything from Train&rsquo;s &ldquo;Hey, Soul Sister&rdquo; to Sia&rsquo;s &ldquo;Cheap Thrills,&rdquo; the playlist is a true reflection of the music fans across the globe actively searched for over the past two decades. Listen now exclusively on Apple Music.</div>\r\n<div class=\"pagebody-copy\">\r\n<div class=\"pagebody-copy\">Over the years, Shazam&rsquo;s global charts have played a crucial role in helping to identify breaking new talent like Masked Wolf, who was one of Shazam&rsquo;s 5 Artists to Watch in 2021 and ended up having the most Shazamed track globally that year with &ldquo;Astronaut In The Ocean.&rdquo;</div>\r\n<div class=\"pagebody-copy\">&ldquo;The fact that people all over the world took time out of their day to pull out their phone and Shazam my songs is a huge honor for me as an artist,&rdquo; said Masked Wolf. &ldquo;You know you&rsquo;ve got something special if you see the Shazam stats moving.&rdquo;</div>\r\n<div class=\"pagebody-copy\">Shazam&rsquo;s charts have also become a barometer for unexpected pop culture moments. Kate Bush&rsquo;s 1985 song &ldquo;Running Up That Hill&rdquo; being featured in &ldquo;Stranger Things&rdquo; led to an all-time peak in Shazams of the singer, and the track took No. 1 on the Shazam Global Top 200 for 10 days. It ended up reaching the top of 25 national charts &mdash; more than any other song in 2022.</div>\r\n</div>', 'Apple', 'appleNew2.jpg', '1', '2022-08-22 13:36:00', NULL),
(10, 'Nintendo Switch', '<p>Here’s where you can buy a Nintendo Switch</p>', 'trung', 'switch-thumb-6056.jpg', '1', '2023-04-22 10:48:50', NULL),
(11, 'What is blockchain', '<p>Blockchain success starts here</p>', 'DKC', 'gypldzmyn0i31.jpg', '1', '2023-04-27 07:39:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`) VALUES
('C01', 'acer', '<p><strong>Acer Inc.</strong>&nbsp;(<span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\" lang=\"en-fonipa\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"/eɪ/: \'a\' in \'face\'\">eɪ</span><span title=\"\'s\' in \'sigh\'\">s</span><span title=\"/ər/: \'er\' in \'letter\'\">ər</span>/</a></span></span>&nbsp;<a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><em title=\"English pronunciation respelling\">AY-sər</em></a>) is a Taiwanese&nbsp;<a title=\"Multinational corporation\" href=\"https://en.wikipedia.org/wiki/Multinational_corporation\">multinational</a>&nbsp;hardware and electronics corporation specializing in advanced electronics technology, headquartered in&nbsp;<a title=\"Xizhi District\" href=\"https://en.wikipedia.org/wiki/Xizhi_District\">Xizhi</a>,&nbsp;<a title=\"New Taipei City\" href=\"https://en.wikipedia.org/wiki/New_Taipei_City\">New Taipei City</a>. Its products include&nbsp;<a title=\"Desktop computer\" href=\"https://en.wikipedia.org/wiki/Desktop_computer\">desktop</a>&nbsp;PCs, laptop PCs (<a title=\"Laptop\" href=\"https://en.wikipedia.org/wiki/Laptop\">clamshells</a>,&nbsp;<a title=\"2-in-1 PC\" href=\"https://en.wikipedia.org/wiki/2-in-1_PC\">2-in-1s</a>,&nbsp;<a class=\"mw-redirect\" title=\"Convertible laptop\" href=\"https://en.wikipedia.org/wiki/Convertible_laptop\">convertibles</a>&nbsp;and&nbsp;<a title=\"Chromebook\" href=\"https://en.wikipedia.org/wiki/Chromebook\">Chromebooks</a>),&nbsp;<a title=\"Tablet computer\" href=\"https://en.wikipedia.org/wiki/Tablet_computer\">tablets</a>,&nbsp;<a title=\"Server (computing)\" href=\"https://en.wikipedia.org/wiki/Server_(computing)\">servers</a>, storage devices,&nbsp;<a title=\"Virtual reality\" href=\"https://en.wikipedia.org/wiki/Virtual_reality\">virtual reality</a>&nbsp;devices, displays,&nbsp;<a title=\"Smartphone\" href=\"https://en.wikipedia.org/wiki/Smartphone\">smartphones</a>&nbsp;and&nbsp;<a title=\"Peripheral\" href=\"https://en.wikipedia.org/wiki/Peripheral\">peripherals</a>, as well as&nbsp;<a title=\"Gaming computer\" href=\"https://en.wikipedia.org/wiki/Gaming_computer\">gaming PCs</a>&nbsp;and accessories under its Predator brand. Acer is the&nbsp;<a class=\"mw-redirect\" title=\"Market share of leading PC vendors\" href=\"https://en.wikipedia.org/wiki/Market_share_of_leading_PC_vendors\">world\'s 5th-largest PC vendor by unit sales</a>&nbsp;as of September 2022.<sup id=\"cite_ref-4\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Acer_Inc.#cite_note-4\">[4]</a></sup></p>\r\n<p>In the early 2000s, Acer implemented a new business model, shifting from a manufacturer to a designer, marketer, and distributor of products, while performing production processes via contract manufacturers.<sup id=\"cite_ref-CentRes_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Acer_Inc.#cite_note-CentRes-5\">[5]</a></sup>&nbsp;Currently, in addition to its core IT products business, Acer also has a new business entity that focuses on the integration of cloud services and platforms, and the development of smartphones and wearable devices with value-added&nbsp;<a title=\"Internet of things\" href=\"https://en.wikipedia.org/wiki/Internet_of_things\">IoT</a>&nbsp;applications.<sup id=\"cite_ref-6\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Acer_Inc.#cite_note-6\">[6]</a></sup></p>'),
('C02', 'Msi', '<p>is a South Korean&nbsp;<a title=\"Multinational corporation\" href=\"https://en.wikipedia.org/wiki/Multinational_corporation\">multinational</a>&nbsp;manufacturing&nbsp;<a title=\"Conglomerate (company)\" href=\"https://en.wikipedia.org/wiki/Conglomerate_(company)\">conglomerate</a>&nbsp;headquartered in&nbsp;<a title=\"Samsung Town\" href=\"https://en.wikipedia.org/wiki/Samsung_Town\">Samsung Town</a>,&nbsp;<a title=\"Seoul\" href=\"https://en.wikipedia.org/wiki/Seoul\">Seoul</a>, South Korea.<sup id=\"cite_ref-samsung.co.kr_1-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Samsung#cite_note-samsung.co.kr-1\">[1]</a></sup>&nbsp;It comprises numerous affiliated businesses,<sup id=\"cite_ref-samsung.co.kr_1-2\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Samsung#cite_note-samsung.co.kr-1\">[1]</a></sup>&nbsp;most of them united under the Samsung brand, and is the largest South Korean&nbsp;<span title=\"Korean-language text\"><em lang=\"ko-Latn\"><a title=\"Chaebol\" href=\"https://en.wikipedia.org/wiki/Chaebol\">chaebol</a></em></span>&nbsp;(business conglomerate). As of 2020,&nbsp;Samsung has the eighth highest global&nbsp;<a title=\"Brand valuation\" href=\"https://en.wikipedia.org/wiki/Brand_valuation\">brand value</a>.<sup id=\"cite_ref-4\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Samsung#cite_note-4\">[4]</a></sup></p>\r\n<p>Samsung was founded by&nbsp;<a title=\"Lee Byung-chul\" href=\"https://en.wikipedia.org/wiki/Lee_Byung-chul\">Lee Byung-chul</a>&nbsp;in 1938 as a&nbsp;<a title=\"Trading company\" href=\"https://en.wikipedia.org/wiki/Trading_company\">trading company</a>. Over the next three decades, the group diversified into areas including food processing, textiles, insurance, securities, and retail. Samsung entered the&nbsp;<a title=\"Electronics industry\" href=\"https://en.wikipedia.org/wiki/Electronics_industry\">electronics industry</a>&nbsp;in the late 1960s and the construction and shipbuilding industries in the mid-1970s; these areas would drive its subsequent growth. Following Lee\'s death in 1987, Samsung was separated into five business groups&nbsp;&ndash; Samsung Group,&nbsp;<a title=\"Shinsegae\" href=\"https://en.wikipedia.org/wiki/Shinsegae\">Shinsegae</a>&nbsp;Group,&nbsp;<a title=\"CJ Group\" href=\"https://en.wikipedia.org/wiki/CJ_Group\">CJ Group</a>&nbsp;and&nbsp;<a title=\"Hansol\" href=\"https://en.wikipedia.org/wiki/Hansol\">Hansol</a>&nbsp;Group, and&nbsp;<a title=\"JoongAng Ilbo\" href=\"https://en.wikipedia.org/wiki/JoongAng_Ilbo\">JoongAng</a>&nbsp;Group.</p>\r\n<p>&nbsp;</p>'),
('C03', 'Mac', '<p>The&nbsp;<strong>MacBook</strong>&nbsp;is a brand of&nbsp;<a title=\"Mac (computer)\" href=\"https://en.wikipedia.org/wiki/Mac_(computer)\">Mac</a>&nbsp;<a title=\"Laptop\" href=\"https://en.wikipedia.org/wiki/Laptop\">notebook</a>&nbsp;computers designed and marketed by&nbsp;<a title=\"Apple Inc.\" href=\"https://en.wikipedia.org/wiki/Apple_Inc.\">Apple Inc.</a>&nbsp;that use Apple\'s&nbsp;<a title=\"MacOS\" href=\"https://en.wikipedia.org/wiki/MacOS\">macOS</a>&nbsp;operating system since 2006. It replaced the&nbsp;<a title=\"PowerBook\" href=\"https://en.wikipedia.org/wiki/PowerBook\">PowerBook</a>&nbsp;and&nbsp;<a title=\"IBook\" href=\"https://en.wikipedia.org/wiki/IBook\">iBook</a>&nbsp;brands during the&nbsp;<a title=\"Mac transition to Intel processors\" href=\"https://en.wikipedia.org/wiki/Mac_transition_to_Intel_processors\">Mac transition to Intel processors</a>, announced in 2005. The current lineup consists of the&nbsp;<a title=\"MacBook Air\" href=\"https://en.wikipedia.org/wiki/MacBook_Air\">MacBook Air</a>&nbsp;(2008&ndash;present) and the&nbsp;<a title=\"MacBook Pro\" href=\"https://en.wikipedia.org/wiki/MacBook_Pro\">MacBook Pro</a>&nbsp;(2006&ndash;present). Two different lines simply named \"MacBook\" existed from&nbsp;<a title=\"MacBook (2006&ndash;2012)\" href=\"https://en.wikipedia.org/wiki/MacBook_(2006%E2%80%932012)\">2006 to 2012</a>&nbsp;and&nbsp;<a class=\"mw-redirect\" title=\"MacBook (2015&ndash;2019)\" href=\"https://en.wikipedia.org/wiki/MacBook_(2015%E2%80%932019)\">2015 to 2019</a>. The MacBook brand was the \"world\'s top-selling line of premium laptops\" as of 2015.<sup id=\"cite_ref-hiner20152_1-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/MacBook#cite_note-hiner20152-1\">[1]</a></sup></p>'),
('C04', 'Asus', '<p>Asus was founded in&nbsp;<a title=\"Taipei\" href=\"https://en.wikipedia.org/wiki/Taipei\">Taipei</a>&nbsp;in 1989<sup id=\"cite_ref-14\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Asus#cite_note-14\">[14]</a></sup>&nbsp;by&nbsp;<a title=\"T.H. Tung\" href=\"https://en.wikipedia.org/wiki/T.H._Tung\">T.H. Tung</a>, Ted Hsu, Wayne Hsieh and M.T. Liao,<sup id=\"cite_ref-profile_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Asus#cite_note-profile-15\">[15]</a></sup>&nbsp;all four having previously worked at&nbsp;<a title=\"Acer Inc.\" href=\"https://en.wikipedia.org/wiki/Acer_Inc.\">Acer</a>&nbsp;as&nbsp;<a class=\"mw-redirect\" title=\"Hardware engineering\" href=\"https://en.wikipedia.org/wiki/Hardware_engineering\">hardware engineers</a>. At this time, Taiwan had yet to establish a leading position in the computer-hardware business.&nbsp;<a class=\"mw-redirect\" title=\"Intel Corporation\" href=\"https://en.wikipedia.org/wiki/Intel_Corporation\">Intel Corporation</a>&nbsp;would supply any new processors to more established companies like&nbsp;<a title=\"IBM\" href=\"https://en.wikipedia.org/wiki/IBM\">IBM</a>&nbsp;first, and Taiwanese companies would have to wait for approximately six months after IBM received their engineering&nbsp;<a title=\"Prototype\" href=\"https://en.wikipedia.org/wiki/Prototype\">prototypes</a>. According to company history, Asus created a motherboard prototype for using an&nbsp;<a class=\"mw-redirect\" title=\"Intel 80486\" href=\"https://en.wikipedia.org/wiki/Intel_80486\">Intel 486</a>, but it had to do so without access to the actual processor. When Asus approached Intel to request a processor to test it, Intel itself had a problem with its own 486 motherboard. Asus solved Intel\'s problem and it turned out that Asus\' own motherboard worked correctly without the need for further modification. Since then, Asus was receiving Intel engineering samples ahead of its competitors.<sup id=\"cite_ref-16\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Asus#cite_note-16\">[</a></sup></p>'),
('C05', 'Dell', '<p><strong>Dell Inc.</strong>&nbsp;is an American based technology company. It develops, sells, repairs, and supports computers and related products and services. Dell is owned by its parent company, Dell Technologies.<sup id=\"cite_ref-4\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Dell#cite_note-4\">[4]</a></sup><sup id=\"cite_ref-statesman_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Dell#cite_note-statesman-5\">[5]</a></sup></p>\r\n<p>Dell sells&nbsp;<a title=\"Personal computer\" href=\"https://en.wikipedia.org/wiki/Personal_computer\">personal computers</a>&nbsp;(PCs),&nbsp;<a title=\"Server (computing)\" href=\"https://en.wikipedia.org/wiki/Server_(computing)\">servers</a>,&nbsp;<a class=\"mw-redirect\" title=\"Data storage device\" href=\"https://en.wikipedia.org/wiki/Data_storage_device\">data storage devices</a>,&nbsp;<a title=\"Network switch\" href=\"https://en.wikipedia.org/wiki/Network_switch\">network switches</a>,&nbsp;<a class=\"mw-redirect\" title=\"Computer software\" href=\"https://en.wikipedia.org/wiki/Computer_software\">software</a>, computer&nbsp;<a title=\"Peripheral\" href=\"https://en.wikipedia.org/wiki/Peripheral\">peripherals</a>,&nbsp;<a class=\"mw-redirect\" title=\"HDTV\" href=\"https://en.wikipedia.org/wiki/HDTV\">HDTVs</a>, cameras, printers, and electronics built by other manufacturers. The company is known for how it manages its&nbsp;<a title=\"Supply chain management\" href=\"https://en.wikipedia.org/wiki/Supply_chain_management\">supply chain</a>&nbsp;and&nbsp;<a class=\"mw-redirect\" title=\"Electronic commerce\" href=\"https://en.wikipedia.org/wiki/Electronic_commerce\">electronic commerce</a>. This includes Dell selling directly to customers and delivering PCs that the customer wants.<sup id=\"cite_ref-bw1103_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Dell#cite_note-bw1103-6\">[6]</a></sup><sup id=\"cite_ref-statesman_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Dell#cite_note-statesman-5\">[5]</a></sup>&nbsp;Dell was a pure hardware vendor until 2009 when it acquired&nbsp;<a title=\"Perot Systems\" href=\"https://en.wikipedia.org/wiki/Perot_Systems\">Perot Systems</a>. Dell then entered the market for IT services. The company has expanded storage and networking systems. It is now expanding from offering computers only to delivering a range of technology for enterprise customers.<sup id=\"cite_ref-reut_7-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Dell#cite_note-reut-7\">[7]</a></sup><sup id=\"cite_ref-bloomberg.com_8-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Dell#cite_note-bloomberg.com-8\">[8]</a></sup></p>');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint(3) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `blog_id`, `product_id`, `name`, `email`, `comment`, `rating`, `created_at`, `updated_at`) VALUES
(1, NULL, 18, 'Xoi Man', 'dkc@gmail.com', 'sss', 1, '2023-04-11 12:01:15', '2023-04-11 12:01:15'),
(2, NULL, 31, 'Xoi Man', 'dkc@gmail.com', 'hr', 3, '2023-04-21 12:11:00', '2023-04-21 12:11:00'),
(4, 9, NULL, 'Crist', 'duongkhaicuong@gmail.com', 'aaaa', 4, '2023-04-22 10:54:36', '2023-04-22 10:54:36'),
(15, NULL, 22, 'Xoi Man', 'dkc@gmail.com', 'sada', 0, '2023-07-18 05:22:25', '2023-07-18 05:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2022_05_21_091635_create_products_table', 1),
(13, '2022_05_24_103523_create_blogs_table', 1),
(14, '2022_06_25_092459_create_accounts_table', 1),
(15, '2022_06_25_093920_create_tests_table', 1),
(16, '2022_07_30_093512_create_user_accounts_table', 2),
(17, '2022_08_05_090931_create_order_details_table', 3),
(18, '2022_08_15_134536_create_admin_accounts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `customer_id`, `customer_name`, `customer_address`, `customer_phone`, `status`, `created_at`) VALUES
(7, 'AP-20220826112614', NULL, 'Nguyễn Văn A', 'HCM', '0123456789', '2', '2022-08-26 04:26:14'),
(8, 'AP-20220826113750', NULL, 'Nguyễn Văn B', 'HCM', '0123456789', '2', '2022-08-26 04:37:50'),
(9, 'AP-20220828090358', NULL, 'Nguyễn Văn C', 'HCM', '0123456789', '2', '2022-08-28 02:03:58'),
(31, 'AP-20230427143633', NULL, 'hohohojuykuykiyli', 'nhntjukukuy', 'yliyliylkuk', '0', '2023-04-27 07:36:33'),
(32, 'AP-20230427143742', NULL, '$$%&^&^&', 'rey4u5i75975876876876876876', '987870980980980979868767645564643653', '0', '2023-04-27 07:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_quantity_sale` int(11) NOT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `order_id`, `product_code`, `product_name`, `product_price`, `product_quantity_sale`, `product_img`, `created_at`, `updated_at`) VALUES
(1, 7, 'LN32493824', 'Macbook Pro 13inch M2 Gray', '1499.99', 3, 'macbook-pro-m2-2022-gray.png', NULL, NULL),
(2, 7, 'LN20349543', 'IPad Pro 12.9Inch Silver', '1899.88', 4, 'ipad-pro-2021-11-inch-silver.png', NULL, NULL),
(3, 8, 'LN438495076', 'Iphone 13 Pink', '1199.00', 2, 'iphone-13-mini-red.png', NULL, NULL),
(4, 8, 'LN4384950', 'iPhone 13 Pro Max Silver', '1099.99', 1, 'iphone-13-pro-max-silver.png', NULL, NULL),
(5, 9, 'LN438495076', 'Iphone 13 Pink', '1199.00', 1, 'iphone-13-mini-red.png', NULL, NULL),
(6, 9, 'LN20349543', 'IPad Pro 12.9Inch Silver', '1899.88', 1, 'ipad-pro-2021-11-inch-silver.png', NULL, NULL),
(31, 31, 'SSBP07', 'Samsung Book Pro 07', '156.00', 1, 'laptop1.jpg', NULL, NULL),
(32, 32, 'SSBP01', 'Samsung Book Pro 1', '150.00', 1, 'samsung-galaxy-book2-pro-360-silver.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id_reset` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id_reset`, `email`, `token`, `created_at`) VALUES
(1, 'loi.duong.cit20@eiu.edu.vn', 'ZZVB6jQAFEjRaP3FmOqxdbRSqYi2Y7sdFHlageLn', '2022-08-17 12:24:04'),
(2, 'dloi8185@gmail.com', 'ZZVB6jQAFEjRaP3FmOqxdbRSqYi2Y7sdFHlageLn', '2022-08-17 13:38:33'),
(3, 'loi.duong.cit20@eiu.edu.vn', 'riQrzqEY88mhvIuUJBMztJ7ShGl4wpH81gOucT1O', '2022-08-24 12:50:46'),
(4, 'nhi.nguyenle.cit19@eiu.edu.vn', 'ZkfLjEd1aPi0zFu9SFjUnczPnCHtqF0d5MgyrpMF', '2022-08-29 01:26:26'),
(5, 'dloi8185@gmail.com', 'Kr5ii3m4OM56DeUiniWJjpHkNXaNTokkp9VFyjOw', '2022-09-05 09:29:55'),
(6, 'loi.duong.cit20@eiu.edu.vn', '02kaXLuEwBHaeAy7CH7Dr4Tr6Ll8T1skpPd7eMKJ', '2022-09-13 04:31:53'),
(7, 'loi.duong.cit20@eiu.edu.vn', 'zPuM7BLqgIlxYW2r9Ub8PiyWf0uGIYPBgWGgqxNn', '2022-12-12 04:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `name`, `category_id`, `description`, `price`, `quantity`, `img_path`, `created_at`, `updated_at`) VALUES
(4, 'LN20204378', 'Acer Predator Helios 300', 'C01', '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming&nbsp;Acer Predator&nbsp;Helios 300&nbsp;PH315 55 751D</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Acer Predator Helios 300 l&agrave; một trong những d&ograve;ng&nbsp;<a href=\"https://gearvn.com/pages/laptop-gaming\" target=\"_blank\" rel=\"noopener\">laptop gaming</a>&nbsp;mới nhất c&oacute; tr&ecirc;n thị trường, được trang bị cấu h&igrave;nh mạnh mẽ, thiết kế hầm hố, hiệu năng ấn tượng,...Nếu bạn đang t&igrave;m cho ri&ecirc;ng m&igrave;nh d&ograve;ng laptop gaming chất lượng c&acirc;n được mọi tựa game th&igrave;&nbsp; Acer Predator Helios 300 PH315 55 751D sẽ l&agrave; sự lựa chọn bạn kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n<h3><strong>Sử dụng CPU thế hệ thứ 12</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-gaming-acer-predator-helios-300-ph315-55-751d_f6ddd5fd0eec419ea1117a3433e0f5c6_grande.png\" alt=\"GEARVN-laptop-gaming-acer-predator-helios-300-ph315-55-751d\"></p>\r\n<p>&nbsp;</p>\r\n<p>Để người d&ugrave;ng c&oacute; những trải nghiệm th&uacute; vị trong mọi nhu cầu sử dụng từ học tập, l&agrave;m việc cho đến chơi game giải tr&iacute;. Acer Predator Helios 300 PH315 55 751D sử dụng&nbsp;<a href=\"https://gearvn.com/collections/cpu-intel-12th-gen\" target=\"_blank\" rel=\"noopener\">CPU thế hệ thứ 12</a>&nbsp;mới nhất từ Intel mang lại khả năng xử l&yacute; đa nhiệm với tốc độ đ&aacute;ng kinh ngạc.</p>\r\n<h3><strong>Khả năng xử l&yacute; đồ họa đỉnh cao</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-gaming-acer-predator-helios-300-ph315-55-751d-1_5b25ec99d3b54a509dae94ebe2d7bdd3_grande.png\" alt=\"GEARVN-laptop-gaming-acer-predator-helios-300-ph315-55-751d\"></p>\r\n<p>&nbsp;</p>\r\n<p>Acer Predator Helios 300 l&agrave; d&ograve;ng laptop chơi game c&oacute; khả năng xử l&yacute; đồ họa đỉnh cao. Trang bị card m&agrave;n h&igrave;nh NVIDIA GeForce RTX 3070Ti 8GB GDDR6 với những t&iacute;nh năng AI ti&ecirc;n tiến như:</p>\r\n<ul>\r\n<li>\r\n<p>C&ocirc;ng nghệ NVIDIA DLSS tăng cường độ ph&acirc;n giải để mang đến chất lượng h&igrave;nh ảnh sắc n&eacute;t, sống động cho người d&ugrave;ng những trải nghiệm chơi game ấn tượng.&nbsp;</p>\r\n</li>\r\n<li>\r\n<p>C&ocirc;ng nghệ xử l&yacute; h&igrave;nh ảnh Ray Tracing gi&uacute;p m&ocirc; phỏng h&igrave;nh ảnh một c&aacute;ch ch&acirc;n thực nhất.</p>\r\n</li>\r\n<li>\r\n<p>C&ocirc;ng nghệ NVIDIA Max-Q gi&uacute;p m&aacute;y t&iacute;nh gaming trở n&ecirc;n mỏng nhẹ, linh hoạt khi di chuyển nhưng vẫn đảm bảo mang đến chất lượng đồ họa.</p>\r\n</li>\r\n</ul>\r\n<h3><strong>M&agrave;n h&igrave;nh k&iacute;ch thước lớn, tấn số qu&eacute;t 165Hz</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-gaming-acer-predator-helios-300-ph315-55-751d-4_7381f7b3deb64542a4d202e3a0bbad84_grande.png\" alt=\"GEARVN-laptop-gaming-acer-predator-helios-300-ph315-55-751d\"></p>\r\n<p>&nbsp;</p>\r\n<p>Acer Predator Helios 300 PH315 55 751D trang bị&nbsp;<a href=\"https://gearvn.com/pages/man-hinh\" target=\"_blank\" rel=\"noopener\">m&agrave;n h&igrave;nh</a>&nbsp;với k&iacute;ch thước 15.6 inch với tần số qu&eacute;t 165Hz cho ra h&igrave;nh ảnh sắc n&eacute;t v&agrave; khả năng hiển thị chi tiết, loại bỏ mọi khả năng x&eacute; h&igrave;nh mang đến những trải nghiệm chơi game tốt nhất.</p>\r\n<h3><strong>B&agrave;n ph&iacute;m LED RGB 4 Zone</strong></h3>\r\n<p>Điểm ấn tượng tr&ecirc;n d&ograve;ng sản phẩm Acer Predator Helios 300&nbsp;ch&iacute;nh l&agrave; Acer đ&atilde; trang bị hệ thống LED RGB để tăng th&ecirc;m chất lượng cho nhu cầu chơi game giải tr&iacute;. Acer Predator Helios 300 PH315 55 751D được trang bị&nbsp;<a href=\"https://gearvn.com/collections/ban-phim-may-tinh\" target=\"_blank\" rel=\"noopener\">b&agrave;n ph&iacute;m</a>&nbsp;LED RGB 4 Zone ấn tượng. Th&ecirc;m cụm ph&iacute;m WASD ấn tượng được l&agrave;m nổi bật mang đến cho người chơi những trải nghiệm mới mẻ.</p>\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-gaming-acer-predator-helios-300-ph315-55-751d-2_0bc940aa0b8b437a932c5148c4a7fcd8_grande.png\" alt=\"GEARVN-laptop-gaming-acer-predator-helios-300-ph315-55-751d\"></p>\r\n<p>&nbsp;</p>\r\n<p>Để chiếc laptop gaming Acer mang đậm dấu ấn c&aacute; nh&acirc;n của bản th&acirc;n, người chơi ho&agrave;n to&agrave;n c&oacute; thể dễ d&agrave;ng tinh chỉnh hiệu ứng LED th&ocirc;ng qua phần mềm PredatorSense kh&ocirc;ng kh&aacute;c g&igrave; những d&ograve;ng&nbsp;<a href=\"https://gearvn.com/pages/ban-phim-may-tinh\" target=\"_blank\" rel=\"noopener\">b&agrave;n ph&iacute;m cơ</a>&nbsp;c&oacute; tr&ecirc;n thị trường để tạo n&ecirc;n kh&ocirc;ng gian chơi game c&ugrave;ng hệ thống LED độc đ&aacute;o.</p>\r\n<h3><strong>Tối ưu h&oacute;a tăng khả năng giảm nhiệt v&agrave; l&agrave;m m&aacute;t tổng thể</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-gaming-acer-predator-helios-300-ph315-55-751d-3_53844bd07cb64b1ba1cd21b0e49e7d04_grande.png\" alt=\"GEARVN-laptop-gaming-acer-predator-helios-300-ph315-55-751d\"></p>\r\n<p>&nbsp;</p>\r\n<p>Helios 300 l&agrave; d&ograve;ng laptop chơi game với hiệu năng ấn tượng từ CPU thế hệ thứ 12, VGA NVIDIA GEFORCE RTX 30,...nhưng để chiếc laptop c&oacute; thể hoạt động một c&aacute;ch ổn định khi chơi c&aacute;c tựa game max setting trong suốt thời gian d&agrave;i. Acer đ&atilde; tăng cường hệ thống&nbsp;<a href=\"https://gearvn.com/collections/tan-nhiet-khi\" target=\"_blank\" rel=\"noopener\">tản nhiệt</a>,&nbsp;l&agrave;m m&aacute;t với c&ocirc;ng nghệ quạt 3D AeroBlade 5th, c&ocirc;ng nghệ COOLBOOST tự động,... gi&uacute;p tối ưu h&oacute;a tăng khả năng giảm nhiệt v&agrave; l&agrave;m m&aacute;t tổng thể trong suốt thời gian vận h&agrave;nh.&nbsp;</p>\r\n<h3><strong>Cổng kết nối đa dạng&nbsp;</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-gaming-acer-predator-helios-300-ph315-55-751d-5_9b0b6d2bc84b4a9c8f280c5ecda48f1b_grande.png\" alt=\"GEARVN-laptop-gaming-acer-predator-helios-300-ph315-55-751d\"></p>\r\n<p>&nbsp;</p>\r\n<p>Để tăng cường t&iacute;nh đa nhiệm cho chiếc laptop gaming mới nhất của m&igrave;nh, Acer trang bị cho Predator Helios 300 PH315 55 751D đầy đủ cổng kết nối USB 3.2 gi&uacute;p bạn dễ d&agrave;ng kết nối với c&aacute;c thiết bị ngoại vi như&nbsp;<a href=\"https://gearvn.com/pages/chuot-may-tinh\" target=\"_blank\" rel=\"noopener\">chuột m&aacute;y t&iacute;nh</a>, loa v&agrave; tai nghe,..gi&uacute;p n&acirc;ng cao chất lượng cho nhu cầu sử dụng.&nbsp;</p>\r\n<p>Ngo&agrave;i ra, Acer Predator Helios 300 c&ograve;n được trang bị cổng Mini DisplayPort 1.4 v&agrave;&nbsp; HDMI 2.1 gi&uacute;p người chơi c&oacute; thể kết nối dễ d&agrave;ng với m&agrave;n h&igrave;nh rời.</p>', '1299.99', 100, 'Acer Predator Helios 300.webp', NULL, '2022-12-13 11:38:38'),
(5, 'LN20203249', 'Laptop Acer Swift 3', 'C01', '<p>Đ&aacute;nh gi&aacute; chi tiết laptop Acer Swift 3 SF314 71 74WD Laptop Acer Swift 3 SF314 71 74WD l&agrave; một si&ecirc;u phẩm mới của nh&agrave; Acer vừa mới ra mắt c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u. N&oacute; l&agrave; một trong những chiếc m&aacute;y t&iacute;nh x&aacute;ch tay được giới nh&acirc;n vi&ecirc;n văn ph&ograve;ng v&agrave; học sinh, sinh vi&ecirc;n săn đ&oacute;n nhất hiện nay nhờ hiệu năng ấn tượng v&agrave; vẻ ngo&agrave;i mỏng nhẹ, sang trọng. D&ugrave; l&agrave; một gương mặt mới trong l&agrave;ng laptop văn ph&ograve;ng nhưng Acer Swift 3 SF314 71 74WD sớm đ&atilde; trở th&agrave;nh sự lựa chọn h&agrave;ng đầu của nhiều người. GEARVN Laptop Acer Swift 3 SF314 71 74WD Thiết kế sang trọng, hiện đại v&agrave; tinh tế Swift 3 SF314 sở hữu vẻ ngo&agrave;i v&ocirc; c&ugrave;ng thanh tho&aacute;t v&agrave; sang trọng khi chỉ nặng 1.4 kg. Thiết kế nhỏ gọn sẽ l&agrave; một điểm cộng lớn khi bạn c&oacute; thể dễ d&agrave;ng bỏ v&agrave;o balo hay t&uacute;i x&aacute;ch mang đi khắp nơi đ&acirc;u. Vỏ m&aacute;y t&iacute;nh được l&agrave;m từ nh&ocirc;m-magie, mang đến độ bền bỉ gấp 4 lần so với c&aacute;c hợp kim nh&ocirc;m thồng thường. Kh&ocirc;ng những vậy, bạn sẽ kh&ocirc;ng c&ograve;n sợ những t&aacute;c động vật l&iacute; l&ecirc;n laptop khi phải di chuyển nhiều. GEARVN Laptop Acer Swift 3 SF314 71 74WD Ngo&agrave;i ra, Swift 3 SF314 được trang bị vi&ecirc;n pin 3-cell 57Wh, c&oacute; thể duy tr&igrave; thời gian on-screen l&ecirc;n đến17 giờ. Vi&ecirc;n pin n&agrave;y kh&aacute; phổ biến tr&ecirc;n thị trường v&agrave; được sử dụng tr&ecirc;n hầu hết c&aacute;c d&ograve;ng laptop Acer. Hỗ trợ sạc nhanh nay đ&atilde; được cập nhật tr&ecirc;n Swift 3 SF314, chỉ với 30 ph&uacute;t sạc bạn đ&atilde; c&oacute; thể sử dụng laptop trong v&ograve;ng 4 giờ đồng hồ. C&ocirc;ng ngh&ecirc; bảo mật tr&ecirc;n Swift 3 SF314 71 74WD Khi sử dụng m&aacute;y t&iacute;nh x&aacute;ch tay, bảo mật vẫn lu&ocirc;n được người d&ugrave;ng quan t&acirc;m. Hiểu được vấn đề n&agrave;y n&ecirc;n Swift 3 SF314 đ&atilde; trang bị c&ocirc;ng nghệ cảm biến v&acirc;n tay. T&iacute;nh năng n&agrave;y gi&uacute;p người d&ugrave;ng mở kh&oacute;a m&agrave;n h&igrave;nh nhanh ch&oacute;ng v&agrave; bảo mật an to&agrave;n hơn nhờ cảm biến v&acirc;n tay đặt ngay dưới b&agrave;n ph&iacute;m. C&oacute; thể thấy rằng Acer đ&atilde; l&agrave;m rất tốt trong việc thực thi bảo mật tối ưu cho người d&ugrave;ng. GEARVN Laptop Acer Swift 3 SF314 71 74WD B&agrave;n ph&iacute;m của Swift 3 SF314 cũng đ&atilde; được n&acirc;ng cấp. B&agrave;n ph&iacute;m ti&ecirc;u chuẩn với đ&egrave;n nền LED t&iacute;ch hợp, mang lại sự thoải m&aacute;i cho người d&ugrave;ng trong mọi điều kiện &aacute;nh s&aacute;ng. Khoảng c&aacute;ch giữa c&aacute;c ph&iacute;m kh&aacute; hợp l&yacute;, độ nảy tốt mang đến trải nghiệm g&otilde; ph&iacute;m thoải m&aacute;i v&agrave; &ecirc;m &aacute;i cho người d&ugrave;ng. C&aacute;c thao t&aacute;c g&otilde; ph&iacute;m thoải m&aacute;i v&agrave; ch&iacute;nh x&aacute;c, gi&uacute;p tăng tốc độ g&otilde; ph&iacute;m của bạn. M&agrave;n h&igrave;nh hiển thị Acer Swift 3 SF314 sở hữu m&agrave;n h&igrave;nh 14inch OLED, độ ph&acirc;n giải WQ2.8K (2880x1800). Bạn ho&agrave;n to&agrave;n c&oacute; thể trải nghiệm h&igrave;nh ảnh tuyệt vời khi thực hiện một số t&aacute;c vụ đơn giản như xem phim, lướt web hay học tập. M&agrave;n h&igrave;nh Swift 3 SF314 đạt tần số qu&eacute;t 90Hz gi&uacute;p loại bỏ hiện tượng nh&ograve;e do chuyển động v&agrave; chỉ để lại chất lượng h&igrave;nh ảnh ho&agrave;n hảo mượt m&agrave;. B&ecirc;n cạnh đ&oacute; c&ocirc;ng nghệ Acer CineCrystal tăng th&ecirc;m sức mạnh cho Swift 3 SF314 thể hiện với chất lượng h&igrave;nh ảnh ch&acirc;n thực với khả năng hiển thị m&agrave;u v&agrave; độ s&aacute;ng ấn tượng. GEARVN Laptop Acer Swift 3 SF314 71 74WD Hiệu năng ổn định v&agrave; vượt trội Swift 3 SF314 được t&iacute;ch hợp bộ vi xử l&yacute; Intel&reg; Core i7-12700H mới nhất gi&uacute;p xử l&yacute; mượt m&agrave; c&aacute;c t&aacute;c vụ văn ph&ograve;ng v&agrave; giải tr&iacute; đơn giản. CPU cực kỳ ấn tượng, tuy chỉ thuộc ph&acirc;n kh&uacute;c tầm trung nhưng hiệu năng m&agrave; n&oacute; mang lại kh&ocirc;ng hề thua k&eacute;m bất cứ đối thủ n&agrave;o. Hiệu năng đủ mạnh để c&acirc;n c&aacute;c tựa game th&ocirc;ng dụng. Swift 3 SF314 c&ograve;n được trang bị VGA độc quyền Intel Iris Xe Graphics để cải thiện hiệu suất khi ch&uacute;ng ta chơi game hoặc bạn c&oacute; thể tự điều chỉnh để mang lại trải nghiệm chơi game tốt nhất. Đồng thời, Swift 3 SF314 thừa sức đảm đương mọi t&aacute;c vụ xử l&yacute; h&igrave;nh ảnh, render video bằng Adobe Premiere Pro hay Photoshop, AutoCad. GEARVN Laptop Acer Swift 3 SF314 71 74WD Kh&ocirc;ng những vậy, Acer Swift 3 SF314 c&ograve;n sở hữu bộ vi xử l&yacute; cao cấp mạnh mẽ với những linh kiện cao cấp nhất hiện nay. Đ&oacute; l&agrave; 16GB RAM LPDDR5 6400MHz cho hiệu suất cao v&agrave; SSD PCIe NVMe l&ecirc;n đến 1TB để mang đến cho bạn khả năng đa nhiệm hiệu quả. Bạn c&oacute; thể thoải m&aacute;i lưu trữ dữ liệu học tập, c&ocirc;ng việc v&agrave; tăng tốc độ khởi động, mở ứng dụng trong nh&aacute;y mắt m&agrave; kh&ocirc;ng phải chờ đợi l&acirc;u.</p>', '1599.99', 100, 'laptop7.jpg', NULL, '2022-12-13 11:35:58'),
(6, 'LN20203294', 'Acer Aspire 7', 'C01', '<p>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Acer Aspire 7 Laptop gaming tốt nhất ph&acirc;n kh&uacute;c Acer Aspire 7 A715 43G R8GA t&iacute;ch hợp card đồ họa NVIDIA RTX 3050, l&agrave; laptop chơi game tốt nhất ph&acirc;n kh&uacute;c. Kh&ocirc;ng chỉ vậy, phi&ecirc;n bản n&agrave;y c&ograve;n mang thiết kế mới gọn g&agrave;ng v&agrave; sexy hơn. Aspire 7 được trang bị hệ thống tản nhiệt mạnh mẽ bậc nhất trong ph&acirc;n kh&uacute;c, thừa hưởng c&ocirc;ng nghệ từ c&aacute;c d&ograve;ng m&aacute;y cao cấp hơn của Acer, c&ugrave;ng cấu h&igrave;nh đỉnh cao, gi&uacute;p cho người d&ugrave;ng c&oacute; thể vừa chơi game vừa l&agrave;m việc ở bất cứ l&uacute;c n&agrave;o. Thiết kế tối ưu trải nghiệm chơi game Hệ thống hai quạt tản nhiệt, 3 ống đồng fullsize, heatsink size lớn gi&uacute;p Acer Aspire 7 A715 tối ưu khả năng tản nhiệt. Bản lề thiết kế chắc chắn &iacute;t bị rung lắc khi chơi, c&oacute; khả năng mở g&oacute;c 180 độ gi&uacute;p bảo vệ m&aacute;y tốt hơn. Về b&agrave;n ph&iacute;m, chiếc laptop gaming n&agrave;y sở hữu b&agrave;n ph&iacute;m fullsize rộng r&atilde;i cho bạn thoải m&aacute;i sử d&ugrave;ng với độ nảy tốt gi&uacute;p bạn dễ d&agrave;ng nhập liệu, soạn thảo văn bản thoải m&aacute;i nhất c&oacute; thể. Phần touchpad nhanh nhạy cũng l&agrave; điểm cộng của chiếc laptop n&agrave;y. Được trang bị cảm ứng đa điểm n&ecirc;n người d&ugrave;ng c&oacute; thể sử dụng touchpad cho trải nghiệm được n&acirc;ng l&ecirc;n một tầm cao hơn B&ecirc;n cạnh đ&oacute; chuẩn kết nối Bluetooth 5.2 sẽ gi&uacute;p cho em laptop Acer Aspire 7 dễ d&agrave;ng kết nối với c&aacute;c thiết bị kh&ocirc;ng d&acirc;y với độ ổn định cao nhất.</p>', '1699.99', 100, 'laptop4.png', NULL, '2022-12-13 11:35:00'),
(7, 'LN20224893', 'Acer Nitro 5', 'C01', '<p>Đ&aacute;nh gi&aacute; chi tiết Laptop Gaming Acer Nitro 5 Tiger AN515 GEARVN-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp Thiết kế tinh tế c&ugrave;ng những đường cắt đậm chất gaming. M&agrave;n h&igrave;nh IPS tần số qu&eacute;t cao, tr&agrave;n viền mang lại trải nghiệm game nhập vai ho&agrave;n hảo c&ugrave;ng đ&egrave;n LED RGB 4 Zone thay đổi được 16,7 triệu m&agrave;u cho game thủ thỏa sức s&aacute;ng tạo kh&ocirc;ng gian gaming ri&ecirc;ng biệt. GEARVN-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp Một trong những d&ograve;ng Laptop gaming NVIDIA GeForce RTX 30/GTX16 Series l&agrave; c&ocirc;ng cụ tối ưu cho trường học v&agrave; chơi game. Được hỗ trợ bởi GPU từng đoạt giải thưởng v&agrave; c&ocirc;ng nghệ Max-Q, bạn sẽ c&oacute; được những chiếc m&aacute;y mỏng v&agrave; nhẹ gi&uacute;p đ&aacute;p ứng h&agrave;ng loạt c&aacute;c ứng dụng v&agrave; mọi tựa game. GEARVN-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp Immersive Ray Tracing &nbsp;(đối với c&aacute;c sp d&ugrave;ng GTX16 series) Rt Cores thế hệ thứ 2 chuy&ecirc;n dụng cho ph&eacute;p d&ograve; tia nhanh, cho đồ họa ch&acirc;n thực v&agrave; nhập vai nhất. D&ograve; tia m&ocirc; phỏng h&agrave;nh vi vật l&yacute; của &aacute;nh s&aacute;ng để mang lại kết xuất thời gian thực, chất lượng điện ảnh cho ngay cả những tr&ograve; chơi trực quan cường độ cao nhất. GEARVN-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp Bộ vi xử l&yacute; thế hệ 12 mới nhất của Intel được tạo ra để đẩy khung h&igrave;nh v&agrave; gi&uacute;p việc di chuyển trở n&ecirc;n dễ d&agrave;ng. Tốc độ Turbo \"l&ecirc;n đến\" 4.7 GHz với tối đa 14 l&otilde;i v&agrave; 20 luồng (t&ugrave;y từng option CPU), bạn sẽ đạt được mức hiệu suất m&agrave; bạn cần v&agrave; tự do chơi game; mang lại độ trễ thấp nhất v&agrave; khả năng đ&aacute;p ứng tốt nhất. Đ&aacute;p ứng tốt mục ti&ecirc;u nhanh hơn, phản ứng nhanh hơn v&agrave; tăng độ ch&iacute;nh x&aacute;c mục ti&ecirc;u th&ocirc;ng qua một bộ c&ocirc;ng nghệ mang t&iacute;nh c&aacute;ch mạng để đo lường v&agrave; tối ưu h&oacute;a độ trễ hệ thống. GEARVN-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp Kh&aacute;m ph&aacute; c&aacute;c tr&ograve; chơi một c&aacute;ch chi tiết hơn với h&igrave;nh ảnh sắc n&eacute;t của m&agrave;n h&igrave;nh FHD IPS 15,6 inch. Tận hưởng trải nghiệm chơi game mượt m&agrave;, kh&ocirc;ng bị nh&ograve;e với tốc độ l&agrave;m mới từ 60Hz tới 144Hz v&agrave; thời gian phản hồi 3ms. Đ&acirc;y được xem l&agrave; laptop chơi game đ&atilde; được Acer tăng tỷ lệ m&agrave;n h&igrave;nh so với th&acirc;n m&aacute;y l&ecirc;n 80% với viền hẹp v&agrave; cung cấp m&agrave;u sắc sống động như thật bằng c&aacute;ch sử dụng bảng điều khiển từ 45% tới 72% NTSC, độ s&aacute;ng 300 nits. GEARVN-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp Trải nghiệm chơi game phấn kh&iacute;ch hơn nhờ v&agrave;o đ&egrave;n nền b&agrave;n ph&iacute;m RGB 4 v&ugrave;ng. Giờ đ&acirc;y, game thủ c&oacute; thể t&ugrave;y chỉnh c&aacute;c thiết lập m&agrave;u sắc v&agrave; hiệu ứng dễ d&agrave;ng ngay tr&ecirc;n phần mềm Nitro Sense được t&iacute;ch hợp sẵn. Một trong d&ograve;ng laptop Acer được trang bị b&agrave;n ph&iacute;m mang đến những trải nghiệm, cảm gi&aacute;c bấm kh&ocirc;ng kh&aacute;c g&igrave; sử dụng b&agrave;n ph&iacute;m cơ. GEARVN-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp Kết nối si&ecirc;u nhanh v&agrave; ổn định với c&ocirc;ng nghệ Wifi 6 mới nhất v&agrave; Killer&trade; Ethernet E2600 gi&uacute;p ổn định đường truyền internet trong suốt qu&aacute; tr&igrave;nh chiến game. Gaming Nitro 5 cũng bao gồm c&aacute;c cổng kết nối cao cấp kh&aacute;c. Cổng nguồn m&aacute;y t&iacute;nh nay đ&atilde; được bố tr&iacute; ở đằng sau m&aacute;y mang lại sự tiện lợi v&agrave; gọn g&agrave;ng trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>', '899.99', 100, 'laptop3.png', NULL, '2022-12-13 11:32:33'),
(8, 'LN20223049', 'Acer Swift Edge', 'C01', '<p>Đ&aacute;nh gi&aacute; chi tiết laptop Acer Swift Edge SFA16 41 R3L6 Laptop Acer Swift Edge SFA16 41 R3L6 l&agrave; một si&ecirc;u phẩm mới của nh&agrave; Acer vừa mới ra mắt c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u. N&oacute; l&agrave; một trong những chiếc m&aacute;y t&iacute;nh x&aacute;ch tay được giới nh&acirc;n vi&ecirc;n văn ph&ograve;ng v&agrave; học sinh, sinh vi&ecirc;n săn đ&oacute;n nhất hiện nay nhờ hiệu năng ấn tượng v&agrave; vẻ ngo&agrave;i mỏng nhẹ, sang trọng. D&ugrave; l&agrave; một gương mặt mới trong l&agrave;ng laptop văn ph&ograve;ng nhưng Acer Swift Edge SFA16 41 R3L6 sớm đ&atilde; trở th&agrave;nh sự lựa chọn h&agrave;ng đầu của nhiều người. GEARVN - Laptop Acer Swift Edge SFA16 41 R3L6 Thiết kế sang trọng, hiện đại v&agrave; tinh tế Acer Swift Edge SFA16 41 R3L6 sở hữu vẻ ngo&agrave;i v&ocirc; c&ugrave;ng thanh tho&aacute;t v&agrave; sang trọng khi chỉ nặng 1.1 kg. Thiết kế nhỏ gọn sẽ l&agrave; một điểm cộng lớn khi bạn c&oacute; thể dễ d&agrave;ng bỏ v&agrave;o balo hay t&uacute;i x&aacute;ch mang đi khắp nơi đ&acirc;u. Vỏ m&aacute;y t&iacute;nh được l&agrave;m từ nh&ocirc;m-magie, mang đến độ bền bỉ gấp 4 lần so với c&aacute;c hợp kim nh&ocirc;m th&ocirc;ng thường. Kh&ocirc;ng những vậy, bạn sẽ kh&ocirc;ng c&ograve;n sợ những t&aacute;c động vật l&yacute; l&ecirc;n laptop khi phải di chuyển nhiều. GEARVN - Laptop Acer Swift Edge SFA16 41 R3L6 Ngo&agrave;i ra, Acer Swift Edge SFA16 được trang bị vi&ecirc;n pin 3-cell 54Wh, c&oacute; thể duy tr&igrave; thời gian on-screen tr&ecirc;n 17 giờ. Vi&ecirc;n pin n&agrave;y kh&aacute; phổ biến tr&ecirc;n thị trường v&agrave; được sử dụng tr&ecirc;n hầu hết c&aacute;c d&ograve;ng laptop Acer. Hỗ trợ sạc nhanh nay đ&atilde; được cập nhật tr&ecirc;n Acer Swift Edge, chỉ với 30 ph&uacute;t sạc bạn đ&atilde; c&oacute; thể sử dụng laptop trong v&ograve;ng 4 giờ đồng hồ.</p>', '999.99', 100, 'laptop2.png', NULL, '2022-12-13 11:31:17'),
(9, 'LN2022490', 'Airpods 2', 'C04', 'With plenty of talk and listen time, voice-activated Siri access, and an available wireless charging case, AirPods deliver an incredible wireless headphone experience. Simply take them out and they’re ready to use with all your devices.', '399.99', 100, 'airpods-2-wireless.png', NULL, NULL),
(10, 'LN2022492', 'Airpods 3', 'C04', 'With plenty of talk and listen time, voice-activated Siri access, and an available wireless charging case, AirPods deliver an incredible wireless headphone experience. Simply take them out and they’re ready to use with all your devices.', '469.99', 100, 'bluetooth-airpods-3.png', NULL, NULL),
(11, 'LN20224203', 'Airpods Pro', 'C04', 'With plenty of talk and listen time, voice-activated Siri access, and an available wireless charging case, AirPods deliver an incredible wireless headphone experience. Simply take them out and they’re ready to use with all your devices.', '699.99', 100, 'airpods-pro.png', NULL, NULL),
(13, 'LN20223809', 'Macbook Pro 14 M1 Pro', 'C03', '<p>The most powerful MacBook Pro ever is here. With the blazing-fast M1 Pro or M1 Max chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life.</p>', '1799.99', 100, 'macbook-pro-14-inch-m1-pro-2021-bac.png', NULL, '2022-08-22 13:55:13'),
(14, 'LN20224383', 'Airpods Max', 'C04', 'The most powerful MacBook Pro ever is here. With the blazing-fast M1 Pro or M1 Max chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life.', '1399.99', 100, 'bluetooth-airpods-max.png', NULL, NULL),
(15, 'LN20224839', 'Samsung Book Pro 4', 'C02', '<h2><strong>Samsung Galaxy Book Pro 4 - Tinh tế, hiện đại v&agrave; mạnh mẽ</strong></h2>\r\n<p>L&agrave; thế hệ Galaxy Book tiếp theo được ra mắt trong năm nay,&nbsp;<strong>Samsung Galaxy Book Pro 4</strong>&nbsp;được trang bị những g&igrave; tốt nhất hiện c&oacute; tr&ecirc;n thị trường&nbsp;<a title=\"Laptop ch&iacute;nh h&atilde;ng\" href=\"https://cellphones.com.vn/laptop.html\" target=\"_blank\" rel=\"noopener\"><strong>laptop</strong></a>&nbsp;nhằm mang tới hiệu năng vượt trội để đ&aacute;p ứng nhu cầu sử dụng ng&agrave;y c&agrave;ng cao của người d&ugrave;ng? C&ugrave;ng CellphoneS đ&aacute;nh gi&aacute; chi tiết mẫu Galaxy Book 2 trong b&agrave;i viết dưới đ&acirc;y.</p>\r\n<h3><strong>Thiết kế tinh tế, gọn nhẹ v&agrave; bắt mắt</strong></h3>\r\n<p>Đi theo phong c&aacute;ch thiết kế đ&atilde; trở th&agrave;nh thương hiệu của Samsung trong suốt nhiều năm nay, Samsung Galaxy Book 2 sở hữu một vẻ ngo&agrave;i hiện đại, tinh tế v&agrave; v&ocirc; c&ugrave;ng thanh lịch. Điều n&agrave;y c&oacute; được l&agrave; nhờ v&agrave;o phần vỏ ngo&agrave;i hợp kim nh&ocirc;m mịn kết hợp c&ugrave;ng c&aacute;c m&agrave;u sắc trang nh&atilde; v&agrave; nắp lưng phẳng.</p>', '799.99', 100, 'laptop3.png', NULL, '2023-04-27 07:25:43'),
(18, 'LN4384950', 'Acer Aspire', 'C01', '<p>Acer Aspire 5 l&agrave; một trong những d&ograve;ng laptop văn ph&ograve;ng b&aacute;n chạy nhất của laptop Acer. Sở hữu thiết kế mỏng, nhẹ v&agrave; gọn g&agrave;ng gi&uacute;p người d&ugrave;ng bỏ v&agrave;o balo v&agrave; t&uacute;i x&aacute;ch để đi v&agrave;o bất cứ đ&acirc;u. Với mức gi&aacute; phải chăng m&agrave; bạn đ&atilde; c&oacute; thể sở hữu một chiếc laptop cấu h&igrave;nh ổn định v&agrave; chất lượng như vậy th&igrave; ngại g&igrave; kh&ocirc;ng chốt đơn.</p>', '1099.99', 98, 'laptop1.jpg', '2022-08-21 07:16:09', '2022-12-13 11:21:26'),
(19, 'LN2347392', 'Macbook Air M2 Blue', 'C03', '<p>Easy to learn. Astoundingly powerful. Battery life beyond belief. Mac is designed to let you work, play, and create in ways you never imagined. It comes loaded with apps that are ready to go right out of the box. Free, regular software updates keep things up to date and running smoothly. And if you already have an iPhone, it feels familiar from the moment you turn it on.</p>', '1299.99', 97, 'apple-macbook-air-m2-2022-xanh.png', '2022-08-21 07:49:20', NULL),
(20, 'LN23497023', 'Macbook Pro 13inch M2', 'C03', '<p>The new M2 chip makes the 13‑inch MacBook Pro more capable than ever. The same compact design supports up to 20 hours of battery life1 and an active cooling system to sustain enhanced performance. Featuring a brilliant Retina display, a FaceTime HD camera, and studio‑quality mics, it&rsquo;s our most portable pro laptop.<br>Supercharged by Apple M2 chip.</p>\n<p>The M2 chip begins the next generation of Apple silicon, with even more of the speed and power efficiency introduced by M1. So you can rip through workflows with a more powerful 8-core CPU. Create stunning graphics with a lightning‑fast 10‑core GPU. Work with more streams of 4K and 8K ProRes video with the high-performance media engine. And do it all at once with up to 24GB of faster unified memory.</p>', '1399.99', 100, 'macbook-pro-m2-2022-gray.png', '2022-08-21 07:51:07', '2023-04-22 12:36:24'),
(21, 'LN32493824', 'Macbook Pro 13inch M2 Gray', 'C03', '<p>The new M2 chip makes the 13‑inch MacBook Pro more capable than ever. The same compact design supports up to 20 hours of battery life1 and an active cooling system to sustain enhanced performance. Featuring a brilliant Retina display, a FaceTime HD camera, and studio‑quality mics, it&rsquo;s our most portable pro laptop.<br>Supercharged by Apple M2 chip.</p>\r\n<p>The M2 chip begins the next generation of Apple silicon, with even more of the speed and power efficiency introduced by M1. So you can rip through workflows with a more powerful 8-core CPU. Create stunning graphics with a lightning‑fast 10‑core GPU. Work with more streams of 4K and 8K ProRes video with the high-performance media engine. And do it all at once with up to 24GB of faster unified memory.</p>', '1499.99', 150, 'macbook-pro-m2-2022-gray.png', '2022-08-21 07:52:16', NULL),
(22, 'LN4384952', 'Macbook Pro 16Inch Gray', 'C03', '<p>The most powerful MacBook Pro ever is here. With the blazing-fast M1 Pro or M1 Max chip &mdash; the first Apple silicon designed for pros &mdash; you get groundbreaking performance and amazing battery life. Add to that a stunning Liquid Retina XDR display, the best camera and audio ever in a Mac notebook, and all the ports you need. The first notebook of its kind, this MacBook Pro is a beast.M1 Pro and M1 Max scale the amazing M1 architecture to new heights &mdash; and for the first time, they bring a system on a chip (SoC) architecture to a pro notebook. Both have more CPU cores, more GPU cores, and more unified memory than M1. Along with a powerful Neural Engine for supercharged machine learning and upgraded media engines with ProRes support, M1 Pro and M1 Max allow pros to do things they never could before.</p>', '1599.99', 150, 'macbook-pro-14-m1-max-2021-xam.png', '2022-08-21 07:59:53', NULL),
(24, 'LN20023494', 'Samsung Book Pro', 'C02', '<p>L&agrave; thế hệ Galaxy Book tiếp theo được ra mắt trong năm nay, <strong>Samsung Galaxy Book&nbsp;</strong>&nbsp;được trang bị những g&igrave; tốt nhất hiện c&oacute; tr&ecirc;n thị trường&nbsp;<a title=\"Laptop ch&iacute;nh h&atilde;ng\" href=\"https://cellphones.com.vn/laptop.html\" target=\"_blank\" rel=\"noopener\"><strong>laptop</strong></a> nhằm mang tới hiệu năng vượt trội để đ&aacute;p ứng nhu cầu sử dụng ng&agrave;y c&agrave;ng cao của người d&ugrave;ng? C&ugrave;ng myPCđ&aacute;nh gi&aacute; chi tiết mẫu Galaxy Book&nbsp; trong b&agrave;i viết dưới đ&acirc;y.Đi theo phong c&aacute;ch thiết kế đ&atilde; trở th&agrave;nh thương hiệu của Samsung trong suốt nhiều năm nay, Samsung Galaxy Book&nbsp; sở hữu một vẻ ngo&agrave;i hiện đại, tinh tế v&agrave; v&ocirc; c&ugrave;ng thanh lịch. Điều n&agrave;y c&oacute; được l&agrave; nhờ v&agrave;o phần vỏ ngo&agrave;i hợp kim nh&ocirc;m mịn kết hợp c&ugrave;ng c&aacute;c m&agrave;u sắc trang nh&atilde; v&agrave; nắp lưng phẳng.</p>', '689.99', 100, 'samsung-book-pro-06.jpg', '2022-08-21 08:05:41', '2023-04-27 07:25:03'),
(25, 'LN20349543', 'Huawei matebook d14', 'C02', '<p>&nbsp;</p>\n<h2><strong>Huawei matebook 2023  - Tinh tế, hiện đại v&agrave; mạnh mẽ</strong></h2>\n<p>L&agrave; thế hệ Huawei Book tiếp theo được ra mắt trong năm nay,&nbsp;<strong> Huawei Book Pro 5</strong>&nbsp;được trang bị những g&igrave; tốt nhất hiện c&oacute; tr&ecirc;n thị trường&nbsp;<a title=\"Laptop ch&iacute;nh h&atilde;ng\" href=\"https://cellphones.com.vn/laptop.html\" target=\"_blank\" rel=\"noopener\"><strong>laptop</strong></a> nhằm mang tới hiệu năng vượt trội để đ&aacute;p ứng nhu cầu sử dụng ng&agrave;y c&agrave;ng cao của người d&ugrave;ng? C&ugrave;ng myPC đ&aacute;nh gi&aacute; chi tiết mẫu Huawei Book Pro 5 trong b&agrave;i viết dưới đ&acirc;y.</p>\n<h3><strong>Thiết kế tinh tế, gọn nhẹ v&agrave; bắt mắt</strong></h3>\n<p>Đi theo phong c&aacute;ch thiết kế đ&atilde; trở th&agrave;nh thương hiệu của  trong suốt nhiều năm nay,  Huawei Book Pro 5 sở hữu một vẻ ngo&agrave;i hiện đại, tinh tế v&agrave; v&ocirc; c&ugrave;ng thanh lịch. Điều n&agrave;y c&oacute; được l&agrave; nhờ v&agrave;o phần vỏ ngo&agrave;i hợp kim nh&ocirc;m mịn kết hợp c&ugrave;ng c&aacute;c m&agrave;u sắc trang nh&atilde; v&agrave; nắp lưng phẳng.</p>', '1899.88', 99, 'samsung-galaxy-book2-pro-360-silver.png', '2022-08-21 08:07:02', '2023-04-27 07:23:15'),
(31, 'LN438495076', 'acer Nitro 5', 'C01', '<p>Laptop Acer Nitro với t&iacute;nh bền bỉ vượt bậc khi được trang bị lớp vỏ nhựa chắc chắn c&ugrave;ng khối lượng kh&ocirc;ng qu&aacute; nặng cho một chiếc laptop gaming 2.2 kg v&agrave; d&agrave;y 23.9 mm, sẵn s&agrave;ng c&ugrave;ng bạn đi đến bất kỳ đ&acirc;u, phục vụ tốt cho cả nhu cầu c&ocirc;ng việc hay giải tr&iacute;, cho ph&eacute;p bạn chiến game ở khắp mọi nơi trong cuộc h&agrave;nh tr&igrave;nh. B&agrave;n ph&iacute;m Fullsize được thiết kế đ&egrave;n nền chuyển m&agrave;u RGB của laptop Acer được thiết kế tinh tế nhưng vẫn t&ocirc;n l&ecirc;n n&eacute;t mạnh mẽ của một chiếc gaming mạnh mẽ, với c&aacute;c ph&iacute;m c&oacute; độ nảy tốt, cho bạn thoải m&aacute;i sử dụng cả trong điều kiện &aacute;nh s&aacute;ng k&eacute;m m&agrave; kh&ocirc;ng lo nhầm lẫn.</p>', '1199.00', 195, 'laptop.png', '2022-08-21 17:02:29', '2022-12-13 11:16:19'),
(36, 'LAPTOP', 'ACER', 'C01', '<p>ACER PREDATOR</p>', '230.00', 8, 'laptop3.png', '2023-04-22 10:42:10', '2023-04-22 12:33:23'),
(38, 'ACER', 'ACER Aspire 7', 'C01', '<p>da dada</p>', '100.00', 10, 'apple-macbook-air-m2-2022-xanh.png', '2023-04-22 13:52:49', '2023-04-23 12:52:23'),
(41, 'SSBP01', 'Samsung Galaxy Book Pro 360', 'C02', '<p>L&agrave; thế hệ Galaxy Book tiếp theo được ra mắt trong năm nay, <strong>Samsung Galaxy Book Pro 1</strong>&nbsp;được trang bị những g&igrave; tốt nhất hiện c&oacute; tr&ecirc;n thị trường&nbsp;<a title=\"Laptop ch&iacute;nh h&atilde;ng\" href=\"https://cellphones.com.vn/laptop.html\" target=\"_blank\" rel=\"noopener\"><strong>laptop</strong></a> nhằm mang tới hiệu năng vượt trội để đ&aacute;p ứng nhu cầu sử dụng ng&agrave;y c&agrave;ng cao của người d&ugrave;ng? C&ugrave;ng myPC đ&aacute;nh gi&aacute; chi tiết mẫu Galaxy Book Pro 1 trong b&agrave;i viết dưới đ&acirc;y.Đi theo phong c&aacute;ch thiết kế đ&atilde; trở th&agrave;nh thương hiệu của Samsung trong suốt nhiều năm nay, Samsung Galaxy Book Pro 1 sở hữu một vẻ ngo&agrave;i hiện đại, tinh tế v&agrave; v&ocirc; c&ugrave;ng thanh lịch. Điều n&agrave;y c&oacute; được l&agrave; nhờ v&agrave;o phần vỏ ngo&agrave;i hợp kim nh&ocirc;m mịn kết hợp c&ugrave;ng c&aacute;c m&agrave;u sắc trang nh&atilde; v&agrave; nắp lưng phẳng.</p>\r\n<p>&nbsp;</p>', '150.00', 10, 'samsung-galaxy-book2-pro-360-silver.png', '2023-04-23 12:49:46', '2023-04-27 07:25:18'),
(45, 'SSBP07', 'Samsung Book Pro 07', 'C02', '<p>Samsung Book Pro 07&nbsp;</p>', '156.00', 10, 'laptop1.jpg', '2023-04-27 07:27:19', NULL),
(46, 'SSBP10', 'aaaa', 'C01', '<p>aaa</p>', '10000.00', 10, 'macbook-pro-14-inch-m1-pro-2021-bac.png', '2023-04-27 08:43:45', '2023-04-27 08:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `username`, `fullname`, `birthday`, `hobby`, `password`, `address`, `phone`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(19, 'duongkhaicuong@gmail.com', 'Dương Khai Cường', '19-09-1998', NULL, '$2y$10$QOOs06F8xf94yqVuCvyfd.SrdQQsmeI5qnzAOjkHwYGPA3kvtJpxe', 'DEF', '0946643252', NULL, NULL, '1', NULL, NULL),
(20, 'dkc@gmail.com', 'Khai Cường', '12-07-2000', NULL, '$2y$10$k3C7WyqapDpQisV5V3tmuOPoO6n/D1gi.3cxhpqc8RITTCUaaSNBm', '123', '0946643252', NULL, NULL, '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id_UNIQUE` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_customerID` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FK_orderID` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id_reset`),
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_categoryID` (`category_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id_reset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_customerID` FOREIGN KEY (`customer_id`) REFERENCES `user_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_orderID` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_categoryID` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
