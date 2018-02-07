-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 07 2018 г., 21:08
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tester`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `header` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `header`, `description`) VALUES
(1, 'В США поезд с конгрессменами протаранил грузовик', 'В США поезд, который перевозил членов Конгресса, столкнулся с грузовиком и сошел с рельсов. По предварительным данным пострадал водитель самосвала.\r\nПоезд, который перевозил американских конгрессменов и членов их семей в один из горных курортов в Западной Вирджинии, сегодня, 31 января, столкнулся с грузовиком. Об этом сообщает телеканал Fox News.'),
(2, 'Чехия удвоила квоту на рабочие визы для украинцев', 'В Чехии 132 тысячи незакрытых вакансий в сферах информационных технологиях, строительства, промышленности, электроники, авто- и машиностроения.\r\nКабинет министров Чехии увеличил квоты на предоставление рабочих виз для граждан Украины, а также ускорил и упростил получение необходимых для этого документов. Об этом в среду, 31 января, сообщает DW.'),
(3, 'В России рассказали о ракетах Северной Кореи', 'Если первые модели северокорейских ракет были похожи на то, что было у других стран, то последние образцы - это, скорее всего, собственные разработки, сказал российский дипломат.\r\nСеверная Корея показывает на военных парадах ракеты собственной разработки. Об этом посол России в КНДР Александр Мацегора заявил в интервью РИА Новости.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
