-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Set-2019 às 23:39
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `codaluguel` varchar(5) NOT NULL,
  `codimovel` int(11) DEFAULT NULL,
  `codinquilino` varchar(6) DEFAULT NULL,
  `dataaluguel` date DEFAULT NULL,
  `contrato` varchar(10) DEFAULT NULL,
  `dataencerramento` date DEFAULT NULL,
  `codcorretor` varchar(10) DEFAULT NULL,
  `diavenc` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`codaluguel`, `codimovel`, `codinquilino`, `dataaluguel`, `contrato`, `dataencerramento`, `codcorretor`, `diavenc`) VALUES
('ALU1', 2, 'INQ123', '2015-02-10', '3 ANOS', '2018-02-10', 'CO1', '15'),
('ALU2', 1, 'INQ123', '2014-03-01', '3 ANOS', '2017-03-01', 'CO1', '07'),
('ALU3', 3, 'INQ125', '2016-02-01', '2 ANOS', '2018-02-01', 'CO2', '10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `codcorretor` varchar(10) NOT NULL,
  `nomecorretor` varchar(30) DEFAULT NULL,
  `rgcorretor` varchar(15) DEFAULT NULL,
  `emailcorretor` varchar(30) DEFAULT NULL,
  `telcelcor` varchar(15) DEFAULT NULL,
  `telfixocor` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`codcorretor`, `nomecorretor`, `rgcorretor`, `emailcorretor`, `telcelcor`, `telfixocor`) VALUES
('CO1', 'Alex Augusto', '77.777.666-a', 'alex@gmail.com', '9333-8888', '2222-5555'),
('CO2', 'Carmo Araujo', '99.111.222-x', 'carmo.araujo@gmail.com', '96666-5555', '3333-5555'),
('CO3', 'Larissa Pinho', '22.222.222-x', 'larissa@gmail.com', '98888-2222', '4444-3333');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `codimovel` int(11) NOT NULL,
  `rua` varchar(15) DEFAULT NULL,
  `num` varchar(15) DEFAULT NULL,
  `bairro` varchar(15) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `valoraluguel` decimal(7,2) DEFAULT NULL,
  `codprop` int(11) DEFAULT NULL,
  `qtcomodos` int(11) NOT NULL,
  `qtbanhe` int(11) NOT NULL,
  `garagem` bit(1) NOT NULL,
  `lavanderia` bit(1) NOT NULL,
  `ocupado` bit(1) DEFAULT NULL,
  `suite` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`codimovel`, `rua`, `num`, `bairro`, `complemento`, `cidade`, `estado`, `cep`, `valoraluguel`, `codprop`, `qtcomodos`, `qtbanhe`, `garagem`, `lavanderia`, `ocupado`, `suite`) VALUES
(1, 'Rua A', '111', 'Vila Delphi', 'Casa 1', 'Suzano', 'SP', '09876-666', '1095.12', 3, 4, 2, b'1', b'1', b'1', b'1'),
(2, 'Rua B', '222', 'Vila Nova', 'Fundos', 'Ribeirão Pires', 'SP', '09666-444', '1368.90', 1, 6, 2, b'1', b'1', b'1', b'0'),
(3, 'Rua C', '333', 'Jd. Clara', 'Casa 2', 'Mauá', 'SP', '09777-333', '684.45', 2, 2, 1, b'0', b'1', b'1', b'1'),
(4, 'Rua F', '444', 'Jd. Novo', NULL, 'Mauá', 'SP', '98989-777', '958.23', 1, 4, 1, b'0', b'1', b'0', b'0'),
(5, 'Rua G', '555', 'Jd. Agora', '2And. Apt 2', 'Santo André', 'SP', '88888-777', '2190.24', 2, 5, 2, b'1', b'0', b'0', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `codinquilino` varchar(6) NOT NULL,
  `nomeinquilino` varchar(30) DEFAULT NULL,
  `rginquilino` varchar(15) DEFAULT NULL,
  `emailinquilino` varchar(30) DEFAULT NULL,
  `telcel` varchar(20) DEFAULT NULL,
  `telfixo` varchar(20) DEFAULT NULL,
  `salario` decimal(7,2) NOT NULL,
  `datanasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`codinquilino`, `nomeinquilino`, `rginquilino`, `emailinquilino`, `telcel`, `telfixo`, `salario`, `datanasc`) VALUES
('INQ123', 'Carlos Fernando', '55.555.555-x', 'carlos@gmail.com', '92222-2222', '7777-8888', '2500.00', '1982-12-21'),
('INQ124', 'José Augusto', '44.666.777-x', 'jose@gmail.com', '98888-3333', '1111-1111', '1500.00', '1974-02-14'),
('INQ125', 'Carla Eduarda', '88.999.999-a', 'carla@hotmail.com', '96666-7777', '2222-3333', '4000.00', '1960-06-02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `codprop` int(11) NOT NULL,
  `nomeprop` varchar(30) DEFAULT NULL,
  `emailprop` varchar(30) DEFAULT NULL,
  `telcelprop` varchar(20) DEFAULT NULL,
  `telfixoprop` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`codprop`, `nomeprop`, `emailprop`, `telcelprop`, `telfixoprop`) VALUES
(1, 'Mauro Filho', 'mauro@gmail.com', '(11)93333-3333', '(11)4444-5555'),
(2, 'Arthur Araújo', 'jose@gmail.com', '(11)96666-6666', '(11)1111-5555'),
(3, 'Cíntia Pinho', 'cintia@hotmail.com', '(11)98888-4444', '(11)3333-3333'),
(4, 'Casemiro Nogueira', 'casemiro@gmail.com', '(11)88888-5555', '(11)5599-8888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`codaluguel`),
  ADD KEY `codimovel` (`codimovel`),
  ADD KEY `codinquilino` (`codinquilino`),
  ADD KEY `codcorretor` (`codcorretor`);

--
-- Indexes for table `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`codcorretor`);

--
-- Indexes for table `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`codimovel`),
  ADD KEY `codprop` (`codprop`);

--
-- Indexes for table `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`codinquilino`);

--
-- Indexes for table `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`codprop`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `imovel`
--
ALTER TABLE `imovel`
  MODIFY `codimovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `codprop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`codimovel`) REFERENCES `imovel` (`codimovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`codinquilino`) REFERENCES `inquilino` (`codinquilino`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`codcorretor`) REFERENCES `corretor` (`codcorretor`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`codprop`) REFERENCES `proprietario` (`codprop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
