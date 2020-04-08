-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2020 at 06:36 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_imdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
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
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add imd b_ database', 7, 'add_imdb_database'),
(26, 'Can change imd b_ database', 7, 'change_imdb_database'),
(27, 'Can delete imd b_ database', 7, 'delete_imdb_database'),
(28, 'Can view imd b_ database', 7, 'view_imdb_database');

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
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'Movie_Database_App', 'imdb_database'),
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
(1, 'Movie_Database_App', '0001_initial', '2020-04-08 16:14:45.801794'),
(2, 'Movie_Database_App', '0002_auto_20200316_2008', '2020-04-08 16:14:45.902727'),
(3, 'Movie_Database_App', '0003_auto_20200408_2139', '2020-04-08 16:14:47.388801'),
(4, 'contenttypes', '0001_initial', '2020-04-08 16:14:47.710012'),
(5, 'auth', '0001_initial', '2020-04-08 16:14:48.938719'),
(6, 'admin', '0001_initial', '2020-04-08 16:14:54.052558'),
(7, 'admin', '0002_logentry_remove_auto_add', '2020-04-08 16:14:55.478894'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-08 16:14:55.544254'),
(9, 'contenttypes', '0002_remove_content_type_name', '2020-04-08 16:14:56.703576'),
(10, 'auth', '0002_alter_permission_name_max_length', '2020-04-08 16:14:56.816574'),
(11, 'auth', '0003_alter_user_email_max_length', '2020-04-08 16:14:56.928881'),
(12, 'auth', '0004_alter_user_username_opts', '2020-04-08 16:14:57.026731'),
(13, 'auth', '0005_alter_user_last_login_null', '2020-04-08 16:14:57.488711'),
(14, 'auth', '0006_require_contenttypes_0002', '2020-04-08 16:14:57.516349'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2020-04-08 16:14:57.594142'),
(16, 'auth', '0008_alter_user_username_max_length', '2020-04-08 16:14:57.711824'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2020-04-08 16:14:57.825531'),
(18, 'auth', '0010_alter_group_name_max_length', '2020-04-08 16:14:57.922866'),
(19, 'auth', '0011_update_proxy_permissions', '2020-04-08 16:14:57.975686'),
(20, 'sessions', '0001_initial', '2020-04-08 16:14:58.191641'),
(21, 'Movie_Database_App', '0004_auto_20200408_2155', '2020-04-08 16:25:28.481349');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie_database_app_imdb_database`
--

CREATE TABLE `movie_database_app_imdb_database` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `plot_summary` varchar(50000) NOT NULL,
  `directors` varchar(1050) NOT NULL,
  `writers` varchar(1050) NOT NULL,
  `stars` varchar(1550) NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_database_app_imdb_database`
--

INSERT INTO `movie_database_app_imdb_database` (`id`, `title`, `plot_summary`, `directors`, `writers`, `stars`, `rating`) VALUES
(1, 'The Gentlemen', 'A talented graduate of Oxford, using his unique mind and unprecedented audacity, came up with an illegal enrichment scheme using the estate of an impoverished English aristocracy. However, when he decides to sell his business to an influential clan of billionaires from the United States, no less charming but tough gentlemen stand in his way. An exchange of courtesies is planned, which certainly will not do without shootings and a couple of accidents.', 'Guy Ritchie', 'Guy Ritchie,Ivan Atkinson,Marn Davies,Guy Ritchie', 'Matthew McConaughey,Charlie Hunnam,Michelle Dockery,Jeremy Strong,Lyne Renee,Colin Farrell,Henry Golding,Tom Wu,Chidi Ajufo,Hugh Grant,Simon R. Barker,Eddie Marsan,Jason Wong,John Dagleish,Jordan Long,Lily Frazer,Gershwyn Eustache Jnr,Samuel West,Geraldine Somerville,Eliot Sumner,Franz Drameh,Christopher Evangelou,James Warren,Sean Sagar,Bugzy Malone,Tom Rhys Harries,Danny Griffin,Max Bennett,Eugenia Kuzmina,Bruce Chong,Ashley McGuire,George Asprey,Shanu Hazzan,Jack Jones,Sammy Williams,Ryan Dean,Guy List,Marvin Campbell,Will Mackay,Matt Sherren,Jason Hunjan,Maurice Lee,Russell Balogh,Togo Igawa,Jack O\'Connor,McKell David,Isaiah Zev,David Garrick,Tom Lambert,Andy Cheung,Mark Rathbone,Andrew Greenough,Timothy Siddall,Dominic Gibbs,Simon Adkins,Chloe Arrowsmith,Brittany Ashworth,Steve Barnett,Alex Batareanu,Elle Black,Mike Bodnar,Amor Evans,Nicholle Hembra,Oleg Hill,Jason Lines,Rubens Saboia,Steve Saunders,Jon Xue Zhang', 8),
(2, '1917', 'April 1917, the Western Front. Two British soldiers are sent to deliver an urgent message to an isolated regiment. If the message is not received in time the regiment will walk into a trap and be massacred. To get to the regiment they will need to cross through enemy territory. Time is of the essence and the journey will be fraught with danger.', 'Sam Mendes', 'Sam Mendes,Krysty Wilson-Cairns', 'Dean-Charles Chapman,George MacKay,Daniel Mays,Colin Firth,Pip Carter,Andy Apollo,Paul Tinto,Josef Davies,Billy Postlethwaite,Gabriel Akuwudike,Andrew Scott,Spike Leighton,Robert Maaser,Gerran Howell,Adam Hugill,Mark Strong,Richard McCabe,Benjamin Adams,Anson Boon,Kenny Fullwood,Tommy French,Nabhaan Rizwan,Ryan Nolan,Elliot Baxter,Bogdan Kumshatsky,Kye Mckee,Claire Duburcq,Ivy-l Macnamara,Merlin Leonhardt,Taddeo Kufus,Jos Slovick,Luke Hornsby,Jack Shalloo,Elliot Edusah,Chris Walley,Joe Mendes,Jacob James Beswick,Michael Jibson,Ian Wilson,Bradley Connor,Justin Edwards,John Hollingworth,Jamie Parker,Daniel Attwell,Samson Cox-Vinell,Jonny Lavelle,Michael Rouse,Benedict Cumberbatch,Adrian Scarborough,Richard Dempsey,Phil Cheadle,Jonah Russell,Richard Madden,Charles Alexandre,Spencer Allum,Kaine Applegate,Anj Avraam,Owun Birkett,Fabio Bocca,Jake Burnside,Harrison Cope,Richard Curtis,Luke Dixey,Tom Dunham,Kieran Geary,Joseph Aston Grant,Scott Harrington,Sammy John Heaney,Mikel Iriarte,Robin Lee,Ibrahim Majid,Ketan Majmudar,Seb Mayo,Joseph Mills,Michael Mortimer,Callum Needham,Mark Oldridge,Richard Price,Jon Ramsbottom,Josh Sanders,Mark Schneider,Will Sharp,Oliver Simms,Daniel Smales,Scott Stevenson,Richard Townsley,James Troake,Josh Turner,Patrick Walsh,James Willmott,Fraser Young', 8.4);

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `movie_database_app_imdb_database`
--
ALTER TABLE `movie_database_app_imdb_database`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `movie_database_app_imdb_database`
--
ALTER TABLE `movie_database_app_imdb_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
