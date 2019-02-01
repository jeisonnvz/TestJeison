-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2019 a las 17:53:21
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_lumen`
--
CREATE DATABASE IF NOT EXISTS `api_lumen` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `api_lumen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2019_01_29_191124_create_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `status`, `email`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(2, 'liuviney', 'Hernandez', 'Liuvy', 'INACTIVE', 'hliuviney@gmail.com', '$2y$10$EkGj3cu9CEFPtsh1BuuaOujcsxO.34RumGSOlSAxPpAq46OXUkAW.', NULL, 'poUQYya7LIKYK9MCiS8x7TLLNA89erRBW5MYhdfyG1zJN803thMHBSTkd5KR', '2019-01-29 21:47:52', '2019-01-29 21:47:52'),
(4, 'jean', 'trujullo', 'j13c', 'INACTIVE', 'j13c@gmail.com', '$2y$10$tCb8mbvo9wXVGPdjMwiI4.Lz1BkJ9QvlkU1x.VUQKiWD5D0G6S8LS', NULL, 'gYRNEjLvgLcAZCG6FUi6NW1dmfsZCx7ID2hpjOPMPz1yoMlz1CSoqWzNDZA2', '2019-01-30 04:34:54', '2019-01-30 04:34:54'),
(5, 'jeiker', 'narvaez', 'beentzjeiker', 'INACTIVE', 'jei@gmail.com', '$2y$10$Igumv5wSVu07nl9rUFP5JukVt/7e5VVhrxN0vPIRNOHFuVis6OEzC', NULL, 'np3ysgxosiia1IZRJEmAZ3hLdYYc9ZerIbwQG4k4b5GuUF66a7QUB6YI0hAi', '2019-01-30 04:35:19', '2019-01-30 04:35:19'),
(7, 'jeison', 'narva2ez', 'bee2ntzjeiker', 'INACTIVE', 'je2i@gmail.com', '$2y$10$cSKGJb2qV7WRUPqnDhnUu.nAqeeBtsVDfOYVdzQMDcJXXzobkpKgK', NULL, 'eOrBVFShLk4OSA2rOIRUY4JVyCeuVABHEeMYez9AtkeAs6G4s3kYk029TU23', '2019-01-30 04:36:01', '2019-01-30 04:36:01'),
(8, 'yoly', 'peralta', 'yolanda22', 'INACTIVE', 'yolyperalta@gmail.com', '$2y$10$H/uBPaP4Hs03ofp0hkn3DeFS36SDFRdffmHDYYtVeAMNfFdgSRnni', NULL, 'KvrKNWr2Pzvp7gB0RRMvDXVQ7UQZIfz5RXIZh4Mmjg0oQrZ0SX2ABbsAB23D', '2019-01-30 13:17:39', '2019-01-30 13:17:39'),
(9, 'williams', 'arellano', 'will', 'INACTIVE', '222@gmail.com', '$2y$10$vMlwLE6lV.HI5lu09BRQOebUv4eI8PgvNpedRW5.bEGfrAIggwKMW', NULL, 'V7yCvA2Y9EkoBd5Cxekv9tDZd2ntBV7T9xjOhyvIZFmf0myUQDSIwakymkiC', '2019-01-30 14:06:02', '2019-01-30 14:06:02'),
(10, 'jeison', 'narvaez', 'jeisonnvz18@gmail.com', 'INACTIVE', 'jeisonnvzjhonnarvaez@gmail.com', '$2y$10$C2OpGVQqMJP4J54iighraevi7y0IruvhChX9R61RhAwj17JkMp7h2', NULL, '0E4ITSFPkSF82tKbAUBWxlLfKGhJnHLzoYs0AL7m7Wj6b1DteQG8769dsnwq', '2019-01-30 14:11:49', '2019-01-30 14:11:49'),
(11, 'ramona', 'romero', 'ramonaface', 'INACTIVE', 'ramo@ocumaredeltuy.com', '$2y$10$431VFjhiwYSGpxDcnexzOudvGHTJhzAiMtIy1TuhnQy5m9m9Z9x7y', NULL, '2OHhORAGWOtpJJg4mjV9rJjc4gsUYaxObfYJO6aAHehhq9ZVHPBCL1eUAak9', '2019-01-30 14:16:46', '2019-01-30 14:16:46'),
(13, 'luis', 'narvaez', 'luis07', 'INACTIVE', 'luiz07@gmal.com', '$2y$10$0keTsN2eZVjJZqMi7rkuhOBCroW/5U5mKQgI2JZ3AdveLfTafWA9u', NULL, 'dihc65zwr4tUvG7jjKa14dEZvbLvJ5RsxOU84k3whd3mAWbvIzkt1qCNL9im', '2019-01-30 14:45:51', '2019-01-30 14:45:51'),
(14, 'maria', 'romero', 'aver', 'INACTIVE', 'mari@xn--gmai-jqa.com', '$2y$10$mSBdiVHwai3607WvFvEFLuToA6KGXgwIJjhs5F.dns7/UdJRn.D/2', NULL, 'JRO8hUqFeTqUFPyEyphK5b3enc82BuOm177eDEvww9DYQFVwAJwH00dH4ohc', '2019-01-30 14:47:37', '2019-01-30 14:47:37'),
(15, 'asdas', 'asdasd', '12ada', 'INACTIVE', 'wqewqe@gmail.com', '$2y$10$vF/xzyjkFMiVgeucRzq/7.3ogc0comI5Jjn1HdqrdEiSsY.6gguDq', NULL, 'uNLLTRnDgjwJjivCYPSDyrX1MxTPSsYGkOQnXHAamVG1tsEogyrf6LL0Py57', '2019-01-30 14:51:54', '2019-01-30 14:51:54'),
(16, 'asdasd', 'asdasd', '2ads', 'INACTIVE', 'asdasdasdas@gmail.com', '$2y$10$db7n/sLTt0HR8EhLjfYSXueMMRfbSpz0dW8TNBUPFGSNmOzMI7OZy', NULL, '67mO3wQBxawpVpjSTUIKKENPMdu4zUNa3u7rmyux8ExPjbPOf1lj06Lbelpm', '2019-01-30 14:52:24', '2019-01-30 14:52:24'),
(17, 'asd2', 'asdasd2', 'asd22', 'INACTIVE', 'rakio2njj@hotmail.com', '$2y$10$J0nfbhpANc494Sd012nZ2./UBCjRQb2F./nubd.6GH.DfrGY47Nvm', NULL, 'oCZl19qXyagWmaX1wtAwdzXEb2ztKnao7jUV7Vag20Kxtx4aiU9kd8jYyKb4', '2019-01-30 14:56:32', '2019-01-30 14:56:32'),
(18, 'asd2', 'romero2', 'sss', 'INACTIVE', 'VANM2403@GMAIL.COM2', '$2y$10$.mIbpaIPLgKE0vJdRs1IkePgVmKQkIiOJb/YKGf.niUIcD..u8CpC', NULL, 'iOK4vTRR8eJidR76vfFpOn4AltNj4MVAfM3ZfiFPhrWBWioV2K0EHqJ96Zes', '2019-01-30 14:59:51', '2019-01-30 14:59:51'),
(19, 'jeison2', 'narvaez3', 'beentz22', 'INACTIVE', 'VANM24033@GMAIL.COM', '$2y$10$coSGjJYq.kSPqfeTgYYLaucZcerj/rSZKJgasRk5Fy/H1JqBYF/3e', NULL, 'Jzbi9V4UWroGH5V0KFb0aGgy8yGdd7uaA4SfUw02dj0LG1YEECyRegMpuFvZ', '2019-01-30 15:04:11', '2019-01-30 15:04:11'),
(21, 'jeisonb', 'narvaez22', 'jeisonjhonnarvae2z@gmail.com', 'INACTIVE', 'VANM240223@GMAIL.COM', '$2y$10$PTuYCGzHvDx3QWs4gDP3GOZc/QZiFTlxCiblCFSmHBbS6Y94Lpnq2', NULL, 'LJlvScKZKdOhVd3Fz2TTkw3VrPkpJPIzoIgN86SOt6FY5J4dT67MVtcGsIDt', '2019-01-30 15:07:43', '2019-01-30 15:07:43'),
(24, 'asd', 'romero', 'dd', 'INACTIVE', 'rakionjj@hotmail.com222', '$2y$10$kMobNiUlJ8nTHnpGjO86bu8okKYMT0DHLBMaiPE6xpd3aZHBcdrFm', NULL, 'IfjCZV44RwA50rNy5z88DQ3hmI9H5pGCStFzLFmoNYGIo1CU3fIIpd3Ri0eh', '2019-01-30 15:08:59', '2019-01-30 15:08:59'),
(25, 'asd', 'narvaez', 'wwww', 'INACTIVE', 'rakionwwjj@hotmail.com', '$2y$10$j6F32hTvzZ3XzH7pjBrILunx3wOim2Nws2KP54.H6SeyLlLNB.b4u', NULL, 'fP6t0zT9pQE3HNk9KU6avwzw7xdmQx4AOAcuPnVb6JmwFRbFGrOIYdxe9PTQ', '2019-01-30 15:09:31', '2019-01-30 15:09:31'),
(26, 'asd22', 'asdasd2', '222', 'INACTIVE', 'jeisonnvz1338@gmail.com', '$2y$10$9Mi0ldSrQ7LVN/IXxKaIDOoEYyn7X3cdfCq1Hw6NJcAlhUvkcR/jO', NULL, '7Ai9gDa8kEsArFhNddHnCKzvwaZb5d57JLAvYpcVjRvsL9vJ656jDdG3VrMY', '2019-01-30 16:16:07', '2019-01-30 16:16:07'),
(28, 'jeison', 'asdasdddd', 'beentz11111', 'INACTIVE', 'rakionjj1111@hotmail.com', '$2y$10$ZJci.kv/3xTy5tTTULrJQ.uSlw4YUh88e9Rb.s5sT4dFn6fsW3XT.', NULL, 'dBagYp0v4v3Pos6iycSJi7n6zlOfys9AfFvsU5OlDu1fgRn6RAHv0i2BaP7x', '2019-01-30 16:22:25', '2019-01-30 16:22:25'),
(41, 'jeison2', 'narvaez222222', 'jeisonnvz2222', 'INACTIVE', 'jeisonnvz18@gmail.com', '$2y$10$0NEK989kOiCcXG1jSQyciOHdJe6TYzUvWXiAJ/N4qKCrNPw2ub4Ye', NULL, 'ybXKaZZiXHibJXfWZDqBlysw6jT8rFcWKXFLMnaQ7CU9rNbl0tvSIeh5LeIW', '2019-01-30 16:25:42', '2019-01-30 16:25:42'),
(42, 'asd', 'asdasd', 'beentz2223', 'INACTIVE', 'rakion2jj@hotmail.com', '$2y$10$fyAJR1SZnp6jLq.GTmLSxuR7SHRHRHEIYoIZEmQBvNkMOwaR3WvQa', NULL, 'kMqr2IMoeSe5FgGEj3zbES98yJYFg1zA4JX9p63LEsqeIUbwX1VMIsF5EGsQ', '2019-01-30 16:26:27', '2019-01-30 16:26:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
