-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Май 13 2023 г., 11:44
-- Версия сервера: 10.6.5-MariaDB-1:10.6.5+maria~focal
-- Версия PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `default`
--

-- --------------------------------------------------------

--
-- Структура таблицы `channels`
--

CREATE TABLE IF NOT EXISTS `channels` (
  `channel_id` varchar(50) DEFAULT NULL,
  `channel_name` varchar(50) DEFAULT NULL,
  `server_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  KEY `Primary Key` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `serveradmins`
--

CREATE TABLE IF NOT EXISTS `serveradmins` (
  `server_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `server_id` varchar(50) NOT NULL,
  `server_name` varchar(50) NOT NULL,
  `owner_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_pass` varchar(100) DEFAULT NULL,
  `user_last_active` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `userservers`
--

CREATE TABLE IF NOT EXISTS `userservers` (
  `user_id` varchar(50) DEFAULT NULL,
  `server_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `user_messages`
--

CREATE TABLE IF NOT EXISTS `user_messages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_from` varchar(50) DEFAULT NULL,
  `user_to` varchar(50) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
