-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-06-2022 a las 15:22:52
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(15) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `createdAt`, `updatedAt`) VALUES
(1, 'juan', 'dominguez', '2022-06-23', '2022-06-23'),
(3, 'tomas', 'benitez', '2022-06-24', '2022-06-24'),
(11, 'tomas', 'Infobae es un diario digital de actualidad y economía de Argentina, creado en el \r\n2002 por el empresario Daniel Hadad. El medio fue distinguido por la \r\nFundación Konex como el más destacado emprendimiento digital de la \r\núltima década en la Argentina.​​', '2022-06-24', '2022-06-24'),
(14, '123456789012345', 'El economista y diputado nacional, Javier Milei, se refirió a la interna de La Libertad Avanza, que se viene profundizando en las últimas semanas a partir de las críticas públicas del abogado y militante liberal, Carlos Maslatón, hacia Karina Milei y Carlos Kikuchi', '2022-06-25', '2022-06-25'),
(15, '123456789012345', 'Durante ese lapso efímero, apenas un mes, Milei consiguió el sello del Partido Demócrata como soporte institucional para su campaña presidencial, inició recorridas por el conurbano, generó una hecatombe al manifestarse a favor de la libre portación de armas y de la venta de órganos, y, como colofón, hizo su primer acto en un estadio de fútbol.\n\n\nDurante la última semana, además, el economista realizó su primera gira internacional como candidato a presidente, en la que compartió actos con dirigentes políticos de la derecha en América Latina. Visitó Brasil y Colombia, donde estuvo junto a Eduardo Bolsonaro, hijo del presidente brasilero, y Antonio Kast, ex candidato a la presidencia de Chile. En tanto que en Colombia dio una clase de economía y respaldó a Rodolfo Hernández, el candidato que el domingo perdió la elección presidencial de ese país ante Gustavo Petro. La frutilla del postre fue la alusión que le hizo ayer en Avellaneda la vicepresidenta Cristina Kirchner. \n\n', '2022-06-25', '2022-06-25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
