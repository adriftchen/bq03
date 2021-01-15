-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-01-15 06:52:34
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db11`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE `movie` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `level` text NOT NULL,
  `length` int(3) UNSIGNED NOT NULL,
  `year` int(4) UNSIGNED NOT NULL,
  `month` tinyint(2) UNSIGNED NOT NULL,
  `day` tinyint(2) UNSIGNED NOT NULL,
  `ondate` date NOT NULL,
  `publish` text NOT NULL,
  `director` text NOT NULL,
  `trailer` text NOT NULL,
  `poster` text NOT NULL,
  `intro` text NOT NULL,
  `sh` tinyint(1) UNSIGNED NOT NULL,
  `rank` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `movie`
--

INSERT INTO `movie` (`id`, `name`, `level`, `length`, `year`, `month`, `day`, `ondate`, `publish`, `director`, `trailer`, `poster`, `intro`, `sh`, `rank`) VALUES
(1, 'aaaa', '普遍級', 95, 2021, 1, 15, '2021-01-15', '1111', 'peter', '03B09v.mp4', '03B09.png', 'poepo feowp jmrw', 1, 1),
(2, 'bbbb', '保護級', 105, 2021, 1, 14, '2021-01-14', '2222', 'postier', '03B14v.mp4', '03B14.png', 'heuirwnf', 1, 2),
(3, 'cccc', '限制級', 99, 2021, 1, 15, '2021-01-15', '3333', 'nath', '03B19v.mp4', '03B19.png', 'n,mioewre', 1, 3),
(4, 'rrrr', '保護級', 99, 2021, 1, 14, '2021-01-14', 'trtre', 'ertre', '03B06v.mp4', '03B06.png', 'ryreayre', 1, 4),
(5, 'hyt5rytr', '輔導級', 50, 2021, 1, 14, '2021-01-14', 'ytryt', 'ytryt', '03B14v.mp4', '03B08.png', '6t4wy54', 1, 5),
(6, 'hytrf', '輔導級', 33, 2021, 1, 15, '2021-01-15', 'fdagfs', 'mmmnf', '03B03v.mp4', '03B03.png', 'rel;lrfbg', 1, 6),
(7, 'orpe[tg', '保護級', 0, 2021, 1, 15, '2021-01-15', 'hgfhb', 'qsas', '03B05v.mp4', '03B05.png', 'qqq', 1, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `num` varchar(12) NOT NULL,
  `movie` text NOT NULL,
  `date` date NOT NULL,
  `session` text NOT NULL,
  `seats` text NOT NULL,
  `qt` int(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `num`, `movie`, `date`, `session`, `seats`, `qt`) VALUES
(1, '202101150001', 'aaaa', '2021-01-15', '14:00~16:00', 'a:3:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";}', 3),
(2, '202101150002', 'bbbb', '2021-01-16', '20:00~22:00', 'a:3:{i:0;s:1:\"5\";i:1;s:2:\"10\";i:2;s:2:\"15\";}', 3),
(4, '202101150003', 'hyt5rytr', '2021-01-16', '20:00~22:00', 'a:4:{i:0;s:1:\"6\";i:1;s:2:\"11\";i:2;s:2:\"16\";i:3;s:2:\"17\";}', 4),
(5, '202101150005', 'cccc', '2021-01-17', '18:00~20:00', 'a:2:{i:0;s:1:\"8\";i:1;s:1:\"9\";}', 2),
(6, '202101150006', 'bbbb', '2021-01-16', '18:00~20:00', 'a:2:{i:0;s:1:\"5\";i:1;s:2:\"10\";}', 2),
(7, '202101150007', 'aaaa', '2021-01-16', '22:00~24:00', 'a:2:{i:0;s:1:\"5\";i:1;s:2:\"10\";}', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `poster`
--

CREATE TABLE `poster` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `sh` tinyint(1) NOT NULL,
  `rank` int(11) UNSIGNED NOT NULL,
  `ani` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `poster`
--

INSERT INTO `poster` (`id`, `name`, `img`, `sh`, `rank`, `ani`) VALUES
(1, '預告片01', '03A01.jpg', 1, 2, 1),
(3, '預告片2', '03A02.jpg', 1, 3, 3),
(4, '預告片3', '03A03.jpg', 1, 1, 2),
(5, '預告片5', '03A05.jpg', 1, 4, 1),
(6, '預告片83', '03B08.png', 1, 5, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
