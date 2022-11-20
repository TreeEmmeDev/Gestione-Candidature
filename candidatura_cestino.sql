-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 23, 2022 alle 14:12
-- Versione del server: 8.0.27
-- Versione PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `candidature`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `candidatura_cestino`
--

CREATE TABLE `candidatura_cestino` (
  `id` int NOT NULL,
  `ambito` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `anno_nascita` date NOT NULL,
  `eta` int NOT NULL,
  `residenza` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `telefono` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `titolo_studio` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `voto` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `formazione` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `data_candidatura` date DEFAULT NULL,
  `data_colloquio` date DEFAULT NULL,
  `note` varchar(2000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `esito` varchar(1000) NOT NULL,
  `file` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `candidatura_cestino`
--
ALTER TABLE `candidatura_cestino`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `candidatura_cestino`
--
ALTER TABLE `candidatura_cestino`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
