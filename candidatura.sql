-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 14, 2022 alle 16:42
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestionecandidature`
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
  `eta` varchar(2) NOT NULL,
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
(2, 'mario', 'rossi', '2021-12-31', '11', '111', '1111', '111@11.it', '111', '111', '111', '2022-01-20', '2022-01-05', 'ok', '', '1111'),
(3, 'aaa', 'aaa', '2021-12-31', '11', '111', '1111', '111@11.it', '111', '111', '111', '2022-01-20', '2022-01-05', 'sdfcsdfcdsc', 'xxx', '1111'),
(5, 'e', '1', '2022-01-29', '1', '1111', '1111', 'donatocellisio@gmail.com', '111', '1111111', '111111111', '2022-01-29', '2022-01-29', 'xxxxx', 'xxxx', 'aaaaaaaaaaaaaaaa'),
(6, 'e', '1', '2022-01-29', '1', '1111', '1111', 'donatocellisio@gmail.com', '111', '1111111', '111111111', '2022-01-29', '2022-01-29', 'xx', 'xx', 'aaaaaaaaaaaaaaaa'),
(7, 'e', '1', '2022-01-06', '2', 'trdfh', 'ff', 'donatocellisio@gmail.com', '1111', '111', '111', '2022-01-08', '2021-12-30', '1111111', '11111111111111111', 'aaaaaaaaaaaaaaaa'),
(8, 'e', '1', '2022-01-06', '2', 'trdfh', 'ff', 'donatocellisio@gmail.com', '1111', '111', '111', '2022-01-08', '2021-12-30', '1111111', '11111111111111111', 'aaaaaaaaaaaaaaaa'),
(9, 'e', '1', '2022-01-06', '2', 'trdfh', 'ff', 'donatocellisio@gmail.com', '1111', '111', '111', '2022-01-08', '2021-12-30', '1111111', '11111111111111111', 'aaaaaaaaaaaaaaaa'),
(10, 'e', '1', '2022-01-06', '2', 'trdfh', 'ff', 'donatocellisio@gmail.com', '1111', '111', '111', '2022-01-08', '2021-12-30', '1111111', '11111111111111111', 'aaaaaaaaaaaaaaaa'),
(11, 'e', '1', '2022-01-06', '2', 'trdfh', 'ff', 'donatocellisio@gmail.com', '1111', '111', '111', '2022-01-08', '2021-12-30', '1111111', '11111111111111111', 'aaaaaaaaaaaaaaaa'),
(12, 'e', '1', '2022-01-06', '2', 'trdfh', 'ff', 'donatocellisio@gmail.com', '1111', '111', '111', '2022-01-08', '2021-12-30', '1111111', '11111111111111111', 'aaaaaaaaaaaaaaaa'),
(13, 'e', '1', '2022-01-06', '2', 'trdfh', 'ff', 'donatocellisio@gmail.com', '1111', '111', '111', '2022-01-08', '2021-12-30', '1111111', '11111111111111111', 'aaaaaaaaaaaaaaaa'),
(14, 'xxx', 'xxxx', '2022-01-29', '4', 'sdddd', '2222222', 'donatocellisio@gmail.com', 'tttttttt', '1111111', '111', '2022-01-29', '2022-01-29', 'gdrgdrgrdgfsdrgdrgdr', 'dgvdgdgbdgsdr', 'cvdvgfsgfsrgvsdr'),
(16, 'e', 'ghgh', '2022-01-07', '7', '7u', 'ghjgvjg', 'lampa7093@gmail.com', '111', '111', '1111', '2022-01-29', '2022-01-30', 'fhdfhdfghedf', 'cfyhdfhdfhd', 'cvdvgfsgfsrgvsdr'),
(17, 'e', '1', '1997-01-30', '24', 'rrgegdr', 'drgdrgd', 'aa@gmail.com', '111', '33', '3333', '2022-01-29', '2022-01-29', 'wwwwwwwwwwwwwww', 'wwwwwwwwwwwww', 'wwwwwwwwww'),
(18, '@', '1', '2012-02-03', '9', '1111', '1111', '111@11.it', 'tttttttt', '1111111', '111', '2021-12-30', '2022-01-15', 'asdddddddddddddddddddddd', 'asdfghhhhhhhhhhhhhhhhhhhhhhhhhhhh', '11111'),
(19, 'luigi', 'verdi', '2003-07-31', '18', '1111', 'ghjgvjg', '111@11.it', '111', '111', '111', '2022-01-06', '2022-01-30', 'ok', 'RELOAD', 'aaaaaaaaaaaaaaaa'),
(20, 'antonio', 'riccio', '1998-02-28', '23', 'sss', '2222222', '111@11.it', '111', '111', '111', '2022-01-03', '2022-01-30', 'ok', 'Non Idoneo', '1111'),
(21, 'Donato', 'Cellisio', '2002-05-11', '19', 'Giugliano', '2222222', 'donatocellisio@gmail.com', 'tttttttt', '1111111', '111', '2022-01-01', '2022-01-30', 'ok', 'Idoneo', 'si'),
(22, 'e', '1', '2022-01-01', '0', '111', '1111', '111@11.it', '111', '111', '111', '2022-01-10', '2022-01-28', '', 'Da ricontattare', 'si'),
(23, 'e', '1', '2012-02-01', '9', '1111', '2222222', '111@11.it', '1111', '1111111', '111', '2022-01-01', '2022-01-30', 'ok', 'Idoneo', '11111'),
(24, 'e', '1', '2012-02-01', '9', '1111', '2222222', '111@11.it', '1111', '1111111', '111', '2022-01-01', '2022-01-30', 'ok', 'Idoneo', '11111'),
(25, '@', '1', '2022-01-09', '0', '111', '2222222', '111@11.it', 'tttttttt', '111', '111', '2022-01-01', '2022-01-09', 'ok', 'Idoneo', '11111'),
(26, '@', '1', '2022-01-09', '0', '111', '2222222', '111@11.it', 'tttttttt', '111', '111', '2022-01-01', '2022-01-09', 'ok', 'Idoneo', '11111');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
