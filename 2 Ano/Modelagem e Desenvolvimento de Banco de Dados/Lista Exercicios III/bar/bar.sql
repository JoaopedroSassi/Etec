-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Set-2019 às 14:34
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bar`
--
CREATE DATABASE IF NOT EXISTS `bar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bar`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `codconta` int(11) NOT NULL,
  `horaentrada` time NOT NULL,
  `horasaida` time NOT NULL,
  `valortotal` decimal(7,2) NOT NULL,
  `valorpessoa` decimal(7,2) NOT NULL,
  `qtdepessoas` int(11) NOT NULL,
  `data` date NOT NULL,
  `codgarcom` int(11) NOT NULL,
  `codmesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`codconta`, `horaentrada`, `horasaida`, `valortotal`, `valorpessoa`, `qtdepessoas`, `data`, `codgarcom`, `codmesa`) VALUES
(1, '00:52:32', '01:00:00', '52.00', '12.00', 3, '2019-05-05', 1, 1),
(2, '05:00:32', '06:00:00', '10.00', '5.00', 2, '2019-06-05', 2, 2),
(3, '22:30:12', '23:00:00', '15.00', '3.00', 5, '2019-07-05', 3, 3),
(4, '15:50:32', '16:20:00', '20.00', '10.00', 2, '2019-08-05', 4, 4),
(5, '13:20:00', '14:00:00', '30.00', '10.00', 3, '2019-09-05', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `garcom`
--

CREATE TABLE `garcom` (
  `codgarcom` int(11) NOT NULL,
  `nomegarcom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `garcom`
--

INSERT INTO `garcom` (`codgarcom`, `nomegarcom`) VALUES
(1, 'garcom1'),
(2, 'garcom2'),
(3, 'garcom3'),
(4, 'garcom4'),
(5, 'garcom5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemconta`
--

CREATE TABLE `itemconta` (
  `qtde` int(11) NOT NULL,
  `totalitens` decimal(7,2) NOT NULL,
  `codproduto` int(11) NOT NULL,
  `codconta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itemconta`
--

INSERT INTO `itemconta` (`qtde`, `totalitens`, `codproduto`, `codconta`) VALUES
(5, '35.00', 1, 1),
(6, '60.00', 2, 2),
(7, '100.00', 3, 3),
(8, '80.00', 4, 4),
(9, '2.00', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesa`
--

CREATE TABLE `mesa` (
  `codmesa` int(11) NOT NULL,
  `mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mesa`
--

INSERT INTO `mesa` (`codmesa`, `mesa`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codproduto` int(11) NOT NULL,
  `preco` decimal(7,2) NOT NULL,
  `nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codproduto`, `preco`, `nome`) VALUES
(1, '10.00', 'prod1'),
(2, '20.00', 'prod2'),
(3, '30.00', 'prod3'),
(4, '40.00', 'prod4'),
(5, '50.00', 'prod5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`codconta`),
  ADD KEY `codgarcom` (`codgarcom`),
  ADD KEY `codmesa` (`codmesa`);

--
-- Indexes for table `garcom`
--
ALTER TABLE `garcom`
  ADD PRIMARY KEY (`codgarcom`);

--
-- Indexes for table `itemconta`
--
ALTER TABLE `itemconta`
  ADD KEY `codproduto` (`codproduto`),
  ADD KEY `codconta` (`codconta`);

--
-- Indexes for table `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`codmesa`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codproduto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conta`
--
ALTER TABLE `conta`
  MODIFY `codconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `garcom`
--
ALTER TABLE `garcom`
  MODIFY `codgarcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mesa`
--
ALTER TABLE `mesa`
  MODIFY `codmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `codproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`codgarcom`) REFERENCES `garcom` (`codgarcom`),
  ADD CONSTRAINT `conta_ibfk_2` FOREIGN KEY (`codmesa`) REFERENCES `mesa` (`codmesa`);

--
-- Limitadores para a tabela `itemconta`
--
ALTER TABLE `itemconta`
  ADD CONSTRAINT `itemconta_ibfk_1` FOREIGN KEY (`codproduto`) REFERENCES `produto` (`codproduto`),
  ADD CONSTRAINT `itemconta_ibfk_2` FOREIGN KEY (`codconta`) REFERENCES `conta` (`codconta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
