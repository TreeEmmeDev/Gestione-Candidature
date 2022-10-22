-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 20, 2022 alle 19:38
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
-- Struttura della tabella `candidatura`
--

CREATE TABLE `candidatura` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `anno_nascita` date NOT NULL,
  `eta` int NOT NULL,
  `residenza` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `telefono` varchar(20) CHARACTER SET utf8mb4  DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `titolo_studio` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `voto` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `formazione` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `data_candidatura` date DEFAULT NULL,
  `data_colloquio` date DEFAULT NULL,
  `note` varchar(2000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `esito` varchar(1000) NOT NULL,
  `greenpass` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `candidatura`
--

INSERT INTO `candidatura` (`id`, `nome`, `cognome`, `anno_nascita`, `eta`, `residenza`, `telefono`, `email`, `titolo_studio`, `voto`, `formazione`, `data_candidatura`, `data_colloquio`, `note`, `esito`, `greenpass`) VALUES
(2, 'Test', 'Test', '2003-05-29', 19, 'vai bella 73', '2222222222', 'mail@mail.com', 'Diploma', '66', 'nulla', '2022-10-18', NULL, '', 'Idoneo', 'si');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `candidatura`
--
ALTER TABLE `candidatura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `candidatura`
--
ALTER TABLE `candidatura`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
