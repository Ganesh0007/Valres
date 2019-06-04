-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 28 Mai 2019 à 14:02
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ppe_m2l`
--

-- --------------------------------------------------------

--
-- Structure de la table `journal_acces`
--

CREATE TABLE `journal_acces` (
  `ID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `journal_acces`
--

INSERT INTO `journal_acces` (`ID`, `Date`, `email`) VALUES
(1, '2019-05-27 11:01:55', 'dupont@free.fr'),
(2, '2019-05-27 11:03:46', 'dupont@free.fr'),
(3, '2019-05-27 11:18:57', 'dupont@free.fr'),
(4, '2019-05-27 11:19:12', 'dupont@free.fr');

-- --------------------------------------------------------

--
-- Structure de la table `journal_tentatives`
--

CREATE TABLE `journal_tentatives` (
  `ID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `motif` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `journal_tentatives`
--

INSERT INTO `journal_tentatives` (`ID`, `Date`, `email`, `password`, `motif`) VALUES
(1, '2019-05-27 10:59:16', 'dupont@free.fr', 'dp', 'mot de passe'),
(2, '2019-05-27 10:59:25', 'dupont@free.fr', 'dp', 'mot de passe'),
(5, '2019-05-27 11:03:21', 'yohanndu77@hotmail.fr', 'dupont', 'mail'),
(4, '2019-05-27 11:01:21', 'yohanndu77@hotmail.fr', 'dp', 'les deux'),
(6, '2019-05-27 11:03:59', 'yohanndu77@hotmail.fr', 'dupont', 'mail'),
(7, '2019-05-27 11:19:43', 'dupont@free.fr', 'toto', 'mot de passe'),
(8, '2019-05-27 11:20:11', 'durand@free.fr', 'dupont', 'mail'),
(9, '2019-05-27 11:22:15', 'durand@free.fr', 'durand', 'les deux');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_area`
--

CREATE TABLE `mrbs_area` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_name` varchar(30) DEFAULT NULL,
  `sort_key` varchar(30) NOT NULL DEFAULT '',
  `timezone` varchar(50) DEFAULT NULL,
  `area_admin_email` text,
  `resolution` int(11) DEFAULT NULL,
  `default_duration` int(11) DEFAULT NULL,
  `default_duration_all_day` tinyint(1) NOT NULL DEFAULT '0',
  `morningstarts` int(11) DEFAULT NULL,
  `morningstarts_minutes` int(11) DEFAULT NULL,
  `eveningends` int(11) DEFAULT NULL,
  `eveningends_minutes` int(11) DEFAULT NULL,
  `private_enabled` tinyint(1) DEFAULT NULL,
  `private_default` tinyint(1) DEFAULT NULL,
  `private_mandatory` tinyint(1) DEFAULT NULL,
  `private_override` varchar(32) DEFAULT NULL,
  `min_create_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_create_ahead_secs` int(11) DEFAULT NULL,
  `max_create_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_create_ahead_secs` int(11) DEFAULT NULL,
  `min_delete_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_delete_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_per_day_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_day` int(11) NOT NULL DEFAULT '0',
  `max_per_week_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_week` int(11) NOT NULL DEFAULT '0',
  `max_per_month_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_month` int(11) NOT NULL DEFAULT '0',
  `max_per_year_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_year` int(11) NOT NULL DEFAULT '0',
  `max_per_future_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_future` int(11) NOT NULL DEFAULT '0',
  `max_duration_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_duration_secs` int(11) NOT NULL DEFAULT '0',
  `max_duration_periods` int(11) NOT NULL DEFAULT '0',
  `custom_html` text,
  `approval_enabled` tinyint(1) DEFAULT NULL,
  `reminders_enabled` tinyint(1) DEFAULT NULL,
  `enable_periods` tinyint(1) DEFAULT NULL,
  `periods` text,
  `confirmation_enabled` tinyint(1) DEFAULT NULL,
  `confirmed_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mrbs_area`
--

INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`) VALUES
(2, 0, 'Bussy', 'Bussy', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '["Period 1","Period 2"]', 1, 1),
(3, 0, 'Paris', 'Paris', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '["Period 1","Period 2"]', 1, 1),
(4, 0, 'Toulon', 'Toulon', 'Europe/Paris', NULL, 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 2, NULL, 0, 1, 0, '["Period 1","Period 2"]', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_entry`
--

CREATE TABLE `mrbs_entry` (
  `id` int(11) NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `entry_type` int(11) NOT NULL DEFAULT '0',
  `repeat_id` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) NOT NULL DEFAULT '',
  `modified_by` varchar(80) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) DEFAULT NULL,
  `info_text` text,
  `ical_uid` varchar(255) NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
  `ical_recur_id` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mrbs_entry`
--

INSERT INTO `mrbs_entry` (`id`, `start_time`, `end_time`, `entry_type`, `repeat_id`, `room_id`, `timestamp`, `create_by`, `modified_by`, `name`, `type`, `description`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`, `ical_recur_id`) VALUES
(1, 1552982400, 1552996800, 0, NULL, 2, '2019-03-18 14:02:29', 'yohann', '', 'Cours de Maths', 'E', 'Cours sur les dérivés', 0, NULL, NULL, NULL, NULL, 'MRBS-5c8fa4f50f846-7f9e1243@localhost', 0, NULL),
(2, 1553518800, 1553533200, 0, NULL, 3, '2019-03-22 11:36:17', 'yohann', '', 'Cours de C#', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5c94c8b11a532-a72f2d51@localhost', 0, NULL),
(3, 1553868000, 1553871600, 0, NULL, 3, '2019-03-22 15:42:24', 'ganesh', '', 'Avant match de football', 'I', 'Préparation pour le match du Samedi 30/03', 0, NULL, NULL, NULL, NULL, 'MRBS-5c95026089bb1-cf995235@localhost', 0, NULL),
(4, 1553148000, 1553151600, 0, NULL, 2, '2019-03-22 15:48:53', 'yohann', '', 'test', 'E', 'testtest', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9503e51477c-f2902d66@localhost', 0, NULL),
(129, 1554357600, 1554372000, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190404T060000Z'),
(130, 1554962400, 1554976800, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190411T060000Z'),
(131, 1555567200, 1555581600, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190418T060000Z'),
(132, 1556172000, 1556186400, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190425T060000Z'),
(133, 1556776800, 1556791200, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190502T060000Z'),
(134, 1557381600, 1557396000, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190509T060000Z'),
(135, 1557986400, 1558000800, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190516T060000Z'),
(136, 1558591200, 1558605600, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190523T060000Z'),
(137, 1559196000, 1559210400, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190530T060000Z'),
(138, 1559800800, 1559815200, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190606T060000Z'),
(139, 1560405600, 1560420000, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190613T060000Z'),
(140, 1561010400, 1561024800, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190620T060000Z'),
(141, 1561615200, 1561629600, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190627T060000Z'),
(142, 1562220000, 1562234400, 1, 6, 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3, '20190704T060000Z'),
(144, 1557039600, 1557054000, 1, 8, 2, '2019-05-24 07:56:06', 'yohann', 'yohann', 'Cours de français', 'I', 'Français/anglais', 0, NULL, NULL, NULL, NULL, 'MRBS-5ce7a0a9a5488-644a85f1@localhost', 1, '20190505T070000Z'),
(145, 1559718000, 1559732400, 1, 8, 2, '2019-05-24 07:56:06', 'yohann', 'yohann', 'Cours de français', 'I', 'Français/anglais', 0, NULL, NULL, NULL, NULL, 'MRBS-5ce7a0a9a5488-644a85f1@localhost', 1, '20190605T070000Z'),
(146, 1562310000, 1562324400, 1, 8, 2, '2019-05-24 07:56:06', 'yohann', 'yohann', 'Cours de français', 'I', 'Français/anglais', 0, NULL, NULL, NULL, NULL, 'MRBS-5ce7a0a9a5488-644a85f1@localhost', 1, '20190705T070000Z'),
(147, 1564988400, 1565002800, 1, 8, 2, '2019-05-24 07:56:06', 'yohann', 'yohann', 'Cours de français', 'I', 'Français/anglais', 0, NULL, NULL, NULL, NULL, 'MRBS-5ce7a0a9a5488-644a85f1@localhost', 1, '20190805T070000Z'),
(148, 1567666800, 1567681200, 1, 8, 2, '2019-05-24 07:56:06', 'yohann', 'yohann', 'Cours de français', 'I', 'Français/anglais', 0, NULL, NULL, NULL, NULL, 'MRBS-5ce7a0a9a5488-644a85f1@localhost', 1, '20190905T070000Z');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_repeat`
--

CREATE TABLE `mrbs_repeat` (
  `id` int(11) NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `rep_type` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `rep_opt` varchar(32) NOT NULL DEFAULT '',
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) NOT NULL DEFAULT '',
  `modified_by` varchar(80) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text,
  `rep_num_weeks` smallint(6) DEFAULT NULL,
  `month_absolute` smallint(6) DEFAULT NULL,
  `month_relative` varchar(4) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) DEFAULT NULL,
  `info_text` text,
  `ical_uid` varchar(255) NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mrbs_repeat`
--

INSERT INTO `mrbs_repeat` (`id`, `start_time`, `end_time`, `rep_type`, `end_date`, `rep_opt`, `room_id`, `timestamp`, `create_by`, `modified_by`, `name`, `type`, `description`, `rep_num_weeks`, `month_absolute`, `month_relative`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`) VALUES
(6, 1554357600, 1554372000, 2, 1562306400, '0000100', 4, '2019-04-12 15:37:38', 'yohann', 'yohann', 'Cours de C#', 'I', 'Les bases du C#', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'MRBS-5c9e2b91da9f5-6225ae08@localhost', 3),
(8, 1557039600, 1557054000, 3, 1567666800, '\'0\'', 2, '2019-05-24 07:56:06', 'yohann', 'yohann', 'Cours de français', 'I', 'Français/anglais', 1, 5, NULL, 0, NULL, NULL, NULL, NULL, 'MRBS-5ce7a0a9a5488-644a85f1@localhost', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_room`
--

CREATE TABLE `mrbs_room` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(25) NOT NULL DEFAULT '',
  `sort_key` varchar(25) NOT NULL DEFAULT '',
  `description` varchar(60) DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `room_admin_email` text,
  `custom_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mrbs_room`
--

INSERT INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `custom_html`) VALUES
(2, 0, 2, 'MLK', 'MLK', 'Lycee', 35, 'yohannlouisia@hotmail.fr', NULL),
(3, 0, 3, 'Epsi', 'Epsi', 'Campus', 50, 'yohannlouisia@hotmail.fr', NULL),
(4, 0, 3, 'Sornas', 'Sornas', 'Ecole', 20, 'yohannlouisia@hotmail.fr', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_users`
--

CREATE TABLE `mrbs_users` (
  `id` int(11) NOT NULL,
  `level` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mrbs_users`
--

INSERT INTO `mrbs_users` (`id`, `level`, `name`, `password_hash`, `email`, `timestamp`) VALUES
(1, 1, 'yohann', 'yl123', 'yohannlouisia@hotmail.fr', '2019-03-18 12:08:53'),
(2, 0, 'ganesh', 'g123', 'ganesh@hotmail.fr', '2019-05-05 21:51:40'),
(3, 1, 'dupont', 'dupont', 'dupont@free.fr', '2019-05-27 10:16:37');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_variables`
--

CREATE TABLE `mrbs_variables` (
  `id` int(11) NOT NULL,
  `variable_name` varchar(80) DEFAULT NULL,
  `variable_content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mrbs_variables`
--

INSERT INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
(1, 'db_version', '53'),
(2, 'local_db_version', '1');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_zoneinfo`
--

CREATE TABLE `mrbs_zoneinfo` (
  `id` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL DEFAULT '',
  `outlook_compatible` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `vtimezone` text,
  `last_updated` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mrbs_zoneinfo`
--

INSERT INTO `mrbs_zoneinfo` (`id`, `timezone`, `outlook_compatible`, `vtimezone`, `last_updated`) VALUES
(1, 'Europe/Paris', 1, 'BEGIN:VTIMEZONE\r\nTZID:Europe/Paris\r\nTZURL:http://tzurl.org/zoneinfo-outlook/Europe/Paris\r\nX-LIC-LOCATION:Europe/Paris\r\nBEGIN:DAYLIGHT\r\nTZOFFSETFROM:+0100\r\nTZOFFSETTO:+0200\r\nTZNAME:CEST\r\nDTSTART:19700329T020000\r\nRRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU\r\nEND:DAYLIGHT\r\nBEGIN:STANDARD\r\nTZOFFSETFROM:+0200\r\nTZOFFSETTO:+0100\r\nTZNAME:CET\r\nDTSTART:19701025T030000\r\nRRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU\r\nEND:STANDARD\r\nEND:VTIMEZONE', 1558683403);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `journal_acces`
--
ALTER TABLE `journal_acces`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `journal_tentatives`
--
ALTER TABLE `journal_tentatives`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `mrbs_area`
--
ALTER TABLE `mrbs_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_area_name` (`area_name`);

--
-- Index pour la table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `repeat_id` (`repeat_id`),
  ADD KEY `idxStartTime` (`start_time`),
  ADD KEY `idxEndTime` (`end_time`);

--
-- Index pour la table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Index pour la table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_room_name` (`area_id`,`room_name`),
  ADD KEY `idxSortKey` (`sort_key`);

--
-- Index pour la table `mrbs_users`
--
ALTER TABLE `mrbs_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_name` (`name`);

--
-- Index pour la table `mrbs_variables`
--
ALTER TABLE `mrbs_variables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_variable_name` (`variable_name`);

--
-- Index pour la table `mrbs_zoneinfo`
--
ALTER TABLE `mrbs_zoneinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_timezone` (`timezone`,`outlook_compatible`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `journal_acces`
--
ALTER TABLE `journal_acces`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `journal_tentatives`
--
ALTER TABLE `journal_tentatives`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `mrbs_area`
--
ALTER TABLE `mrbs_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT pour la table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `mrbs_users`
--
ALTER TABLE `mrbs_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `mrbs_variables`
--
ALTER TABLE `mrbs_variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `mrbs_zoneinfo`
--
ALTER TABLE `mrbs_zoneinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  ADD CONSTRAINT `mrbs_entry_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mrbs_entry_ibfk_2` FOREIGN KEY (`repeat_id`) REFERENCES `mrbs_repeat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  ADD CONSTRAINT `mrbs_repeat_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  ADD CONSTRAINT `mrbs_room_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `mrbs_area` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
