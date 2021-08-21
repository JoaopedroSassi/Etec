-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Ago-2019 às 15:07
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
-- Database: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `codAluguel` int(11) NOT NULL,
  `dataIni` date NOT NULL,
  `dataFim` date NOT NULL,
  `vencimento` int(11) NOT NULL,
  `comissao` decimal(7,2) DEFAULT NULL,
  `Contrato` varchar(20) NOT NULL,
  `codInquilino` int(11) NOT NULL,
  `codCorretor` int(11) NOT NULL,
  `codImovel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`codAluguel`, `dataIni`, `dataFim`, `vencimento`, `comissao`, `Contrato`, `codInquilino`, `codCorretor`, `codImovel`) VALUES
(1, '2003-12-12', '2016-12-12', 10, '200.00', 'contrato1', 3, 1, 2),
(2, '2004-12-12', '2017-12-12', 11, '300.00', 'contrato2', 4, 2, 3),
(3, '2005-12-12', '2018-12-12', 12, '400.00', 'contrato3', 5, 3, 4),
(4, '2006-12-12', '2019-12-12', 13, '500.00', 'contrato4', 6, 4, 5),
(5, '2007-12-12', '2020-12-12', 14, '600.00', 'contrato5', 7, 5, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `codCorretor` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telcel` varchar(20) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `dataNascimento` date NOT NULL,
  `rg` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`codCorretor`, `nome`, `telcel`, `tel`, `email`, `dataNascimento`, `rg`, `cpf`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'corre1', '466354005', '78698378', 'corre1@gmail.com', '2000-01-01', '157.354-50', '654.891.9874', 'Rua corre1', 1, 'em cima do cic', 'bairro corre1', 'santo andre', 'SP', '98765432'),
(2, 'corre2', '466334005', '71208378', 'corre2@gmail.com', '2000-02-01', '167.354-50', '054.891.9874', 'Rua corre2', 2, 'em cima do cicici', 'bairro corre2', 'santo andreere', 'SP', '98765432'),
(3, 'corre3', '466395105', '73578378', 'corre3@gmail.com', '2000-02-02', '167.354-92', '054.891.9847', 'Rua corre3', 3, 'em cimama do cicici', 'bairro corre3', 'santoto andreere', 'SP', '89765432'),
(4, 'corre4', '466000105', '73578300', 'corre4@gmail.com', '2000-03-02', '167.300-92', '054.891.4798', 'Rua corre4', 4, 'em cimammaa do cicici', 'bairro corre4', 'sansantoto andreere', 'SP', '00760032'),
(5, 'corre5', '466550105', '73500300', 'corre5@gmail.com', '2000-03-03', '167.300-82', '054.891.4008', 'Rua corre5', 5, 'emme cimammaa do cicici', 'bairro corre5', 'sansantoto anddereere', 'SP', '22760552');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `codImovel` int(11) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `preco` decimal(7,2) NOT NULL,
  `jardim` bit(1) NOT NULL,
  `lavanderia` bit(1) NOT NULL,
  `quantQuartos` int(11) NOT NULL,
  `ocupado` bit(1) NOT NULL,
  `comercial` bit(1) NOT NULL,
  `quanComodos` int(11) NOT NULL,
  `quantBanheiros` int(11) NOT NULL,
  `quantSuites` int(11) NOT NULL,
  `quantCarros` int(11) NOT NULL,
  `garagem` bit(1) NOT NULL,
  `quintal` bit(1) NOT NULL,
  `codProprietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`codImovel`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `preco`, `jardim`, `lavanderia`, `quantQuartos`, `ocupado`, `comercial`, `quanComodos`, `quantBanheiros`, `quantSuites`, `quantCarros`, `garagem`, `quintal`, `codProprietario`) VALUES
(2, 'ruaimov1', 80, 'fica ali', 'bairro1', 'cida1', 'RJ', '123456789158011', '800.00', b'1', b'0', 2, b'0', b'0', 4, 1, 0, 0, b'0', b'0', 1),
(3, 'ruaimov2', 81, 'fica alili', 'bairro2', 'cida2', 'RJ', '123546789158011', '900.00', b'1', b'1', 2, b'0', b'0', 4, 1, 0, 0, b'0', b'0', 1),
(4, 'ruaimov3', 82, 'ficaca alili', 'bairro3', 'cida3', 'RJ', '123546789158010', '2000.00', b'1', b'1', 2, b'1', b'1', 4, 1, 1, 1, b'1', b'1', 1),
(5, 'ruaimov4', 83, 'ficaca alliliili', 'bairro4', 'cida4', 'RJ', '213546789158010', '1000.00', b'1', b'0', 2, b'1', b'1', 4, 1, 0, 1, b'1', b'1', 1),
(6, 'ruaimov5', 84, 'ficaca allilililiili', 'bairro5', 'cida5', 'RJ', '213542589158010', '1.00', b'0', b'1', 2, b'1', b'1', 4, 1, 0, 1, b'1', b'1', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `codInquilino` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telcel` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dataNascimento` date NOT NULL,
  `rg` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` char(8) NOT NULL,
  `fiador` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`codInquilino`, `nome`, `telcel`, `telefone`, `email`, `dataNascimento`, `rg`, `cpf`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `fiador`) VALUES
(3, 'inq1', '666666666', '78000378', 'inq1@gmail.com', '2000-05-21', '157.435-50', '456.891.9874', 'Rua inq1', 50, 'baixo do baixo', 'bairro inq1', 'maua', 'SP', '98534920', 'fiador1'),
(4, 'inq2', '666669966', '70000378', 'inq2@gmail.com', '2000-05-22', '517.435-50', '456.000.9874', 'Rua inq2', 51, 'baixo do baixoxo', 'bairro inq2', 'mauaua', 'SP', '98584920', 'fiador2'),
(5, 'inq3', '699669966', '70000300', 'inq3@gmail.com', '2000-05-23', '517.435-00', '456.000.0874', 'Rua inq3', 52, 'baixo do baaiixoxo', 'bairro inq3', 'mauauaua', 'SP', '98004920', 'fiador3'),
(6, 'inq4', '696669966', '00000300', 'inq4@gmail.com', '2000-05-24', '517.035-00', '456.000.0870', 'Rua inq4', 53, 'baixoxoo do baaiixoxo', 'bairro inq4', 'mmamauauaua', 'SP', '90004920', 'fiador4'),
(7, 'inq5', '666669966', '00000000', 'inq5@gmail.com', '2000-05-25', '517.030-00', '456.000.0800', 'Rua inq5', 54, 'baixoxoo dodo baaiixoxo', 'bairro inq5', 'mmamauauauauaua', 'SP', '90000920', 'fiador5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `codProprietario` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telcel` varchar(15) NOT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `dataNascimento` date NOT NULL,
  `rg` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`codProprietario`, `nome`, `telcel`, `tel`, `email`, `dataNascimento`, `rg`, `cpf`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'prop1', '4663548965', '78645378', 'prop1@gmail.com', '2000-12-12', '987.354-50', '654.891.5664', 'Rua prop1', 12, 'ao lado do lado', 'bairro prop1', 'ribera bera', 'SP', '12345678'),
(2, 'prop2', '4664548965', '78625378', 'prop2@gmail.com', '2000-11-12', '987.454-50', '369.891.5664', 'Rua prop2', 13, 'ao lado do ado', 'bairro prop2', 'ribera beera', 'SP', '12645678'),
(4, 'prop3', '465463965', '98725378', 'prop3@gmail.com', '2000-11-11', '987.454-65', '369.851.5664', 'Rua prop2', 14, 'ao lado do adol', 'bairro prop3', 'ribeera beerara', 'SP', '12645679'),
(5, 'prop4', '635463965', '02725378', 'prop4@gmail.com', '2000-11-10', '987.454-58', '369.851.5646', 'Rua prop4', 15, 'ao lado do adolodo', 'bairro prop4', 'ribeera beerraraara', 'SP', '13645769'),
(6, 'prop5', '638963965', '02005378', 'prop5@gmail.com', '2000-10-10', '987.000-58', '369.851.0046', 'Rua prop5', 16, 'ao lado do adolloolodo', 'bairro prop5', 'ribeeraraa beerraraara', 'SP', '13640069');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`codAluguel`),
  ADD KEY `codInquilino` (`codInquilino`),
  ADD KEY `codCorretor` (`codCorretor`),
  ADD KEY `codImovel` (`codImovel`);

--
-- Indexes for table `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`codCorretor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Indexes for table `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`codImovel`),
  ADD KEY `codProprietario` (`codProprietario`);

--
-- Indexes for table `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`codInquilino`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Indexes for table `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`codProprietario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `codAluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `corretor`
--
ALTER TABLE `corretor`
  MODIFY `codCorretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `imovel`
--
ALTER TABLE `imovel`
  MODIFY `codImovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `codInquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `codProprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`codInquilino`) REFERENCES `inquilino` (`codInquilino`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`codCorretor`) REFERENCES `corretor` (`codCorretor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`codImovel`) REFERENCES `imovel` (`codImovel`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`codProprietario`) REFERENCES `proprietario` (`codProprietario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
