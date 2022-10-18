-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 18, 2022 alle 17:02
-- Versione del server: 10.4.24-MariaDB
-- Versione PHP: 8.1.6

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
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `anno_nascita` date NOT NULL,
  `eta` int(2) NOT NULL,
  `residenza` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `titolo_studio` varchar(100) NOT NULL,
  `voto` varchar(20) NOT NULL,
  `formazione` varchar(50) NOT NULL,
  `data_candidatura` date NOT NULL,
  `data_colloquio` date NOT NULL,
  `note` varchar(2000) NOT NULL,
  `esito` varchar(1000) NOT NULL,
  `greenpass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `candidatura`
--

INSERT INTO `candidatura` (`id`, `nome`, `cognome`, `anno_nascita`, `eta`, `residenza`, `telefono`, `email`, `titolo_studio`, `voto`, `formazione`, `data_candidatura`, `data_colloquio`, `note`, `esito`, `greenpass`) VALUES
(1, 'Michele', 'Davidde', '2222-02-12', -199, 'Via cupa delle marachelle', '3333333333', 'faby.for.ever@gmail.com', 'Diploma', '77', 'HTML - CSS - JS', '2222-02-22', '2222-02-22', '', 'Idoneo', 'si');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
