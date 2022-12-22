-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 22 2022 г., 04:58
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `20087_db_regist`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `patients_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `services_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_orders`, `start`, `end`, `patients_id`, `name`, `staff_id`, `services_id`) VALUES
(6, 2022, 0, 0, 'Окулист', 0, 0),
(9, 2022, 0, 0, 'Ортопед', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `patients`
--

CREATE TABLE `patients` (
  `id_patients` int(11) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `father_name` varchar(45) NOT NULL,
  `id_orders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `patients`
--

INSERT INTO `patients` (`id_patients`, `last_name`, `name`, `father_name`, `id_orders`) VALUES
(4, 'Макрицкий', 'Андрей', 'Владимирович', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id_services` int(11) NOT NULL,
  `deadlines` varchar(45) NOT NULL,
  `service` varchar(100) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id_services`, `deadlines`, `service`, `staff_id`) VALUES
(1, '08.12 - 15.12', 'Окулист', 0),
(2, '05.12 - 16.12', 'Стоматолог', 0),
(3, '01.12 - 20.12', 'Ортопед', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `father_name` varchar(45) NOT NULL,
  `wages` int(11) NOT NULL,
  `experience` varchar(45) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `post` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`id_staff`, `last_name`, `name`, `father_name`, `wages`, `experience`, `specialization`, `post`) VALUES
(1, 'Васильев', 'Василий', 'Васильевич', 0, '', '', 'Окулист'),
(3, 'Иванов', 'Иван', 'Иванович', 0, '', '', 'Стоматолог'),
(4, 'Петров', 'Петр', 'Петрович', 0, '', '', 'Психолог');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `father_name` varchar(45) NOT NULL,
  `password` varchar(8) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_users`, `last_name`, `name`, `father_name`, `password`, `role`) VALUES
(5, 'Макрицкий', 'Андрей', 'Владимирович', '12345', 3),
(6, 'admin', '-', '-', '123', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Индексы таблицы `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id_patients`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_services`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `patients`
--
ALTER TABLE `patients`
  MODIFY `id_patients` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id_services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
