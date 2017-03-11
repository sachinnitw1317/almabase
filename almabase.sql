-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2017 at 03:16 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add games', 7, 'add_games'),
(20, 'Can change games', 7, 'change_games'),
(21, 'Can delete games', 7, 'delete_games');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$ipKDmrG3JNNx$qHGdmelxZvlDZFCNseeklz0MvwNGgX9MmzUyRN7y9Jk=', '2017-02-06 02:13:21.214208', 1, 'root', '', '', 'root@gmail.com', 1, 1, '2017-02-05 20:27:16.263891'),
(10, 'pbkdf2_sha256$30000$HNUmCieRVP6Z$S792d4lpBk2OsEkB3CPu9iTT1FLyA/u9BQ0XgQnYge8=', '2017-02-05 22:10:39.604896', 0, 'test', 'test', '', '', 0, 1, '2017-02-05 22:10:31.063281'),
(12, 'pbkdf2_sha256$30000$3kTIOg2yKP2M$9TjErE2xudE77SMFaaIszX+z5wb7BL80qUtlBp0AZTk=', '2017-02-06 02:14:38.655649', 0, 'sachin', 'sachin', '', '', 0, 1, '2017-02-05 23:35:12.254172');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-02-05 21:18:29.573828', '2', 'priyam', 3, '', 3, 1),
(2, '2017-02-05 21:18:29.618021', '3', 'sachin', 3, '', 3, 1),
(3, '2017-02-05 21:26:33.809773', '7', 'test', 3, '', 3, 1),
(4, '2017-02-05 21:26:33.964885', '8', 'test2', 3, '', 3, 1),
(5, '2017-02-05 21:26:34.023195', '9', 'test3', 3, '', 3, 1),
(6, '2017-02-05 23:34:59.877749', '6', 'sachin', 3, '', 3, 1),
(7, '2017-02-06 02:13:30.240614', '4', 'priyam', 3, '', 3, 1),
(8, '2017-02-06 02:13:34.777111', '13', 'male', 3, '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'login', 'games'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-02-05 20:26:16.613073'),
(2, 'auth', '0001_initial', '2017-02-05 20:26:26.456829'),
(3, 'admin', '0001_initial', '2017-02-05 20:26:28.630235'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-02-05 20:26:28.681292'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-02-05 20:26:29.883882'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-02-05 20:26:30.761088'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-02-05 20:26:31.806905'),
(8, 'auth', '0004_alter_user_username_opts', '2017-02-05 20:26:31.856167'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-02-05 20:26:32.775780'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-02-05 20:26:32.834367'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-02-05 20:26:32.891709'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-02-05 20:26:33.811503'),
(13, 'sessions', '0001_initial', '2017-02-05 20:26:34.439402'),
(14, 'login', '0001_initial', '2017-02-05 20:42:17.572376');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bv00zawm08iiv2i9df35n761fcvprfd7', 'N2ZhYmQ0NjFmMjJjMTNjYWYxMDZkNTUzNGMzMTQzZGU5ZTg5NjZmODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU4OWM5Njg1M2EzMDZiZTBmMjljMmVhZGJlNWRhODUxZTYxYTdmMzUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-19 22:24:37.359494'),
('nmhiqu076e8hc1uo7ila48erqlysydo7', 'OWM0NDA3MmY5YWEwMTFjZTJkMGI2ZTU3YzU4ZWI2OTY1N2ZhMjRkMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI0YTQ1MzVjNmQxYjY3NTQ1MjRjMGQ1YzNlYjg3OTMzNmRhN2EyZmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9', '2017-02-20 02:14:38.698277');

-- --------------------------------------------------------

--
-- Table structure for table `login_games`
--

CREATE TABLE `login_games` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `platform` varchar(100) NOT NULL,
  `score` double NOT NULL,
  `genre` varchar(100) NOT NULL,
  `editors_choice` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_games`
--

INSERT INTO `login_games` (`id`, `title`, `platform`, `score`, `genre`, `editors_choice`) VALUES
(1, 'LittleBigPlanet PS Vita', 'PlayStation Vita', 9, 'Platformer', 'Y'),
(2, 'LittleBigPlanet PS Vita -- Marvel Super Hero Edition', 'PlayStation Vita', 9, 'Platformer', 'Y'),
(3, 'Splice: Tree of Life', 'iPad', 8.5, 'Puzzle', 'N'),
(4, 'NHL 13', 'Xbox 360', 8.5, 'Sports', 'N'),
(5, 'NHL 13', 'PlayStation 3', 8.5, 'Sports', 'N'),
(6, 'Total War Battles: Shogun', 'Macintosh', 7, 'Strategy', 'N'),
(7, 'Double Dragon: Neon', 'Xbox 360', 3, 'Fighting', 'N'),
(8, 'Guild Wars 2', 'PC', 9, 'RPG', 'Y'),
(9, 'Double Dragon: Neon', 'PlayStation 3', 3, 'Fighting', 'N'),
(10, 'Total War Battles: Shogun', 'PC', 7, 'Strategy', 'N'),
(11, 'Tekken Tag Tournament 2', 'PlayStation 3', 7.5, 'Fighting', 'N'),
(12, 'Tekken Tag Tournament 2', 'Xbox 360', 7.5, 'Fighting', 'N'),
(13, 'Wild Blood', 'iPhone', 7, '', 'N'),
(14, 'Mark of the Ninja', 'Xbox 360', 9, 'Action, Adventure', 'Y'),
(15, 'Mark of the Ninja', 'PC', 9, 'Action, Adventure', 'Y'),
(16, 'Home: A Unique Horror Adventure', 'Macintosh', 6.5, 'Adventure', 'N'),
(17, 'Home: A Unique Horror Adventure', 'PC', 6.5, 'Adventure', 'N'),
(18, 'Avengers Initiative', 'iPhone', 8, 'Action', 'N'),
(19, 'Way of the Samurai 4', 'PlayStation 3', 5.5, 'Action, Adventure', 'N'),
(20, 'JoJo\'s Bizarre Adventure HD', 'Xbox 360', 7, 'Fighting', 'N'),
(21, 'JoJo\'s Bizarre Adventure HD', 'PlayStation 3', 7, 'Fighting', 'N'),
(22, 'Mass Effect 3: Leviathan', 'Xbox 360', 7.5, 'RPG', 'N'),
(23, 'Mass Effect 3: Leviathan', 'PlayStation 3', 7.5, 'RPG', 'N'),
(24, 'Mass Effect 3: Leviathan', 'PC', 7.5, 'RPG', 'N'),
(25, 'Dark Souls (Prepare to Die Edition)', 'PC', 9, 'Action, RPG', 'Y'),
(26, 'Symphony', 'PC', 7, 'Shooter', 'N'),
(27, 'Bastion', 'iPad', 9, 'Action, RPG', 'Y'),
(28, 'Tom Clancy\'s Ghost Recon Phantoms', 'PC', 7.5, 'Shooter', 'N'),
(29, 'Thirty Flights of Loving', 'PC', 8, 'Adventure', 'N'),
(30, 'Legasista', 'PlayStation 3', 6.5, 'Action, RPG', 'N'),
(31, 'The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Macintosh', 9, 'Adventure', 'Y'),
(32, 'World of Warcraft: Mists of Pandaria', 'PC', 8.7, 'RPG', 'Y'),
(33, 'Hell Yeah! Wrath of the Dead Rabbit', 'PlayStation 3', 4.9, 'Platformer', 'N'),
(34, 'Pokemon White Version 2', 'Nintendo DS', 9.6, 'RPG', 'Y'),
(35, 'War of the Roses', 'PC', 7.3, 'Action', 'N'),
(36, 'Pokemon Black Version 2', 'Nintendo DS', 9.6, 'RPG', 'Y'),
(37, 'Drakerider', 'iPhone', 6.5, 'RPG', 'N'),
(38, 'The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Xbox 360', 9, 'Adventure', 'Y'),
(39, 'The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PC', 9, 'Adventure', 'Y'),
(40, 'The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PlayStation 3', 9, 'Adventure', 'Y'),
(41, 'Rock Band Blitz', 'Xbox 360', 8.5, 'Music', 'Y'),
(42, 'Counter-Strike: Global Offensive', 'Macintosh', 8, 'Shooter', 'N'),
(43, 'Worms Revolution', 'PlayStation 3', 8.5, 'Strategy', 'N'),
(44, 'Worms Revolution', 'PC', 8.5, 'Strategy', 'N'),
(45, 'Worms Revolution', 'Xbox 360', 8.5, 'Strategy', 'N'),
(46, 'Bad Piggies', 'iPhone', 9.2, 'Action', 'Y'),
(47, 'Resident Evil 6', 'PlayStation 3', 7.9, 'Action, Adventure', 'N'),
(48, 'Resident Evil 6', 'Xbox 360', 7.9, 'Action, Adventure', 'N'),
(49, 'Shad\'O', 'PC', 7, 'Adventure', 'N'),
(50, 'Demon\'s Score', 'iPhone', 6.9, 'Action', 'N'),
(51, 'NBA 2K13', 'Xbox 360', 9.1, 'Sports', 'Y'),
(52, 'Counter-Strike: Global Offensive', 'PC', 8, 'Shooter', 'N'),
(53, 'The World Ends with You: Solo Remix', 'iPad', 9.5, 'RPG', 'Y'),
(54, 'Counter-Strike: Global Offensive', 'PlayStation 3', 8, 'Shooter', 'N'),
(55, 'The World Ends with You: Solo Remix', 'iPhone', 9.5, 'RPG', 'Y'),
(56, 'Counter-Strike: Global Offensive', 'Xbox 360', 8, 'Shooter', 'N'),
(57, 'Madden NFL 13', 'PlayStation Vita', 6, 'Sports', 'N'),
(58, 'Madden NFL 13', 'PlayStation 3', 9, 'Sports', 'Y'),
(59, 'Madden NFL 13', 'Xbox 360', 9, 'Sports', 'Y'),
(60, 'Hoodwink', 'PC', 2.5, 'Adventure', 'N'),
(61, 'NBA 2K13', 'PlayStation 3', 9.1, 'Sports', 'Y'),
(62, 'NBA 2K13', 'PC', 9.1, 'Sports', 'Y'),
(63, 'Lili: Child of Geos', 'iPhone', 7, 'Adventure', 'N'),
(64, 'Marvel vs. Capcom Origins', 'Xbox 360', 8.2, 'Fighting', 'N'),
(65, 'Marvel vs. Capcom Origins', 'PlayStation 3', 8.2, 'Fighting', 'N'),
(66, 'Dead or Alive 5', 'PlayStation 3', 8.8, 'Fighting', 'N'),
(67, 'Dead or Alive 5', 'Xbox 360', 8.8, 'Fighting', 'N'),
(68, 'Medal of Honor Warfighter', 'PC', 4, 'Shooter', 'N'),
(69, 'Professor Layton and the Miracle Mask', 'Nintendo 3DS', 8.7, 'Adventure', 'Y'),
(70, 'Hotline Miami', 'PC', 8.8, 'Action', 'Y'),
(71, 'Edna & Harvey: Harvey\'s New Eyes', 'PC', 6, 'Adventure', 'N'),
(72, 'Medal of Honor Warfighter', 'PlayStation 3', 4, 'Shooter', 'N'),
(73, 'Medal of Honor Warfighter', 'Xbox 360', 4, 'Shooter', 'N'),
(74, 'Transformers: Fall of Cybertron', 'Xbox 360', 8.5, 'Shooter', 'N'),
(75, 'Transformers: Fall of Cybertron', 'PlayStation 3', 8.5, 'Shooter', 'N'),
(76, 'Hero Academy', 'PC', 9, 'Board', 'Y'),
(77, 'Hero Academy', 'iPhone', 9, 'Strategy', 'Y'),
(78, 'Puzzle Craft', 'iPhone', 9, 'Puzzle', 'Y'),
(79, 'Realms Of Ancient War', 'Xbox 360', 5.5, 'Action', 'N'),
(80, 'Realms Of Ancient War', 'PlayStation 3', 5.5, 'Action', 'N'),
(81, 'Anomaly: Warzone Earth', 'PlayStation 3', 8.2, 'Action', 'N'),
(82, 'Darksiders II', 'PC', 7.5, 'Action', 'N'),
(83, 'Left 4 Dead 2: Cold Stream', 'Macintosh', 7, 'Shooter', 'N'),
(84, 'Left 4 Dead 2: Cold Stream', 'PC', 7, 'Shooter', 'N'),
(85, 'Puzzle Craft', 'Android', 9, 'Puzzle', 'Y'),
(86, 'Left 4 Dead 2: Cold Stream', 'Xbox 360', 7, 'Shooter', 'N'),
(87, 'Horn', 'iPhone', 9, 'Action, Adventure', 'Y'),
(88, 'Forza Horizon', 'Xbox 360', 9, 'Racing', 'Y'),
(89, 'FIFA Soccer 13', 'PlayStation Vita', 4, 'Sports', 'N'),
(90, 'Mugen Souls', 'PlayStation 3', 3.9, 'Strategy, RPG', 'N'),
(91, 'Crazy Taxi', 'iPhone', 7.1, 'Racing, Action', 'N'),
(92, 'New Little King\'s Story', 'PlayStation Vita', 5.8, 'RPG', 'N'),
(93, 'Fable: The Journey', 'Xbox 360', 7.2, 'Action, RPG', 'N'),
(94, 'The Lord of the Rings Online: Riders of Rohan', 'PC', 8.3, 'RPG', 'N'),
(95, 'Doom 3: BFG Edition', 'Xbox 360', 7.6, 'RPG', 'N'),
(96, 'Rugby League Live 2', 'Xbox 360', 6, 'Sports', 'N'),
(97, 'Rugby League Live 2', 'PlayStation 3', 6, 'Sports', 'N'),
(98, 'Doom 3: BFG Edition', 'PlayStation 3', 7.6, 'RPG', 'N'),
(99, 'Punch Quest', 'iPhone', 9.3, 'Action', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 8`
--

CREATE TABLE `TABLE 8` (
  `title` varchar(56) DEFAULT NULL,
  `platform` varchar(16) DEFAULT NULL,
  `score` decimal(2,1) DEFAULT NULL,
  `genre` varchar(17) DEFAULT NULL,
  `editors_choice` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 8`
--

INSERT INTO `TABLE 8` (`title`, `platform`, `score`, `genre`, `editors_choice`) VALUES
('LittleBigPlanet PS Vita', 'PlayStation Vita', '9.0', 'Platformer', 'Y'),
('LittleBigPlanet PS Vita -- Marvel Super Hero Edition', 'PlayStation Vita', '9.0', 'Platformer', 'Y'),
('Splice: Tree of Life', 'iPad', '8.5', 'Puzzle', 'N'),
('NHL 13', 'Xbox 360', '8.5', 'Sports', 'N'),
('NHL 13', 'PlayStation 3', '8.5', 'Sports', 'N'),
('Total War Battles: Shogun', 'Macintosh', '7.0', 'Strategy', 'N'),
('Double Dragon: Neon', 'Xbox 360', '3.0', 'Fighting', 'N'),
('Guild Wars 2', 'PC', '9.0', 'RPG', 'Y'),
('Double Dragon: Neon', 'PlayStation 3', '3.0', 'Fighting', 'N'),
('Total War Battles: Shogun', 'PC', '7.0', 'Strategy', 'N'),
('Tekken Tag Tournament 2', 'PlayStation 3', '7.5', 'Fighting', 'N'),
('Tekken Tag Tournament 2', 'Xbox 360', '7.5', 'Fighting', 'N'),
('Wild Blood', 'iPhone', '7.0', '', 'N'),
('Mark of the Ninja', 'Xbox 360', '9.0', 'Action, Adventure', 'Y'),
('Mark of the Ninja', 'PC', '9.0', 'Action, Adventure', 'Y'),
('Home: A Unique Horror Adventure', 'Macintosh', '6.5', 'Adventure', 'N'),
('Home: A Unique Horror Adventure', 'PC', '6.5', 'Adventure', 'N'),
('Avengers Initiative', 'iPhone', '8.0', 'Action', 'N'),
('Way of the Samurai 4', 'PlayStation 3', '5.5', 'Action, Adventure', 'N'),
('JoJo\'s Bizarre Adventure HD', 'Xbox 360', '7.0', 'Fighting', 'N'),
('JoJo\'s Bizarre Adventure HD', 'PlayStation 3', '7.0', 'Fighting', 'N'),
('Mass Effect 3: Leviathan', 'Xbox 360', '7.5', 'RPG', 'N'),
('Mass Effect 3: Leviathan', 'PlayStation 3', '7.5', 'RPG', 'N'),
('Mass Effect 3: Leviathan', 'PC', '7.5', 'RPG', 'N'),
('Dark Souls (Prepare to Die Edition)', 'PC', '9.0', 'Action, RPG', 'Y'),
('Symphony', 'PC', '7.0', 'Shooter', 'N'),
('Bastion', 'iPad', '9.0', 'Action, RPG', 'Y'),
('Tom Clancy\'s Ghost Recon Phantoms', 'PC', '7.5', 'Shooter', 'N'),
('Thirty Flights of Loving', 'PC', '8.0', 'Adventure', 'N'),
('Legasista', 'PlayStation 3', '6.5', 'Action, RPG', 'N'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Macintosh', '9.0', 'Adventure', 'Y'),
('World of Warcraft: Mists of Pandaria', 'PC', '8.7', 'RPG', 'Y'),
('Hell Yeah! Wrath of the Dead Rabbit', 'PlayStation 3', '4.9', 'Platformer', 'N'),
('Pokemon White Version 2', 'Nintendo DS', '9.6', 'RPG', 'Y'),
('War of the Roses', 'PC', '7.3', 'Action', 'N'),
('Pokemon Black Version 2', 'Nintendo DS', '9.6', 'RPG', 'Y'),
('Drakerider', 'iPhone', '6.5', 'RPG', 'N'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Xbox 360', '9.0', 'Adventure', 'Y'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PC', '9.0', 'Adventure', 'Y'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PlayStation 3', '9.0', 'Adventure', 'Y'),
('Rock Band Blitz', 'Xbox 360', '8.5', 'Music', 'Y'),
('Counter-Strike: Global Offensive', 'Macintosh', '8.0', 'Shooter', 'N'),
('Worms Revolution', 'PlayStation 3', '8.5', 'Strategy', 'N'),
('Worms Revolution', 'PC', '8.5', 'Strategy', 'N'),
('Worms Revolution', 'Xbox 360', '8.5', 'Strategy', 'N'),
('Bad Piggies', 'iPhone', '9.2', 'Action', 'Y'),
('Resident Evil 6', 'PlayStation 3', '7.9', 'Action, Adventure', 'N'),
('Resident Evil 6', 'Xbox 360', '7.9', 'Action, Adventure', 'N'),
('Shad\'O', 'PC', '7.0', 'Adventure', 'N'),
('Demon\'s Score', 'iPhone', '6.9', 'Action', 'N'),
('NBA 2K13', 'Xbox 360', '9.1', 'Sports', 'Y'),
('Counter-Strike: Global Offensive', 'PC', '8.0', 'Shooter', 'N'),
('The World Ends with You: Solo Remix', 'iPad', '9.5', 'RPG', 'Y'),
('Counter-Strike: Global Offensive', 'PlayStation 3', '8.0', 'Shooter', 'N'),
('The World Ends with You: Solo Remix', 'iPhone', '9.5', 'RPG', 'Y'),
('Counter-Strike: Global Offensive', 'Xbox 360', '8.0', 'Shooter', 'N'),
('Madden NFL 13', 'PlayStation Vita', '6.0', 'Sports', 'N'),
('Madden NFL 13', 'PlayStation 3', '9.0', 'Sports', 'Y'),
('Madden NFL 13', 'Xbox 360', '9.0', 'Sports', 'Y'),
('Hoodwink', 'PC', '2.5', 'Adventure', 'N'),
('NBA 2K13', 'PlayStation 3', '9.1', 'Sports', 'Y'),
('NBA 2K13', 'PC', '9.1', 'Sports', 'Y'),
('Lili: Child of Geos', 'iPhone', '7.0', 'Adventure', 'N'),
('Marvel vs. Capcom Origins', 'Xbox 360', '8.2', 'Fighting', 'N'),
('Marvel vs. Capcom Origins', 'PlayStation 3', '8.2', 'Fighting', 'N'),
('Dead or Alive 5', 'PlayStation 3', '8.8', 'Fighting', 'N'),
('Dead or Alive 5', 'Xbox 360', '8.8', 'Fighting', 'N'),
('Medal of Honor Warfighter', 'PC', '4.0', 'Shooter', 'N'),
('Professor Layton and the Miracle Mask', 'Nintendo 3DS', '8.7', 'Adventure', 'Y'),
('Hotline Miami', 'PC', '8.8', 'Action', 'Y'),
('Edna & Harvey: Harvey\'s New Eyes', 'PC', '6.0', 'Adventure', 'N'),
('Medal of Honor Warfighter', 'PlayStation 3', '4.0', 'Shooter', 'N'),
('Medal of Honor Warfighter', 'Xbox 360', '4.0', 'Shooter', 'N'),
('Transformers: Fall of Cybertron', 'Xbox 360', '8.5', 'Shooter', 'N'),
('Transformers: Fall of Cybertron', 'PlayStation 3', '8.5', 'Shooter', 'N'),
('Hero Academy', 'PC', '9.0', 'Board', 'Y'),
('Hero Academy', 'iPhone', '9.0', 'Strategy', 'Y'),
('Puzzle Craft', 'iPhone', '9.0', 'Puzzle', 'Y'),
('Realms Of Ancient War', 'Xbox 360', '5.5', 'Action', 'N'),
('Realms Of Ancient War', 'PlayStation 3', '5.5', 'Action', 'N'),
('Anomaly: Warzone Earth', 'PlayStation 3', '8.2', 'Action', 'N'),
('Darksiders II', 'PC', '7.5', 'Action', 'N'),
('Left 4 Dead 2: Cold Stream', 'Macintosh', '7.0', 'Shooter', 'N'),
('Left 4 Dead 2: Cold Stream', 'PC', '7.0', 'Shooter', 'N'),
('Puzzle Craft', 'Android', '9.0', 'Puzzle', 'Y'),
('Left 4 Dead 2: Cold Stream', 'Xbox 360', '7.0', 'Shooter', 'N'),
('Horn', 'iPhone', '9.0', 'Action, Adventure', 'Y'),
('Forza Horizon', 'Xbox 360', '9.0', 'Racing', 'Y'),
('FIFA Soccer 13', 'PlayStation Vita', '4.0', 'Sports', 'N'),
('Mugen Souls', 'PlayStation 3', '3.9', 'Strategy, RPG', 'N'),
('Crazy Taxi', 'iPhone', '7.1', 'Racing, Action', 'N'),
('New Little King\'s Story', 'PlayStation Vita', '5.8', 'RPG', 'N'),
('Fable: The Journey', 'Xbox 360', '7.2', 'Action, RPG', 'N'),
('The Lord of the Rings Online: Riders of Rohan', 'PC', '8.3', 'RPG', 'N'),
('Doom 3: BFG Edition', 'Xbox 360', '7.6', 'RPG', 'N'),
('Rugby League Live 2', 'Xbox 360', '6.0', 'Sports', 'N'),
('Rugby League Live 2', 'PlayStation 3', '6.0', 'Sports', 'N'),
('Doom 3: BFG Edition', 'PlayStation 3', '7.6', 'RPG', 'N'),
('Punch Quest', 'iPhone', '9.3', 'Action', 'Y'),
('LittleBigPlanet PS Vita', 'PlayStation Vita', '9.0', 'Platformer', 'Y'),
('LittleBigPlanet PS Vita -- Marvel Super Hero Edition', 'PlayStation Vita', '9.0', 'Platformer', 'Y'),
('Splice: Tree of Life', 'iPad', '8.5', 'Puzzle', 'N'),
('NHL 13', 'Xbox 360', '8.5', 'Sports', 'N'),
('NHL 13', 'PlayStation 3', '8.5', 'Sports', 'N'),
('Total War Battles: Shogun', 'Macintosh', '7.0', 'Strategy', 'N'),
('Double Dragon: Neon', 'Xbox 360', '3.0', 'Fighting', 'N'),
('Guild Wars 2', 'PC', '9.0', 'RPG', 'Y'),
('Double Dragon: Neon', 'PlayStation 3', '3.0', 'Fighting', 'N'),
('Total War Battles: Shogun', 'PC', '7.0', 'Strategy', 'N'),
('Tekken Tag Tournament 2', 'PlayStation 3', '7.5', 'Fighting', 'N'),
('Tekken Tag Tournament 2', 'Xbox 360', '7.5', 'Fighting', 'N'),
('Wild Blood', 'iPhone', '7.0', '', 'N'),
('Mark of the Ninja', 'Xbox 360', '9.0', 'Action, Adventure', 'Y'),
('Mark of the Ninja', 'PC', '9.0', 'Action, Adventure', 'Y'),
('Home: A Unique Horror Adventure', 'Macintosh', '6.5', 'Adventure', 'N'),
('Home: A Unique Horror Adventure', 'PC', '6.5', 'Adventure', 'N'),
('Avengers Initiative', 'iPhone', '8.0', 'Action', 'N'),
('Way of the Samurai 4', 'PlayStation 3', '5.5', 'Action, Adventure', 'N'),
('JoJo\'s Bizarre Adventure HD', 'Xbox 360', '7.0', 'Fighting', 'N'),
('JoJo\'s Bizarre Adventure HD', 'PlayStation 3', '7.0', 'Fighting', 'N'),
('Mass Effect 3: Leviathan', 'Xbox 360', '7.5', 'RPG', 'N'),
('Mass Effect 3: Leviathan', 'PlayStation 3', '7.5', 'RPG', 'N'),
('Mass Effect 3: Leviathan', 'PC', '7.5', 'RPG', 'N'),
('Dark Souls (Prepare to Die Edition)', 'PC', '9.0', 'Action, RPG', 'Y'),
('Symphony', 'PC', '7.0', 'Shooter', 'N'),
('Bastion', 'iPad', '9.0', 'Action, RPG', 'Y'),
('Tom Clancy\'s Ghost Recon Phantoms', 'PC', '7.5', 'Shooter', 'N'),
('Thirty Flights of Loving', 'PC', '8.0', 'Adventure', 'N'),
('Legasista', 'PlayStation 3', '6.5', 'Action, RPG', 'N'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Macintosh', '9.0', 'Adventure', 'Y'),
('World of Warcraft: Mists of Pandaria', 'PC', '8.7', 'RPG', 'Y'),
('Hell Yeah! Wrath of the Dead Rabbit', 'PlayStation 3', '4.9', 'Platformer', 'N'),
('Pokemon White Version 2', 'Nintendo DS', '9.6', 'RPG', 'Y'),
('War of the Roses', 'PC', '7.3', 'Action', 'N'),
('Pokemon Black Version 2', 'Nintendo DS', '9.6', 'RPG', 'Y'),
('Drakerider', 'iPhone', '6.5', 'RPG', 'N'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Xbox 360', '9.0', 'Adventure', 'Y'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PC', '9.0', 'Adventure', 'Y'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PlayStation 3', '9.0', 'Adventure', 'Y'),
('Rock Band Blitz', 'Xbox 360', '8.5', 'Music', 'Y'),
('Counter-Strike: Global Offensive', 'Macintosh', '8.0', 'Shooter', 'N'),
('Worms Revolution', 'PlayStation 3', '8.5', 'Strategy', 'N'),
('Worms Revolution', 'PC', '8.5', 'Strategy', 'N'),
('Worms Revolution', 'Xbox 360', '8.5', 'Strategy', 'N'),
('Bad Piggies', 'iPhone', '9.2', 'Action', 'Y'),
('Resident Evil 6', 'PlayStation 3', '7.9', 'Action, Adventure', 'N'),
('Resident Evil 6', 'Xbox 360', '7.9', 'Action, Adventure', 'N'),
('Shad\'O', 'PC', '7.0', 'Adventure', 'N'),
('Demon\'s Score', 'iPhone', '6.9', 'Action', 'N'),
('NBA 2K13', 'Xbox 360', '9.1', 'Sports', 'Y'),
('Counter-Strike: Global Offensive', 'PC', '8.0', 'Shooter', 'N'),
('The World Ends with You: Solo Remix', 'iPad', '9.5', 'RPG', 'Y'),
('Counter-Strike: Global Offensive', 'PlayStation 3', '8.0', 'Shooter', 'N'),
('The World Ends with You: Solo Remix', 'iPhone', '9.5', 'RPG', 'Y'),
('Counter-Strike: Global Offensive', 'Xbox 360', '8.0', 'Shooter', 'N'),
('Madden NFL 13', 'PlayStation Vita', '6.0', 'Sports', 'N'),
('Madden NFL 13', 'PlayStation 3', '9.0', 'Sports', 'Y'),
('Madden NFL 13', 'Xbox 360', '9.0', 'Sports', 'Y'),
('Hoodwink', 'PC', '2.5', 'Adventure', 'N'),
('NBA 2K13', 'PlayStation 3', '9.1', 'Sports', 'Y'),
('NBA 2K13', 'PC', '9.1', 'Sports', 'Y'),
('Lili: Child of Geos', 'iPhone', '7.0', 'Adventure', 'N'),
('Marvel vs. Capcom Origins', 'Xbox 360', '8.2', 'Fighting', 'N'),
('Marvel vs. Capcom Origins', 'PlayStation 3', '8.2', 'Fighting', 'N'),
('Dead or Alive 5', 'PlayStation 3', '8.8', 'Fighting', 'N'),
('Dead or Alive 5', 'Xbox 360', '8.8', 'Fighting', 'N'),
('Medal of Honor Warfighter', 'PC', '4.0', 'Shooter', 'N'),
('Professor Layton and the Miracle Mask', 'Nintendo 3DS', '8.7', 'Adventure', 'Y'),
('Hotline Miami', 'PC', '8.8', 'Action', 'Y'),
('Edna & Harvey: Harvey\'s New Eyes', 'PC', '6.0', 'Adventure', 'N'),
('Medal of Honor Warfighter', 'PlayStation 3', '4.0', 'Shooter', 'N'),
('Medal of Honor Warfighter', 'Xbox 360', '4.0', 'Shooter', 'N'),
('Transformers: Fall of Cybertron', 'Xbox 360', '8.5', 'Shooter', 'N'),
('Transformers: Fall of Cybertron', 'PlayStation 3', '8.5', 'Shooter', 'N'),
('Hero Academy', 'PC', '9.0', 'Board', 'Y'),
('Hero Academy', 'iPhone', '9.0', 'Strategy', 'Y'),
('Puzzle Craft', 'iPhone', '9.0', 'Puzzle', 'Y'),
('Realms Of Ancient War', 'Xbox 360', '5.5', 'Action', 'N'),
('Realms Of Ancient War', 'PlayStation 3', '5.5', 'Action', 'N'),
('Anomaly: Warzone Earth', 'PlayStation 3', '8.2', 'Action', 'N'),
('Darksiders II', 'PC', '7.5', 'Action', 'N'),
('Left 4 Dead 2: Cold Stream', 'Macintosh', '7.0', 'Shooter', 'N'),
('Left 4 Dead 2: Cold Stream', 'PC', '7.0', 'Shooter', 'N'),
('Puzzle Craft', 'Android', '9.0', 'Puzzle', 'Y'),
('Left 4 Dead 2: Cold Stream', 'Xbox 360', '7.0', 'Shooter', 'N'),
('Horn', 'iPhone', '9.0', 'Action, Adventure', 'Y'),
('Forza Horizon', 'Xbox 360', '9.0', 'Racing', 'Y'),
('FIFA Soccer 13', 'PlayStation Vita', '4.0', 'Sports', 'N'),
('Mugen Souls', 'PlayStation 3', '3.9', 'Strategy, RPG', 'N'),
('Crazy Taxi', 'iPhone', '7.1', 'Racing, Action', 'N'),
('New Little King\'s Story', 'PlayStation Vita', '5.8', 'RPG', 'N'),
('Fable: The Journey', 'Xbox 360', '7.2', 'Action, RPG', 'N'),
('The Lord of the Rings Online: Riders of Rohan', 'PC', '8.3', 'RPG', 'N'),
('Doom 3: BFG Edition', 'Xbox 360', '7.6', 'RPG', 'N'),
('Rugby League Live 2', 'Xbox 360', '6.0', 'Sports', 'N'),
('Rugby League Live 2', 'PlayStation 3', '6.0', 'Sports', 'N'),
('Doom 3: BFG Edition', 'PlayStation 3', '7.6', 'RPG', 'N'),
('Punch Quest', 'iPhone', '9.3', 'Action', 'Y'),
('LittleBigPlanet PS Vita', 'PlayStation Vita', '9.0', 'Platformer', 'Y'),
('LittleBigPlanet PS Vita -- Marvel Super Hero Edition', 'PlayStation Vita', '9.0', 'Platformer', 'Y'),
('Splice: Tree of Life', 'iPad', '8.5', 'Puzzle', 'N'),
('NHL 13', 'Xbox 360', '8.5', 'Sports', 'N'),
('NHL 13', 'PlayStation 3', '8.5', 'Sports', 'N'),
('Total War Battles: Shogun', 'Macintosh', '7.0', 'Strategy', 'N'),
('Double Dragon: Neon', 'Xbox 360', '3.0', 'Fighting', 'N'),
('Guild Wars 2', 'PC', '9.0', 'RPG', 'Y'),
('Double Dragon: Neon', 'PlayStation 3', '3.0', 'Fighting', 'N'),
('Total War Battles: Shogun', 'PC', '7.0', 'Strategy', 'N'),
('Tekken Tag Tournament 2', 'PlayStation 3', '7.5', 'Fighting', 'N'),
('Tekken Tag Tournament 2', 'Xbox 360', '7.5', 'Fighting', 'N'),
('Wild Blood', 'iPhone', '7.0', '', 'N'),
('Mark of the Ninja', 'Xbox 360', '9.0', 'Action, Adventure', 'Y'),
('Mark of the Ninja', 'PC', '9.0', 'Action, Adventure', 'Y'),
('Home: A Unique Horror Adventure', 'Macintosh', '6.5', 'Adventure', 'N'),
('Home: A Unique Horror Adventure', 'PC', '6.5', 'Adventure', 'N'),
('Avengers Initiative', 'iPhone', '8.0', 'Action', 'N'),
('Way of the Samurai 4', 'PlayStation 3', '5.5', 'Action, Adventure', 'N'),
('JoJo\'s Bizarre Adventure HD', 'Xbox 360', '7.0', 'Fighting', 'N'),
('JoJo\'s Bizarre Adventure HD', 'PlayStation 3', '7.0', 'Fighting', 'N'),
('Mass Effect 3: Leviathan', 'Xbox 360', '7.5', 'RPG', 'N'),
('Mass Effect 3: Leviathan', 'PlayStation 3', '7.5', 'RPG', 'N'),
('Mass Effect 3: Leviathan', 'PC', '7.5', 'RPG', 'N'),
('Dark Souls (Prepare to Die Edition)', 'PC', '9.0', 'Action, RPG', 'Y'),
('Symphony', 'PC', '7.0', 'Shooter', 'N'),
('Bastion', 'iPad', '9.0', 'Action, RPG', 'Y'),
('Tom Clancy\'s Ghost Recon Phantoms', 'PC', '7.5', 'Shooter', 'N'),
('Thirty Flights of Loving', 'PC', '8.0', 'Adventure', 'N'),
('Legasista', 'PlayStation 3', '6.5', 'Action, RPG', 'N'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Macintosh', '9.0', 'Adventure', 'Y'),
('World of Warcraft: Mists of Pandaria', 'PC', '8.7', 'RPG', 'Y'),
('Hell Yeah! Wrath of the Dead Rabbit', 'PlayStation 3', '4.9', 'Platformer', 'N'),
('Pokemon White Version 2', 'Nintendo DS', '9.6', 'RPG', 'Y'),
('War of the Roses', 'PC', '7.3', 'Action', 'N'),
('Pokemon Black Version 2', 'Nintendo DS', '9.6', 'RPG', 'Y'),
('Drakerider', 'iPhone', '6.5', 'RPG', 'N'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Xbox 360', '9.0', 'Adventure', 'Y'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PC', '9.0', 'Adventure', 'Y'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PlayStation 3', '9.0', 'Adventure', 'Y'),
('Rock Band Blitz', 'Xbox 360', '8.5', 'Music', 'Y'),
('Counter-Strike: Global Offensive', 'Macintosh', '8.0', 'Shooter', 'N'),
('Worms Revolution', 'PlayStation 3', '8.5', 'Strategy', 'N'),
('Worms Revolution', 'PC', '8.5', 'Strategy', 'N'),
('Worms Revolution', 'Xbox 360', '8.5', 'Strategy', 'N'),
('Bad Piggies', 'iPhone', '9.2', 'Action', 'Y'),
('Resident Evil 6', 'PlayStation 3', '7.9', 'Action, Adventure', 'N'),
('Resident Evil 6', 'Xbox 360', '7.9', 'Action, Adventure', 'N'),
('Shad\'O', 'PC', '7.0', 'Adventure', 'N'),
('Demon\'s Score', 'iPhone', '6.9', 'Action', 'N'),
('NBA 2K13', 'Xbox 360', '9.1', 'Sports', 'Y'),
('Counter-Strike: Global Offensive', 'PC', '8.0', 'Shooter', 'N'),
('The World Ends with You: Solo Remix', 'iPad', '9.5', 'RPG', 'Y'),
('Counter-Strike: Global Offensive', 'PlayStation 3', '8.0', 'Shooter', 'N'),
('The World Ends with You: Solo Remix', 'iPhone', '9.5', 'RPG', 'Y'),
('Counter-Strike: Global Offensive', 'Xbox 360', '8.0', 'Shooter', 'N'),
('Madden NFL 13', 'PlayStation Vita', '6.0', 'Sports', 'N'),
('Madden NFL 13', 'PlayStation 3', '9.0', 'Sports', 'Y'),
('Madden NFL 13', 'Xbox 360', '9.0', 'Sports', 'Y'),
('Hoodwink', 'PC', '2.5', 'Adventure', 'N'),
('NBA 2K13', 'PlayStation 3', '9.1', 'Sports', 'Y'),
('NBA 2K13', 'PC', '9.1', 'Sports', 'Y'),
('Lili: Child of Geos', 'iPhone', '7.0', 'Adventure', 'N'),
('Marvel vs. Capcom Origins', 'Xbox 360', '8.2', 'Fighting', 'N'),
('Marvel vs. Capcom Origins', 'PlayStation 3', '8.2', 'Fighting', 'N'),
('Dead or Alive 5', 'PlayStation 3', '8.8', 'Fighting', 'N'),
('Dead or Alive 5', 'Xbox 360', '8.8', 'Fighting', 'N'),
('Medal of Honor Warfighter', 'PC', '4.0', 'Shooter', 'N'),
('Professor Layton and the Miracle Mask', 'Nintendo 3DS', '8.7', 'Adventure', 'Y'),
('Hotline Miami', 'PC', '8.8', 'Action', 'Y'),
('Edna & Harvey: Harvey\'s New Eyes', 'PC', '6.0', 'Adventure', 'N'),
('Medal of Honor Warfighter', 'PlayStation 3', '4.0', 'Shooter', 'N'),
('Medal of Honor Warfighter', 'Xbox 360', '4.0', 'Shooter', 'N'),
('Transformers: Fall of Cybertron', 'Xbox 360', '8.5', 'Shooter', 'N'),
('Transformers: Fall of Cybertron', 'PlayStation 3', '8.5', 'Shooter', 'N'),
('Hero Academy', 'PC', '9.0', 'Board', 'Y'),
('Hero Academy', 'iPhone', '9.0', 'Strategy', 'Y'),
('Puzzle Craft', 'iPhone', '9.0', 'Puzzle', 'Y'),
('Realms Of Ancient War', 'Xbox 360', '5.5', 'Action', 'N'),
('Realms Of Ancient War', 'PlayStation 3', '5.5', 'Action', 'N'),
('Anomaly: Warzone Earth', 'PlayStation 3', '8.2', 'Action', 'N'),
('Darksiders II', 'PC', '7.5', 'Action', 'N'),
('Left 4 Dead 2: Cold Stream', 'Macintosh', '7.0', 'Shooter', 'N'),
('Left 4 Dead 2: Cold Stream', 'PC', '7.0', 'Shooter', 'N'),
('Puzzle Craft', 'Android', '9.0', 'Puzzle', 'Y'),
('Left 4 Dead 2: Cold Stream', 'Xbox 360', '7.0', 'Shooter', 'N'),
('Horn', 'iPhone', '9.0', 'Action, Adventure', 'Y'),
('Forza Horizon', 'Xbox 360', '9.0', 'Racing', 'Y'),
('FIFA Soccer 13', 'PlayStation Vita', '4.0', 'Sports', 'N'),
('Mugen Souls', 'PlayStation 3', '3.9', 'Strategy, RPG', 'N'),
('Crazy Taxi', 'iPhone', '7.1', 'Racing, Action', 'N'),
('New Little King\'s Story', 'PlayStation Vita', '5.8', 'RPG', 'N'),
('Fable: The Journey', 'Xbox 360', '7.2', 'Action, RPG', 'N'),
('The Lord of the Rings Online: Riders of Rohan', 'PC', '8.3', 'RPG', 'N'),
('Doom 3: BFG Edition', 'Xbox 360', '7.6', 'RPG', 'N'),
('Rugby League Live 2', 'Xbox 360', '6.0', 'Sports', 'N'),
('Rugby League Live 2', 'PlayStation 3', '6.0', 'Sports', 'N'),
('Doom 3: BFG Edition', 'PlayStation 3', '7.6', 'RPG', 'N'),
('Punch Quest', 'iPhone', '9.3', 'Action', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `login_games`
--
ALTER TABLE `login_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `login_games`
--
ALTER TABLE `login_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
