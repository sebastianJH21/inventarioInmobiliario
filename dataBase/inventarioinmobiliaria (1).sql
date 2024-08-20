-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2024 at 12:22 AM
-- Server version: 8.0.36
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventarioinmobiliaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesorios`
--

CREATE TABLE `accesorios` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `jabonera` int DEFAULT NULL,
  `gancho` int DEFAULT NULL,
  `cepillero` int DEFAULT NULL,
  `toallero` int DEFAULT NULL,
  `papelera` int DEFAULT NULL,
  `cilindro` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accesorios`
--

INSERT INTO `accesorios` (`id`, `id_inventario`, `id_zona`, `jabonera`, `gancho`, `cepillero`, `toallero`, `papelera`, `cilindro`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 1, 1, 0, 1, 1, 1, 5, 5, ''),
(2, 2, 4, 1, 1, 1, 1, 1, 1, 4, 4, ''),
(3, 2, 4, 0, 0, 0, 0, 0, 0, 1, 1, 'prueba accesorios'),
(4, 2, 4, 0, 0, 0, 0, 0, 0, 4, 4, ''),
(5, 2, 4, 1, 0, 0, 1, 1, 1, 3, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `balcon`
--

CREATE TABLE `balcon` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `balcon`
--

INSERT INTO `balcon` (`id`, `id_inventario`, `id_zona`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(2, 1, 1, 5, 5, 'Con reja y piso en baldosa');

-- --------------------------------------------------------

--
-- Table structure for table `barra`
--

CREATE TABLE `barra` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barra`
--

INSERT INTO `barra` (`id`, `id_inventario`, `id_zona`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 3, 4, 4, 'Barra en madera'),
(2, 2, 3, 4, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `cabina`
--

CREATE TABLE `cabina` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `tipo` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabina`
--

INSERT INTO `cabina` (`id`, `id_inventario`, `id_zona`, `tipo`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 1, 4, 4, 'se pega un poco el moverla'),
(2, 2, 4, 3, 5, 5, ''),
(3, 2, 4, 2, 3, 4, ''),
(4, 2, 4, 3, 4, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `caja_breaker`
--

CREATE TABLE `caja_breaker` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caja_breaker`
--

INSERT INTO `caja_breaker` (`id`, `id_inventario`, `id_zona`, `cantidad`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(8, 1, 1, 6, 5, 5, 'Caja plastica blanca'),
(9, 2, 1, 1, 1, 1, 'prueba1');

-- --------------------------------------------------------

--
-- Table structure for table `cajones_closet`
--

CREATE TABLE `cajones_closet` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `cerraduras` int DEFAULT NULL,
  `llaves` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cajones_closet`
--

INSERT INTO `cajones_closet` (`id`, `id_inventario`, `id_zona`, `cantidad`, `cerraduras`, `llaves`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 5, 1, 0, 0, 5, 5, ''),
(2, 1, 5, 2, 1, 1, 3, 3, ''),
(3, 2, 5, 4, 4, 5, 4, 4, ''),
(4, 2, 5, 3, 1, 1, 5, 4, ''),
(5, 2, 5, 3, 3, 3, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `campana_extractora`
--

CREATE TABLE `campana_extractora` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `marca` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campana_extractora`
--

INSERT INTO `campana_extractora` (`id`, `id_inventario`, `id_zona`, `marca`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 3, 'hacer', 5, 5, 'engrasada con vidrio'),
(2, 2, 3, 'hacer', 5, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `ducha`
--

CREATE TABLE `ducha` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `tipo` int DEFAULT NULL,
  `llave_agua` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ducha`
--

INSERT INTO `ducha` (`id`, `id_inventario`, `id_zona`, `tipo`, `llave_agua`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(2, 1, 4, 2, 1, 5, 5, 'con ducha plana grande'),
(3, 2, 4, 1, 1, 4, 4, ''),
(4, 2, 4, 2, 2, 4, 4, ''),
(5, 2, 4, 1, 2, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `entre_panos`
--

CREATE TABLE `entre_panos` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `zapatero` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entre_panos`
--

INSERT INTO `entre_panos` (`id`, `id_inventario`, `id_zona`, `cantidad`, `zapatero`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 5, 5, 1, 5, 5, ''),
(2, 1, 5, 4, 0, 3, 3, ''),
(4, 2, 5, 6, 0, 4, 5, ''),
(5, 2, 5, 4, 0, 3, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `escaleras`
--

CREATE TABLE `escaleras` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `reja` int DEFAULT NULL,
  `pasa_manos` int DEFAULT NULL,
  `chapa` int DEFAULT NULL,
  `llaves` int DEFAULT NULL,
  `ojo_magico` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `escaleras`
--

INSERT INTO `escaleras` (`id`, `id_inventario`, `id_zona`, `reja`, `pasa_manos`, `chapa`, `llaves`, `ojo_magico`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(13, 1, 1, 1, 0, 0, 1, 1, 4, 5, 'Enchapadas');

-- --------------------------------------------------------

--
-- Table structure for table `espejos`
--

CREATE TABLE `espejos` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `espejos`
--

INSERT INTO `espejos` (`id`, `id_inventario`, `id_zona`, `cantidad`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 1, 5, 5, 'con marco de madera'),
(2, 2, 4, 1, 3, 4, ''),
(3, 2, 4, 5, 4, 5, ''),
(4, 2, 4, 5, 3, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `fogon`
--

CREATE TABLE `fogon` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `tipo` int NOT NULL,
  `cubierta` int DEFAULT NULL,
  `perillas` int DEFAULT NULL,
  `encendido_electrico` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fogon`
--

INSERT INTO `fogon` (`id`, `id_inventario`, `id_zona`, `tipo`, `cubierta`, `perillas`, `encendido_electrico`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 3, 1, 0, 4, 1, 5, 5, ''),
(2, 2, 3, 1, 1, 2, 1, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `gabinete_auxiliar`
--

CREATE TABLE `gabinete_auxiliar` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `puertas` int DEFAULT NULL,
  `manijas` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gabinete_auxiliar`
--

INSERT INTO `gabinete_auxiliar` (`id`, `id_inventario`, `id_zona`, `puertas`, `manijas`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 3, 7, 7, 5, 5, 'color negro en melamina');

-- --------------------------------------------------------

--
-- Table structure for table `gabinete_inferior`
--

CREATE TABLE `gabinete_inferior` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `puertas` int DEFAULT NULL,
  `manijas` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gabinete_inferior`
--

INSERT INTO `gabinete_inferior` (`id`, `id_inventario`, `id_zona`, `puertas`, `manijas`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 3, 7, 7, 5, 5, 'color negro en melamina'),
(2, 2, 3, 4, 4, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `gabinete_superior`
--

CREATE TABLE `gabinete_superior` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `puertas` int DEFAULT NULL,
  `manijas` int DEFAULT NULL,
  `vidrios` int DEFAULT NULL,
  `locero` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gabinete_superior`
--

INSERT INTO `gabinete_superior` (`id`, `id_inventario`, `id_zona`, `puertas`, `manijas`, `vidrios`, `locero`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 3, 4, 0, 2, 1, 5, 5, 'color beige, con brazos neumaticos'),
(2, 2, 3, 1, 1, 1, 1, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int NOT NULL,
  `codigo_propiedad` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_inventario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `codigo_propiedad`, `fecha_inventario`) VALUES
(1, 'aa1', '2024-06-20'),
(2, 'aa2', '2024-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `inventario_zona`
--

CREATE TABLE `inventario_zona` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventario_zona`
--

INSERT INTO `inventario_zona` (`id`, `id_inventario`, `id_zona`) VALUES
(57, 1, 1),
(58, 1, 2),
(59, 1, 3),
(60, 1, 4),
(61, 1, 5),
(62, 1, 5),
(63, 1, 6),
(64, 2, 1),
(65, 2, 2),
(66, 2, 3),
(68, 2, 4),
(69, 2, 4),
(70, 2, 5),
(71, 2, 5),
(72, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lamparas_led`
--

CREATE TABLE `lamparas_led` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lavadero`
--

CREATE TABLE `lavadero` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `tipo` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `tapon` int DEFAULT NULL,
  `canilla` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lavadero`
--

INSERT INTO `lavadero` (`id`, `id_inventario`, `id_zona`, `tipo`, `tapon`, `canilla`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 6, 'en baldosa', 1, 1, 5, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `lavadora`
--

CREATE TABLE `lavadora` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `desague` int DEFAULT NULL,
  `canilla` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lavadora`
--

INSERT INTO `lavadora` (`id`, `id_inventario`, `id_zona`, `desague`, `canilla`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 6, 1, 1, 5, 5, 'desague sin tapa');

-- --------------------------------------------------------

--
-- Table structure for table `lava_manos`
--

CREATE TABLE `lava_manos` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `color` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `pedestal` int DEFAULT NULL,
  `mueble_madera` int DEFAULT NULL,
  `llave_agua` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lava_manos`
--

INSERT INTO `lava_manos` (`id`, `id_inventario`, `id_zona`, `color`, `pedestal`, `mueble_madera`, `llave_agua`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 'blanco', 1, 0, 2, 4, 4, 'tiene una fisura'),
(2, 2, 4, 'blanco', 1, 1, 2, 4, 4, ''),
(3, 2, 4, 'azul', 0, 0, 1, 3, 4, ''),
(4, 2, 4, 'rojo', 0, 0, 2, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `lava_platos`
--

CREATE TABLE `lava_platos` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `rejilla` int DEFAULT NULL,
  `llave_agua` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lava_platos`
--

INSERT INTO `lava_platos` (`id`, `id_inventario`, `id_zona`, `rejilla`, `llave_agua`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 3, 1, 1, 5, 5, 'En aluminio'),
(2, 2, 3, 1, 1, 3, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `meson`
--

CREATE TABLE `meson` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `tipo` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meson`
--

INSERT INTO `meson` (`id`, `id_inventario`, `id_zona`, `tipo`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 3, 2, 4, 4, 'baldosa color beige'),
(2, 2, 3, 3, 3, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `ojos_buey`
--

CREATE TABLE `ojos_buey` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paredes`
--

CREATE TABLE `paredes` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `color` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paredes`
--

INSERT INTO `paredes` (`id`, `id_inventario`, `id_zona`, `color`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(3, 1, 1, 'Blancas', 4, 5, 'Sin perforaciones');

-- --------------------------------------------------------

--
-- Table structure for table `paredes_bano`
--

CREATE TABLE `paredes_bano` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `enchapados` int DEFAULT NULL,
  `perforaciones` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paredes_bano`
--

INSERT INTO `paredes_bano` (`id`, `id_inventario`, `id_zona`, `enchapados`, `perforaciones`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 1, 1, 5, 5, 'sin observaciones'),
(2, 2, 4, 1, 1, 4, 4, ''),
(3, 2, 4, 1, 3, 4, 4, ''),
(4, 2, 4, 0, 2, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `piso`
--

CREATE TABLE `piso` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `tipo` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `rejilla` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `piso`
--

INSERT INTO `piso` (`id`, `id_inventario`, `id_zona`, `tipo`, `rejilla`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 'en baldosa', 1, 4, 5, 'sin fugas'),
(2, 1, 6, 'baldosa', 1, 5, 5, ''),
(3, 2, 4, 'baldosa', 1, 4, 4, ''),
(4, 2, 4, 'azul', 1, 3, 4, ''),
(5, 2, 4, 'baldosa', 0, 3, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `plafones`
--

CREATE TABLE `plafones` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plafones`
--

INSERT INTO `plafones` (`id`, `id_inventario`, `id_zona`, `cantidad`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 1, 3, 4, 'Buen estado');

-- --------------------------------------------------------

--
-- Table structure for table `propiedades`
--

CREATE TABLE `propiedades` (
  `id` int NOT NULL,
  `codigo_propiedad` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `propiedades`
--

INSERT INTO `propiedades` (`id`, `codigo_propiedad`) VALUES
(1, 'aa1'),
(2, 'aa2'),
(3, 'aa3'),
(4, 'aa4'),
(5, 'aa5');

-- --------------------------------------------------------

--
-- Table structure for table `puertas`
--

CREATE TABLE `puertas` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `chapa` int DEFAULT NULL,
  `llaves` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `puertas`
--

INSERT INTO `puertas` (`id`, `id_inventario`, `id_zona`, `chapa`, `llaves`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(14, 1, 4, 1, 1, 4, 4, ''),
(16, 1, 5, 1, 0, 3, 3, ''),
(17, 1, 6, 1, 1, 5, 5, ''),
(18, 2, 4, 1, 1, 4, 4, ''),
(19, 2, 4, 1, 1, 4, 4, ''),
(20, 2, 4, 1, 3, 3, 4, ''),
(21, 2, 5, 1, 4, 4, 4, ''),
(22, 2, 5, 1, 5, 5, 5, ''),
(23, 2, 5, 1, 3, 3, 3, ''),
(24, 1, 5, 1, 2, 3, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `puertas_closet`
--

CREATE TABLE `puertas_closet` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `jaladeras` int DEFAULT NULL,
  `cerraduras` int DEFAULT NULL,
  `llaves` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `puertas_closet`
--

INSERT INTO `puertas_closet` (`id`, `id_inventario`, `id_zona`, `cantidad`, `jaladeras`, `cerraduras`, `llaves`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(2, 1, 5, 2, 2, 0, 0, 5, 5, 'color oscuro'),
(3, 1, 5, 2, 0, 0, 0, 3, 3, ''),
(4, 2, 5, 3, 3, 3, 6, 2, 3, ''),
(5, 2, 5, 5, 3, 3, 1, 3, 4, ''),
(6, 2, 5, 4, 2, 2, 3, 3, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `puerta_principal`
--

CREATE TABLE `puerta_principal` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `reja` int DEFAULT NULL,
  `timbre` int DEFAULT NULL,
  `citofono` int DEFAULT NULL,
  `chapa` int DEFAULT NULL,
  `llaves` int DEFAULT NULL,
  `ojo_magico` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `puerta_principal`
--

INSERT INTO `puerta_principal` (`id`, `id_inventario`, `id_zona`, `reja`, `timbre`, `citofono`, `chapa`, `llaves`, `ojo_magico`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(2, 1, 1, 1, 0, 0, 1, 2, 1, 4, 5, 'de madera');

-- --------------------------------------------------------

--
-- Table structure for table `reja`
--

CREATE TABLE `reja` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repisas`
--

CREATE TABLE `repisas` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repisas`
--

INSERT INTO `repisas` (`id`, `id_inventario`, `id_zona`, `cantidad`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 1, 4, 5, 'en melamina colr blanco'),
(2, 2, 4, 1, 4, 4, ''),
(3, 2, 4, 2, 4, 4, ''),
(4, 2, 4, 2, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `rosetas`
--

CREATE TABLE `rosetas` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanitario`
--

CREATE TABLE `sanitario` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `color` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `mueble` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanitario`
--

INSERT INTO `sanitario` (`id`, `id_inventario`, `id_zona`, `color`, `mueble`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(1, 1, 4, 'blanco', 1, 5, 5, 'vacea sin problema'),
(2, 2, 4, 'blanco', 1, 4, 4, ''),
(3, 2, 4, 'azul', 1, 4, 5, ''),
(4, 2, 4, 'rojo', 0, 3, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `suelo`
--

CREATE TABLE `suelo` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `tipo` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `zocalo` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suelo`
--

INSERT INTO `suelo` (`id`, `id_inventario`, `id_zona`, `tipo`, `zocalo`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(22, 1, 1, 'baldosa', 'madera', 5, 5, 'macha en la sala');

-- --------------------------------------------------------

--
-- Table structure for table `switches`
--

CREATE TABLE `switches` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `switches`
--

INSERT INTO `switches` (`id`, `id_inventario`, `id_zona`, `cantidad`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(3, 1, 2, 3, 5, 5, 'sin novedades'),
(4, 1, 3, 2, 4, 4, 'sin observaciones'),
(5, 1, 4, 1, 5, 5, ''),
(6, 1, 5, 2, 4, 4, ''),
(7, 1, 5, 1, 3, 3, ''),
(8, 1, 6, 2, 5, 5, ''),
(9, 2, 2, 2, 4, 4, ''),
(10, 2, 3, 1, 4, 4, ''),
(11, 2, 4, 1, 4, 4, ''),
(12, 2, 4, 2, 4, 4, ''),
(13, 2, 4, 3, 4, 3, ''),
(14, 2, 5, 3, 3, 4, ''),
(15, 2, 5, 3, 3, 4, ''),
(16, 2, 5, 4, 3, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `techo`
--

CREATE TABLE `techo` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `techo`
--

INSERT INTO `techo` (`id`, `id_inventario`, `id_zona`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(3, 1, 1, 4, 4, 'blanco, sin rallones');

-- --------------------------------------------------------

--
-- Table structure for table `tejas_transparentes`
--

CREATE TABLE `tejas_transparentes` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `obsevaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telefono`
--

CREATE TABLE `telefono` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `telefono`
--

INSERT INTO `telefono` (`id`, `id_inventario`, `id_zona`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(5, 2, 2, 5, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `televisor`
--

CREATE TABLE `televisor` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `televisor`
--

INSERT INTO `televisor` (`id`, `id_inventario`, `id_zona`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(2, 2, 2, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `tendedero`
--

CREATE TABLE `tendedero` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tendedero`
--

INSERT INTO `tendedero` (`id`, `id_inventario`, `id_zona`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(0, 1, 6, 5, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `tomas_electricos`
--

CREATE TABLE `tomas_electricos` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tomas_electricos`
--

INSERT INTO `tomas_electricos` (`id`, `id_inventario`, `id_zona`, `cantidad`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(16, 1, 2, 5, 4, 4, '1 toma sin tapa'),
(17, 1, 3, 5, 5, 5, '1 toma para salpicaduras'),
(18, 1, 4, 1, 5, 5, 'tomas para salicaduras'),
(19, 1, 5, 2, 5, 5, ''),
(20, 1, 5, 2, 3, 3, '1 toma sin tapa'),
(21, 1, 6, 2, 5, 5, ''),
(22, 2, 2, 2, 4, 4, ''),
(23, 2, 3, 2, 4, 4, ''),
(24, 2, 4, 2, 4, 5, ''),
(25, 2, 4, 3, 4, 4, ''),
(26, 2, 4, 3, 3, 4, ''),
(27, 2, 5, 4, 3, 3, ''),
(28, 2, 5, 2, 3, 3, ''),
(29, 2, 5, 3, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `tubos_cortina`
--

CREATE TABLE `tubos_cortina` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `soporte_tubos` int DEFAULT NULL,
  `persianas` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tubos_cortina`
--

INSERT INTO `tubos_cortina` (`id`, `id_inventario`, `id_zona`, `cantidad`, `soporte_tubos`, `persianas`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(3, 1, 2, 1, 2, 0, 5, 5, 'color oscuro'),
(4, 1, 5, 0, 0, 1, 5, 5, ''),
(6, 1, 5, 1, 1, 1, 1, 1, 'sin observaciones'),
(7, 2, 2, 1, 1, 2, 4, 4, ''),
(8, 2, 3, 1, 1, 0, 4, 4, ''),
(9, 2, 5, 2, 3, 3, 4, 3, ''),
(10, 2, 5, 3, 3, 3, 3, 4, ''),
(11, 2, 5, 4, 4, 4, 5, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `ventanas`
--

CREATE TABLE `ventanas` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `cantidad` int NOT NULL,
  `seguro` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ventanas`
--

INSERT INTO `ventanas` (`id`, `id_inventario`, `id_zona`, `cantidad`, `seguro`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(3, 1, 2, 1, 1, 5, 5, 'Ventanal completo'),
(4, 1, 5, 1, 1, 5, 5, ''),
(5, 1, 5, 1, 1, 3, 3, ''),
(6, 1, 6, 0, 0, 5, 5, ''),
(7, 2, 2, 1, 1, 4, 4, ''),
(8, 2, 3, 1, 1, 4, 4, ''),
(9, 2, 4, 1, 1, 4, 4, ''),
(10, 2, 4, 3, 5, 5, 4, ''),
(11, 2, 4, 2, 3, 3, 4, ''),
(12, 2, 5, 3, 3, 4, 4, ''),
(13, 2, 5, 3, 4, 4, 4, ''),
(14, 2, 5, 3, 2, 4, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `vidrios`
--

CREATE TABLE `vidrios` (
  `id` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_zona` int NOT NULL,
  `sanos` int DEFAULT NULL,
  `averiados` int DEFAULT NULL,
  `faltantes` int DEFAULT NULL,
  `estado_inicial` int NOT NULL,
  `estado_final` int NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vidrios`
--

INSERT INTO `vidrios` (`id`, `id_inventario`, `id_zona`, `sanos`, `averiados`, `faltantes`, `estado_inicial`, `estado_final`, `observaciones`) VALUES
(3, 1, 2, 1, 0, 0, 5, 5, 'sucios por fuera'),
(4, 1, 5, 1, 0, 0, 5, 5, ''),
(5, 1, 5, 0, 1, 0, 3, 3, ''),
(6, 1, 6, 1, 0, 0, 5, 5, ''),
(7, 2, 2, 1, 1, 2, 4, 5, ''),
(8, 2, 3, 1, 0, 0, 4, 4, ''),
(9, 2, 4, 1, 0, 0, 5, 5, ''),
(10, 2, 4, 3, 1, 1, 4, 4, ''),
(11, 2, 4, 3, 2, 2, 3, 2, ''),
(12, 2, 5, 4, 3, 3, 4, 4, ''),
(13, 2, 5, 4, 2, 2, 3, 3, ''),
(14, 2, 5, 2, 4, 3, 3, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `zonas`
--

CREATE TABLE `zonas` (
  `id_zona` int NOT NULL,
  `nombre_zona` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zonas`
--

INSERT INTO `zonas` (`id_zona`, `nombre_zona`) VALUES
(1, 'General'),
(2, 'Sala'),
(3, 'Cocina'),
(4, 'Baño'),
(5, 'Alcoba'),
(6, 'Patio');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesorios`
--
ALTER TABLE `accesorios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accesorioBano_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `accesorioBano_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `balcon`
--
ALTER TABLE `balcon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balcon_inventario` (`id_inventario`),
  ADD KEY `balcon_zona` (`id_zona`);

--
-- Indexes for table `barra`
--
ALTER TABLE `barra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barra_inventario` (`id_inventario`),
  ADD KEY `barra_zona` (`id_zona`);

--
-- Indexes for table `cabina`
--
ALTER TABLE `cabina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabinaBano_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `cabinaBano_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `caja_breaker`
--
ALTER TABLE `caja_breaker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cajaBreaker_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `cajaBreaker_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `cajones_closet`
--
ALTER TABLE `cajones_closet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cajonCloset_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `cajonCloset_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `campana_extractora`
--
ALTER TABLE `campana_extractora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campana_inventario` (`id_inventario`),
  ADD KEY `campana_zona` (`id_zona`);

--
-- Indexes for table `ducha`
--
ALTER TABLE `ducha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ducha_inventario` (`id_inventario`),
  ADD KEY `ducha_zona` (`id_zona`);

--
-- Indexes for table `entre_panos`
--
ALTER TABLE `entre_panos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrePanos_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `entrePanos_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `escaleras`
--
ALTER TABLE `escaleras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `escaleras_inventario` (`id_inventario`),
  ADD KEY `escaleras_zona` (`id_zona`);

--
-- Indexes for table `espejos`
--
ALTER TABLE `espejos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `espejo_inventario` (`id_inventario`),
  ADD KEY `espejo_zona` (`id_zona`);

--
-- Indexes for table `fogon`
--
ALTER TABLE `fogon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fogon_inventario` (`id_inventario`),
  ADD KEY `fogon_zona` (`id_zona`);

--
-- Indexes for table `gabinete_auxiliar`
--
ALTER TABLE `gabinete_auxiliar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gabinete_inventario` (`id_inventario`),
  ADD KEY `gabinete_zona` (`id_zona`);

--
-- Indexes for table `gabinete_inferior`
--
ALTER TABLE `gabinete_inferior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gabinete_inventario` (`id_inventario`),
  ADD KEY `gabinete_zona` (`id_zona`);

--
-- Indexes for table `gabinete_superior`
--
ALTER TABLE `gabinete_superior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gabineteSuperior_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `gabineteSuperior_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `codigo_propiedad` (`codigo_propiedad`);

--
-- Indexes for table `inventario_zona`
--
ALTER TABLE `inventario_zona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invtZona_inventario` (`id_inventario`),
  ADD KEY `invtZona_zona` (`id_zona`);

--
-- Indexes for table `lamparas_led`
--
ALTER TABLE `lamparas_led`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lamparaLed_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `lamparaLed_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `lavadero`
--
ALTER TABLE `lavadero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lavadero_inventario` (`id_inventario`),
  ADD KEY `lavadero_zona` (`id_zona`);

--
-- Indexes for table `lavadora`
--
ALTER TABLE `lavadora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lavadora_inventario` (`id_inventario`),
  ADD KEY `lavadora_zona` (`id_zona`);

--
-- Indexes for table `lava_manos`
--
ALTER TABLE `lava_manos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lavaManos_inventario` (`id_inventario`),
  ADD KEY `lavaManos_zona` (`id_zona`);

--
-- Indexes for table `lava_platos`
--
ALTER TABLE `lava_platos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lavaPlatos_inventario` (`id_inventario`),
  ADD KEY `lavaPlatos_zona` (`id_zona`);

--
-- Indexes for table `meson`
--
ALTER TABLE `meson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meson_inventario` (`id_inventario`),
  ADD KEY `meson_zona` (`id_zona`);

--
-- Indexes for table `ojos_buey`
--
ALTER TABLE `ojos_buey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ojosBuey_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `ojosBuey_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `paredes`
--
ALTER TABLE `paredes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paredes_inventario` (`id_inventario`),
  ADD KEY `paredes_zona` (`id_zona`);

--
-- Indexes for table `paredes_bano`
--
ALTER TABLE `paredes_bano`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paredBano_inventario` (`id_inventario`),
  ADD KEY `paredBano_zona` (`id_zona`);

--
-- Indexes for table `piso`
--
ALTER TABLE `piso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sueloBano_inventario` (`id_inventario`),
  ADD KEY `sueloBano_zona` (`id_zona`);

--
-- Indexes for table `plafones`
--
ALTER TABLE `plafones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plafones_inventario` (`id_inventario`) USING BTREE,
  ADD KEY `plafones_zona` (`id_zona`) USING BTREE;

--
-- Indexes for table `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_propiedad` (`codigo_propiedad`);

--
-- Indexes for table `puertas`
--
ALTER TABLE `puertas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puertas_inventario` (`id_inventario`),
  ADD KEY `puertas_zona` (`id_zona`);

--
-- Indexes for table `puertas_closet`
--
ALTER TABLE `puertas_closet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puertasCloset_inventario` (`id_inventario`),
  ADD KEY `puertasCloset_zona` (`id_zona`);

--
-- Indexes for table `puerta_principal`
--
ALTER TABLE `puerta_principal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puertaPrincipal_inventario` (`id_inventario`),
  ADD KEY `puertaPrincipal_zona` (`id_zona`);

--
-- Indexes for table `reja`
--
ALTER TABLE `reja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reja_inventario` (`id_inventario`),
  ADD KEY `reja_zona` (`id_zona`);

--
-- Indexes for table `repisas`
--
ALTER TABLE `repisas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `repisas_inventario` (`id_inventario`),
  ADD KEY `repisas_zona` (`id_zona`);

--
-- Indexes for table `rosetas`
--
ALTER TABLE `rosetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rosetas_inventario` (`id_inventario`),
  ADD KEY `rosetas_zona` (`id_zona`);

--
-- Indexes for table `sanitario`
--
ALTER TABLE `sanitario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanitario_inventario` (`id_inventario`),
  ADD KEY `sanitario_zona` (`id_zona`);

--
-- Indexes for table `suelo`
--
ALTER TABLE `suelo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suelo_inventario` (`id_inventario`),
  ADD KEY `suelo_zona` (`id_zona`);

--
-- Indexes for table `switches`
--
ALTER TABLE `switches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `switches_inventario` (`id_inventario`),
  ADD KEY `switches_zona` (`id_zona`);

--
-- Indexes for table `techo`
--
ALTER TABLE `techo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `techo_inventario` (`id_inventario`),
  ADD KEY `techo_zona` (`id_zona`);

--
-- Indexes for table `tejas_transparentes`
--
ALTER TABLE `tejas_transparentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tejasTransparentes_inventario` (`id_inventario`),
  ADD KEY `tejasTransparentes_zona` (`id_zona`);

--
-- Indexes for table `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id`),
  ADD KEY `telefono_inventario` (`id_inventario`),
  ADD KEY `telefono_zona` (`id_zona`);

--
-- Indexes for table `televisor`
--
ALTER TABLE `televisor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `televisor_inventario` (`id_inventario`),
  ADD KEY `televisor_zona` (`id_zona`);

--
-- Indexes for table `tendedero`
--
ALTER TABLE `tendedero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tendedero_inventario` (`id_inventario`),
  ADD KEY `tendedero_zona` (`id_zona`);

--
-- Indexes for table `tomas_electricos`
--
ALTER TABLE `tomas_electricos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tomaElectrico_inventario` (`id_inventario`),
  ADD KEY `tomaElectrico_zona` (`id_zona`);

--
-- Indexes for table `tubos_cortina`
--
ALTER TABLE `tubos_cortina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tubosCortinas_inventario` (`id_inventario`),
  ADD KEY `tubosCortinas_zona` (`id_zona`);

--
-- Indexes for table `ventanas`
--
ALTER TABLE `ventanas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventanas_inventario` (`id_inventario`),
  ADD KEY `ventanas_zona` (`id_zona`);

--
-- Indexes for table `vidrios`
--
ALTER TABLE `vidrios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vidrios_inventario` (`id_inventario`),
  ADD KEY `vidrios_zona` (`id_zona`);

--
-- Indexes for table `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id_zona`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesorios`
--
ALTER TABLE `accesorios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `balcon`
--
ALTER TABLE `balcon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barra`
--
ALTER TABLE `barra`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cabina`
--
ALTER TABLE `cabina`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `caja_breaker`
--
ALTER TABLE `caja_breaker`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cajones_closet`
--
ALTER TABLE `cajones_closet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `campana_extractora`
--
ALTER TABLE `campana_extractora`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ducha`
--
ALTER TABLE `ducha`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `entre_panos`
--
ALTER TABLE `entre_panos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `escaleras`
--
ALTER TABLE `escaleras`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `espejos`
--
ALTER TABLE `espejos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fogon`
--
ALTER TABLE `fogon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gabinete_auxiliar`
--
ALTER TABLE `gabinete_auxiliar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gabinete_inferior`
--
ALTER TABLE `gabinete_inferior`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gabinete_superior`
--
ALTER TABLE `gabinete_superior`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventario_zona`
--
ALTER TABLE `inventario_zona`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `lavadero`
--
ALTER TABLE `lavadero`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lavadora`
--
ALTER TABLE `lavadora`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lava_manos`
--
ALTER TABLE `lava_manos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lava_platos`
--
ALTER TABLE `lava_platos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meson`
--
ALTER TABLE `meson`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paredes`
--
ALTER TABLE `paredes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paredes_bano`
--
ALTER TABLE `paredes_bano`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `piso`
--
ALTER TABLE `piso`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plafones`
--
ALTER TABLE `plafones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `puertas`
--
ALTER TABLE `puertas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `puertas_closet`
--
ALTER TABLE `puertas_closet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `puerta_principal`
--
ALTER TABLE `puerta_principal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reja`
--
ALTER TABLE `reja`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repisas`
--
ALTER TABLE `repisas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rosetas`
--
ALTER TABLE `rosetas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanitario`
--
ALTER TABLE `sanitario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suelo`
--
ALTER TABLE `suelo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `switches`
--
ALTER TABLE `switches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `techo`
--
ALTER TABLE `techo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tejas_transparentes`
--
ALTER TABLE `tejas_transparentes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `televisor`
--
ALTER TABLE `televisor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tomas_electricos`
--
ALTER TABLE `tomas_electricos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tubos_cortina`
--
ALTER TABLE `tubos_cortina`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ventanas`
--
ALTER TABLE `ventanas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vidrios`
--
ALTER TABLE `vidrios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id_zona` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accesorios`
--
ALTER TABLE `accesorios`
  ADD CONSTRAINT `accesoriobano_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `accesoriobano_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `balcon`
--
ALTER TABLE `balcon`
  ADD CONSTRAINT `balcon_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `balcon_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `barra`
--
ALTER TABLE `barra`
  ADD CONSTRAINT `barra_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `barra_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `cabina`
--
ALTER TABLE `cabina`
  ADD CONSTRAINT `cabinabano_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `cabinabano_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `caja_breaker`
--
ALTER TABLE `caja_breaker`
  ADD CONSTRAINT `cajabreaker_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `cajabreaker_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `cajones_closet`
--
ALTER TABLE `cajones_closet`
  ADD CONSTRAINT `cajoncloset_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `cajoncloset_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `campana_extractora`
--
ALTER TABLE `campana_extractora`
  ADD CONSTRAINT `campana_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `campana_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `ducha`
--
ALTER TABLE `ducha`
  ADD CONSTRAINT `ducha_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `ducha_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `entre_panos`
--
ALTER TABLE `entre_panos`
  ADD CONSTRAINT `entrepanos_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `entrepanos_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `escaleras`
--
ALTER TABLE `escaleras`
  ADD CONSTRAINT `escaleras_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `escaleras_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `espejos`
--
ALTER TABLE `espejos`
  ADD CONSTRAINT `espejo_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `espejo_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `fogon`
--
ALTER TABLE `fogon`
  ADD CONSTRAINT `fogon_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `fogon_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `gabinete_auxiliar`
--
ALTER TABLE `gabinete_auxiliar`
  ADD CONSTRAINT `gabineteAuxiliar_invenario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `gabineteAuxiliar_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `gabinete_inferior`
--
ALTER TABLE `gabinete_inferior`
  ADD CONSTRAINT `gabineteInferior_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `gabineteInferior_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `gabinete_superior`
--
ALTER TABLE `gabinete_superior`
  ADD CONSTRAINT `gabinetesuperior_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `gabinetesuperior_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`codigo_propiedad`) REFERENCES `propiedades` (`codigo_propiedad`);

--
-- Constraints for table `inventario_zona`
--
ALTER TABLE `inventario_zona`
  ADD CONSTRAINT `invtZona_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `invtZona_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `lamparas_led`
--
ALTER TABLE `lamparas_led`
  ADD CONSTRAINT `lamparaLed_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `lamparaLed_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `lavadero`
--
ALTER TABLE `lavadero`
  ADD CONSTRAINT `lavadero_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `lavadero_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `lavadora`
--
ALTER TABLE `lavadora`
  ADD CONSTRAINT `lavadora_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `lavadora_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `lava_manos`
--
ALTER TABLE `lava_manos`
  ADD CONSTRAINT `lavaManos_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `lavaManos_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `lava_platos`
--
ALTER TABLE `lava_platos`
  ADD CONSTRAINT `lavaPlatos_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `lavaPlatos_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `meson`
--
ALTER TABLE `meson`
  ADD CONSTRAINT `meson_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `meson_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `ojos_buey`
--
ALTER TABLE `ojos_buey`
  ADD CONSTRAINT `ojosBuey_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `ojosBuey_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `paredes`
--
ALTER TABLE `paredes`
  ADD CONSTRAINT `paredes_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `paredes_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `paredes_bano`
--
ALTER TABLE `paredes_bano`
  ADD CONSTRAINT `paredBano_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `paredBano_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `piso`
--
ALTER TABLE `piso`
  ADD CONSTRAINT `sueloBano_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `sueloBano_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `plafones`
--
ALTER TABLE `plafones`
  ADD CONSTRAINT `plafones_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `plafones_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `puertas`
--
ALTER TABLE `puertas`
  ADD CONSTRAINT `puertas_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `puertas_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `puertas_closet`
--
ALTER TABLE `puertas_closet`
  ADD CONSTRAINT `puertasCloset_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `puertasCloset_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `puerta_principal`
--
ALTER TABLE `puerta_principal`
  ADD CONSTRAINT `puertaPrincipal_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `puertaPrincipal_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `reja`
--
ALTER TABLE `reja`
  ADD CONSTRAINT `reja_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `reja_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `repisas`
--
ALTER TABLE `repisas`
  ADD CONSTRAINT `repisas_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `repisas_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `rosetas`
--
ALTER TABLE `rosetas`
  ADD CONSTRAINT `rosetas_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `rosetas_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `sanitario`
--
ALTER TABLE `sanitario`
  ADD CONSTRAINT `sanitario_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `sanitario_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `suelo`
--
ALTER TABLE `suelo`
  ADD CONSTRAINT `suelo_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `suelo_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `switches`
--
ALTER TABLE `switches`
  ADD CONSTRAINT `switches_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `switches_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `techo`
--
ALTER TABLE `techo`
  ADD CONSTRAINT `techo_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `techo_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `tejas_transparentes`
--
ALTER TABLE `tejas_transparentes`
  ADD CONSTRAINT `tejasTransparentes_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `tejasTransparentes_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `telefono_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `televisor`
--
ALTER TABLE `televisor`
  ADD CONSTRAINT `televisor_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `televisor_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `tendedero`
--
ALTER TABLE `tendedero`
  ADD CONSTRAINT `tendedero_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `tendedero_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `tomas_electricos`
--
ALTER TABLE `tomas_electricos`
  ADD CONSTRAINT `tomaElectrico_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `tomaElectrico_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `tubos_cortina`
--
ALTER TABLE `tubos_cortina`
  ADD CONSTRAINT `tubosCortinas_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `tubosCortinas_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `ventanas`
--
ALTER TABLE `ventanas`
  ADD CONSTRAINT `ventanas_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `ventanas_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Constraints for table `vidrios`
--
ALTER TABLE `vidrios`
  ADD CONSTRAINT `vidrios_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  ADD CONSTRAINT `vidrios_zona` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
