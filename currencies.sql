-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 17 2020 г., 14:35
-- Версия сервера: 5.6.43
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `currency_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` int(20) NOT NULL,
  `CharCode` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nominal` int(20) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `currencies`
--

INSERT INTO `currencies` (`id`, `CharCode`, `Nominal`, `Name`, `Value`) VALUES
(1, 'AUD', 1, 'Австралийский доллар', 52.3273),
(2, 'AZN', 1, 'Азербайджанский манат', 43.0934),
(3, 'GBP', 1, 'Фунт стерлингов Соединенного королевства', 95.671),
(4, 'AMD', 100, 'Армянских драмов', 15.0774),
(5, 'BYN', 1, 'Белорусский рубль', 29.7758),
(6, 'BGN', 1, 'Болгарский лев', 44.1964),
(7, 'BRL', 1, 'Бразильский реал', 13.6385),
(8, 'HUF', 100, 'Венгерских форинтов', 24.9666),
(9, 'HKD', 10, 'Гонконгских долларов', 94.467),
(10, 'DKK', 1, 'Датская крона', 11.6053),
(11, 'USD', 1, 'Доллар США', 73.2157),
(12, 'EUR', 1, 'Евро', 86.4092),
(13, 'INR', 100, 'Индийских рупий', 97.7467),
(14, 'KZT', 100, 'Казахстанских тенге', 17.4414),
(15, 'CAD', 1, 'Канадский доллар', 55.2863),
(16, 'KGS', 100, 'Киргизских сомов', 94.1076),
(17, 'CNY', 1, 'Китайский юань', 10.534),
(18, 'MDL', 10, 'Молдавских леев', 43.7109),
(19, 'NOK', 10, 'Норвежских крон', 82.1255),
(20, 'PLN', 1, 'Польский злотый', 19.6732),
(21, 'RON', 1, 'Румынский лей', 17.8767),
(22, 'XDR', 1, 'СДР (специальные права заимствования)', 103.315),
(23, 'SGD', 1, 'Сингапурский доллар', 53.3215),
(24, 'TJS', 10, 'Таджикских сомони', 70.9798),
(25, 'TRY', 1, 'Турецкая лира', 9.93),
(26, 'TMT', 1, 'Новый туркменский манат', 20.9487),
(27, 'UZS', 10000, 'Узбекских сумов', 71.3812),
(28, 'UAH', 10, 'Украинских гривен', 26.7455),
(29, 'CZK', 10, 'Чешских крон', 33.0754),
(30, 'SEK', 10, 'Шведских крон', 84.0294),
(31, 'CHF', 1, 'Швейцарский франк', 80.4038),
(32, 'ZAR', 10, 'Южноафриканских рэндов', 41.9432),
(33, 'KRW', 1000, 'Вон Республики Корея', 61.7177),
(34, 'JPY', 100, 'Японских иен', 68.5701);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CharCode` (`CharCode`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
