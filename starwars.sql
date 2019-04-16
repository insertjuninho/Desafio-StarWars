-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Abr-2019 às 03:42
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
(1, 'a', 'b', 'c'),
(2, 'a', '1', '2'),
(5, 'eu', 'fr', '12'),
(6, 'a', 'b', 'c'),
(7, 'a', 'b', 'c');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
