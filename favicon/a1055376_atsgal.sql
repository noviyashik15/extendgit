-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.1.96
-- Время создания: Дек 15 2024 г., 20:22
-- Версия сервера: 8.0.37-29
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `a1055376_atsgal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `autoreg`
--

CREATE TABLE `autoreg` (
  `id` int DEFAULT NULL,
  `full_name` varchar(355) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `avatar` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `autoreg`
--

INSERT INTO `autoreg` (`id`, `full_name`, `login`, `email`, `password`, `avatar`) VALUES
(NULL, 'qq', 'qq', 'qq@mail.ru', '099b3b060154898840f0ebdfb46ec78f', 'uploads/1729243448image096.jpg'),
(NULL, 'yy', 'yy', 'arnina2@mail.ru', '2fb1c5cf58867b5bbc9a1b145a86f3a0', 'uploads/1729527537Mos_536be02b0e5c860dce9774cfbddf8654.jpg'),
(NULL, 'qq', 'qqq', 'cbssklaqjdd@mail.ru', '099b3b060154898840f0ebdfb46ec78f', 'uploads/1732313989Дубай в 80-е годы XX века 1576824176135181652.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int NOT NULL,
  `FNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `MI` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `FNAME`, `MI`, `LNAME`) VALUES
(1, 'Иван', 'Иванович', 'Иванов');

-- --------------------------------------------------------

--
-- Структура таблицы `firstau`
--

CREATE TABLE `firstau` (
  `id` int NOT NULL,
  `login` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `polz`
--

CREATE TABLE `polz` (
  `id` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `polz`
--

INSERT INTO `polz` (`id`, `username`, `password`) VALUES
(2, 'qa', '$2y$10$iIqnReVYCPt4RkX6iFUX2.5GExvQwHiHSgD/tW8Yj8hA7vG3erxs2'),
(3, 'az', '$2y$10$L97nAPCTHsukjrdcPwtQ/Oa/8vUsvU./vM.hn4Oc56DeWz760seBe'),
(4, 'op', '$2y$10$SAkFtr2TcatOrHp4EVXOjuzaL8weOJrKIs6edkH.4kXJCiNOXkJEy'),
(5, 'yy', '$2y$10$kZs5vCNMxGtAmC/LD0qJLOsNifOEZgoXX2W0BLE7a4SbFpdDsdFHq'),
(6, 'qq', '$2y$10$IilyfmL0gKVsyYSaE6KDFOAvk19YQRSWNfULHXjctuAWMtbED2hrW');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image_src` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `image_src`) VALUES
(8, 'Первая', 'Картинка', 0x696d6167653038322e6a7067);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstname` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `lastname` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phonenumber` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phonenumber`, `password`) VALUES
(1, 'qq', 'qq', 'qq@qq', '12', 'bed4eb698c6eeea7f1ddf5397d480d3f2c0fb938'),
(2, 'qq', 'oo', '', '', 'bed4eb698c6eeea7f1ddf5397d480d3f2c0fb938'),
(3, 'qq', 'qq', '', '', 'bed4eb698c6eeea7f1ddf5397d480d3f2c0fb938'),
(4, 'qq', '', '', '', 'bed4eb698c6eeea7f1ddf5397d480d3f2c0fb938');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `firstau`
--
ALTER TABLE `firstau`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `polz`
--
ALTER TABLE `polz`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `firstau`
--
ALTER TABLE `firstau`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `polz`
--
ALTER TABLE `polz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
