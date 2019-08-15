-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 15 2019 г., 14:13
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `api`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

CREATE TABLE `tokens` (
  `id` int(8) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tokens`
--

INSERT INTO `tokens` (`id`, `token`) VALUES
(1, '6a0dbb5359ae9946de9bac89e4aa8763'),
(2, '52fb86ab3a006c59afa7de521f16bfc2'),
(3, '1298249b54f365221ef4188165eae3b8'),
(4, 'ee252b38584813d2674e3a2dff05d01b'),
(5, '182244bd1335a1edc84dc2c5198bd039'),
(6, 'd44ccb87eb6662cba234c1f0e844266f'),
(7, '6a1f091047810e7c982caec4ca169741'),
(8, '21e0828185b204a11327281301c7a722'),
(9, 'ed8309816c0578f88d24e03335c12f85'),
(10, 'f65680c6c85b998642d5a3fd518fdd14'),
(11, 'ad0b708e5b57bf4865325b375afa17ac'),
(12, 'aedfcb6f7459f552c74a40b3751ab9a2'),
(13, '50e4373752b5787dc975e2d7488781a3'),
(14, 'ca680caee7df9da1d39d0643e5bc3019'),
(15, '133f9df8bcc5529b308392fbb91a524c'),
(16, '454a6a908f5f2261872001d331222729'),
(17, '4526e458ac0504d41014bbbfc0705880'),
(18, '9f80d2318bda7c864a0677133f127753'),
(19, 'be23f9494c452215823b705a41796188'),
(20, 'eb952dd7c7dfdffbc96c5d3d01409f2a'),
(21, 'b14083468ad33f5b925bbe278face933'),
(22, '24cc3b75d33fcd2e4f2bea1b1f6f7d81'),
(23, '7d4a630421066e71c3cb14ce1fd28270'),
(24, 'fab4cc69eb4dbd07c4e57abe7b291538'),
(25, 'd8fa2b95cfbefd8acb09a45e72d87e14'),
(26, 'c2698a10e9b8246e2f91a606ebefe6f0'),
(27, 'f1de85642427d1983bb328dbb1f62e53'),
(28, '2de6ee3aaf181d0b67fe77f7d62f6d1c'),
(29, 'a3509a9e3a389ed22a4de19fd501d09e'),
(30, '36f95d3bb6f7bc7006338ff7f69e09fd'),
(31, '2a6f25f49cd70d514319f30e5e158765'),
(32, 'e10caf8ae03d1bbd882e63e07bd7c316'),
(33, 'b96ef6d25a53f3b24c42733462955265'),
(34, '128e809557e8ccca701506a5641c5324'),
(35, 'a3dcd08d151b8fab788e3b49932c5f36');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
