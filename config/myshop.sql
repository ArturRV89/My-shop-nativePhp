-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 10 2022 г., 12:02
-- Версия сервера: 5.5.16
-- Версия PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `myshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`) VALUES
(1, 0, 'Телефоны'),
(2, 0, 'Планшеты'),
(3, 1, 'Телефоны Samsung'),
(4, 1, 'Телефоны Apple'),
(5, 2, 'Планшеты Apple'),
(6, 2, 'Планшеты Acer'),
(7, 2, 'Планшеты Samsung');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_payment` datetime DEFAULT NULL,
  `date_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `user_ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date_created`, `date_payment`, `date_modification`, `status`, `comment`, `user_ip`) VALUES
(1, 17, '0000-00-00 00:00:00', NULL, '2022-02-16 08:05:15', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222<br/>', '127.0.0.1'),
(2, 17, '0000-00-00 00:00:00', NULL, '2022-02-16 08:05:40', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222<br/>', '127.0.0.1'),
(3, 17, '0000-00-00 00:00:00', NULL, '2022-02-16 08:12:14', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222<br/>', '127.0.0.1'),
(4, 17, '0000-00-00 00:00:00', NULL, '2022-02-16 08:14:09', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222<br/>', '127.0.0.1'),
(5, 17, '0000-00-00 00:00:00', NULL, '2022-02-16 08:18:54', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222<br/>', '127.0.0.1'),
(6, 17, '0000-00-00 00:00:00', NULL, '2022-02-16 08:24:34', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222<br/>', '127.0.0.1'),
(7, 17, '2022-02-16 12:04:11', NULL, '2022-03-09 09:17:29', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222<br/>', '127.0.0.1'),
(8, 17, '2022-02-16 12:52:06', NULL, '2022-02-16 11:52:06', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222', '127.0.0.1'),
(9, 17, '2022-02-16 13:09:31', NULL, '2022-02-16 12:09:31', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222', '127.0.0.1'),
(10, 17, '2022-02-16 13:09:42', NULL, '2022-02-16 12:09:42', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222', '127.0.0.1'),
(11, 17, '2022-02-16 13:09:43', NULL, '2022-02-16 12:09:43', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222', '127.0.0.1'),
(12, 17, '2022-02-16 13:09:51', NULL, '2022-02-16 12:09:51', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222', '127.0.0.1'),
(13, 17, '2022-02-16 13:10:27', NULL, '2022-03-09 09:17:29', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222', '127.0.0.1'),
(14, 17, '2022-02-20 11:31:31', '2022-07-07 17:17:17', '2022-03-09 09:37:35', 0, 'id пользователя: 17<br/>\r\n                         Имя: 222<br/>\r\n                         Тел: 222<br/>\r\n                         Адрес: 222', '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `image`, `status`) VALUES
(1, 3, 'GT-C3560', '                        <p>Закругленные углы и окантовка  вносят стильный штрих в минималистичный дизайн телефона. Металлическая отделка смотрится  элегантно и современно. А благодаря небольшим размерам С3560 удобно лежит в руке и легко помещается в кармане.</p>\n<br />\n\n<p>Спецификации:</p>\n<ul><li>Стандарты сети GSM и EDGE : GSM (850/900/1800/1900)</li><li>Стандарт сети 3G : N/A</li><li>Стандарт сети CDMA : N/A</li><li>TD-SCDMA Band : N/A</li></ul>\n                    ', 3000, '1.png', 1),
(3, 3, 'GT-E2600', '<p>Тонкий и изящный дизайн телефона E2600? широкий экран и пользовательский интерфейс Paragon UX обеспечивают удобство и комфорт в использовании.  Телефон оснащен интуитивно-понятным пользовательским интерфейсом.  </p>\n<br />\n<p>Спецификации:</p>\n<ul><li>850 / 900 / 1800 / 1900 МГц GSM &amp; EDGE Band</li><li>GPRS Network&amp;Data: 850 / 900 / 1800 / 1900</li><li>EDGE Network&amp;Data: 850 / 900 / 1800 / 1900</li><li>фирменная</li><li>Интернет браузерr ( NetFront 4.2)</li><li>JAVA™ SUN CLDC HotSpot Implementation 1.1 (MIDP 2.0) Platform</li><li>SAR 0,45 Вт./кг.</li></ul>\n\n<a href="http://www.samsung.com/ru/consumer/mobile-devices/mobile-phones/hhp-gsm/GT-E2600ZKASER">http://www.samsung.com/ru/consumer/mobile-devices/mobile-phones/hhp-gsm/GT-E2600ZKASER</a>', 5000, '3.png', 1),
(2, 3, 'S5570 Galaxy mini', 'Платформа\n850/900/1800/1900 МГц\nДиапазон 900/2100 МГц\nAndroid 2.2 OS\nИнтернет браузер (Android Browser)\nФизические характеристики\nВес трубки 106,6 г.\nРазмеры трубки: 110,4 x 60,6 x 12,1 мм', 7000, '2.png', 1),
(4, 3, 'E2530 La Fleur', '                        <ul><li>850/900/1800/1900 МГц</li><li>GPRS класс 12</li><li>EDGE Class12(только RX)</li><li>Proprietary (MMP) OS</li><li>Интернет браузер</li><li>MIDP 2,1 / CLDC 1.1</li></ul>\n\n<ul><li>Вес трубки 86 г.</li><li>Размеры трубки: 94.4 x 47.2 x 17.4 мм</li></ul>\n\n<ul><li>Стандартная батарея: до 800 мАч</li><li>До 680 мин. в режиме разговора</li></ul>\n\n<a href="http://www.samsung.com/ru/consumer/mobile-devices/mobile-phones/hhp-gsm/GT-E2530SRFSER">\nhttp://www.samsung.com/ru/consumer/mobile-devices/mobile-phones/hhp-gsm/GT-E2530SRFSER</a>\n                    ', 6000, '4.png', 1),
(5, 3, 'S3350 Chat 335', '<p>Samsung Ch@t 335 — самый тонкий QWERTY-телефон на современном рынке, чья толщина составляет всего 11,9&nbsp;мм. Обтекаемый корпус с хромированным покрытием придает модели изысканный классический вид. 2,4-дюймовый LQVGA дисплей идеально подходит для просмотра снимков и чтения длинных сообщений.</p>\n<br />\n<p>Благодаря новой, улучшенной QWERTY-клавиатуре набор текста становится еще более быстрым и удобным, как при печати на ПК. Есть возможность настраивать горячие клавиши для часто используемых приложений (например, A для будильника и т.п.).</p>\n\n<a href="http://www.samsung.com/ru/consumer/mobile-devices/mobile-phones/hhp-gsm/GT-S3350HKASER">http://www.samsung.com/ru/consumer/mobile-devices/mobile-phones/hhp-gsm/GT-S3350HKASER</a>', 10000, '5.png', 1),
(6, 3, 'S5380 La Fleur Wave Y', '                              Стандарты сети 850/900/1800/1900MHz GSM&EDGE Band\nСтандарты сети: 900/2100МГц 3G\nПоддерживаемые 3G: GPRS Network&Data :850/900/1800/1900 (Slave)\nEDGE Network&Data: стандарты сетей: 850/900/1800/1900 (Master)\nNetwork&Data (3G): HSDPA 7,2Мбит/с.\nBada 2.0\nБраузер Dolfin Browser 3.0\nПлатформа SUN CLDC 1.1\nЗначение SAR: 0,797мВт./г.\n\n                         ', 12000, '6.png', 1),
(7, 3, 'I9001 Galaxy S Plus', 'Платформа\n850 / 900 / 1800 / 1900 МГц\nGPRS Class12\nEDGE Class12\nИнтернет браузер (Android Browser)\nДисплей\nРазрешение дисплея 480 x 800 WVGA\n<br />\n<br />\n<a href="http://www.samsung.com/ru/consumer/mobile-devices/mobile-phones/hhp-smart/GT-I9001HKDSER">http://www.samsung.com/ru/consumer/mobile-devices/mobile-phones/hhp-smart/GT-I9001HKDSER</a>', 11000, '7.png', 1),
(8, 3, 'I8350 Omnia W', 'Windows Phone 7.5 Mango\nGSM&EDGE 850 / 900 / 1,800 / 1,900 МГц\n3G 900 / 2,100 MГц\nGPRS: Класс 12\nEDGE: Класс 12\nHSDPA 14.4 / HSUPA 5.76 Мбит/с\nInternet Explorer 9\n', 15000, '8.png', 1),
(11, 4, 'iPhone 3GS', '                              Широкоформатный дисплей Multi-Touch с диагональю 3,5 дюйма\nРазрешение 480 x 320 пикселей (163 пикселя/дюйм)\nОлеофобное покрытие, препятствующее появлению отпечатков пальцев\nПоддержка одновременного отображения нескольких языков и наборов символов\n<br /><br />\n<a href="http://www.apple.com/ru/iphone/iphone-3gs/specs.html">http://www.apple.com/ru/iphone/iphone-3gs/specs.html</a>\n                         ', 20000, '11.PNG', 1),
(12, 4, 'iPhone 4S', '                                                Поддержка международных сетей\nUMTS/HSDPA/HSUPA (850, 900, 1900, 2100 МГц); \nGSM/EDGE (850, 900, 1800, 1900 МГц)\nCDMA EV-DO Rev. A (800, 1900 МГц)3\n802.11b/g/n Wi-Fi (802.11n только 2,4 ГГц)\nБеспроводная технология Bluetooth 4.0\n<br /><br />\n<a href="http://www.apple.com/ru/iphone/specs.html">http://www.apple.com/ru/iphone/specs.html</a>\n                    \n                    ', 25000, '12.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `purchase`
--

INSERT INTO `purchase` (`id`, `order_id`, `product_id`, `price`, `amount`) VALUES
(1, 7, 12, 25000, 3),
(2, 13, 1, 3000, 1),
(3, 14, 5, 10000, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `pwd`, `name`, `phone`, `adress`) VALUES
(1, '{$email}', '{$pwdMD5}', '{$name}', '{$phone}', '{$adress}'),
(2, '123', '202cb962ac59075b964b07152d234b70', '', '', ''),
(3, '123123', '4297f44b13955235245b2497399d7a93', '', '', ''),
(4, '222', '202cb962ac59075b964b07152d234b70', '', '', ''),
(5, '1234', '202cb962ac59075b964b07152d234b70', '', '', ''),
(6, '1232', '202cb962ac59075b964b07152d234b70', '', '', ''),
(7, '1231', '202cb962ac59075b964b07152d234b70', '', '', ''),
(8, 'weqw', '202cb962ac59075b964b07152d234b70', '', '', ''),
(9, '12333', '202cb962ac59075b964b07152d234b70', '', '', ''),
(10, '12333333', '202cb962ac59075b964b07152d234b70', '', '', ''),
(11, '111', '698d51a19d8a121ce581499d7b701668', '', '', ''),
(12, '2222', 'bcbe3365e6ac95ea2c0343a2395834dd', '', '', ''),
(13, '1212', 'a01610228fe998f515a72dd730294d87', '', '', ''),
(14, '11122', '202cb962ac59075b964b07152d234b70', '', '', ''),
(15, '11221', '202cb962ac59075b964b07152d234b70', '', '', ''),
(16, '12345', '4297f44b13955235245b2497399d7a93', 'Арт', '88888888888', 'Адрес'),
(17, 'qqq', 'f1c1592588411002af340cbaedd6fc33', '222', '222', '222');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
