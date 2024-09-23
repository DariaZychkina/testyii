-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 23 2024 г., 16:08
-- Версия сервера: 8.0.39
-- Версия PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `create_time` int DEFAULT NULL,
  `update_time` int DEFAULT NULL,
  `author_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `content`, `create_time`, `update_time`, `author_id`) VALUES
(4, 'Выбираем лучшую породу кошек', 'Все кошки и коты круты', NULL, NULL, 2),
(5, 'Какие кошки самые ласковые?', 'Все кошки и коты круты', NULL, NULL, 2),
(6, 'Коты или кошки, кого взять?', 'Все кошки и коты круты', NULL, NULL, 2),
(7, 'Сегодня я встал с кровати и подвернул ногу...', 'Жизнь такая жизнь', NULL, NULL, 3),
(8, 'Я выйграл миллион!!!!!!!', 'Жизнь такая жизнь', NULL, NULL, 3),
(9, 'Сегодня ничего не произошло', 'Жизнь такая жизнь', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(1280) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(128) NOT NULL,
  `profile` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `profile`) VALUES
(1, 'user1', 'pass', 'user@maail.ru', 'Hi, I`m a programmer. 21 y.o'),
(2, 'user2', 'pass2', 'user2@maail.ru', 'Blog about cats'),
(3, 'user3', 'pass3', 'user3@maail.ru', 'What is life?...');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post_author` (`author_id`);

--
-- Индексы таблицы `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `FK_post_author` FOREIGN KEY (`author_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
