-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Abr-2019 às 05:53
-- Versão do servidor: 10.1.31-MariaDB
-- versão do PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b2w`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `starwars`
--

CREATE TABLE `starwars` (
  `id` int(11) NOT NULL,
  `planeta` varchar(50) NOT NULL,
  `clima` varchar(50) NOT NULL,
  `terreno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `starwars`
--

INSERT INTO `starwars` (`id`, `planeta`, `clima`, `terreno`) VALUES
(1, 'Yavin IV', 'temperate, tropical', 'jungle, rainforests'),
(2, 'Tatooine', 'arid', 'desert'),
(3, 'Alderaan', 'temperate', 'grasslands, mountains'),
(4, 'Hoth', 'frozen', 'tundra, ice caves, mountain ranges'),
(5, 'Dagobah', 'murky', 'swamp, jungles'),
(6, 'Bespin', 'temperate', 'gas giant'),
(7, 'Endor', 'temperate', 'forests, mountains, lakes'),
(8, 'Naboo', 'temperate', 'grassy hills, swamps, forests, mountains'),
(9, 'Coruscant', 'temperate', 'cityscape, mountains'),
(10, 'Kamino', 'temperate', 'ocean'),
(11, 'Geonosis', 'temperate, arid', 'rock, desert, mountain, barren');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `starwars`
--
ALTER TABLE `starwars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `starwars`
--
ALTER TABLE `starwars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
