-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Nov-2019 às 14:18
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
-- Database: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `nome` varchar(60) NOT NULL,
  `dtNasc` date NOT NULL,
  `cod_cliente` int(11) NOT NULL,
  `cpf` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`nome`, `dtNasc`, `cod_cliente`, `cpf`) VALUES
('nome1', '1990-01-01', 1, '111.111.111-11'),
('nome2', '1990-02-02', 2, '222.222.222-22'),
('nome3', '1990-03-03', 3, '333.333.333-33'),
('nome4', '1990-04-04', 4, '444.444.444-44'),
('nome5', '1990-05-05', 5, '555.555.555-55'),
('nome6', '1990-06-06', 6, '666.666.666-66'),
('nome7', '1990-07-07', 7, '777.777.777-77'),
('nome8', '1990-08-08', 8, '888.888.888-88'),
('nome9', '1990-09-09', 9, '999.999.999-99'),
('nome10', '1990-10-10', 10, '101.010.101-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod_estaciona` int(11) NOT NULL,
  `hsEntrada` time NOT NULL,
  `hsSaida` time NOT NULL,
  `dia_entrada` int(11) NOT NULL,
  `mes_entrada` int(11) NOT NULL,
  `ano_entrada` int(11) NOT NULL,
  `dia_saida` int(11) NOT NULL,
  `ano_saida` int(11) NOT NULL,
  `mes_saida` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `cod_veiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`cod_estaciona`, `hsEntrada`, `hsSaida`, `dia_entrada`, `mes_entrada`, `ano_entrada`, `dia_saida`, `ano_saida`, `mes_saida`, `num`, `cod_veiculo`) VALUES
(1, '01:00:00', '01:30:00', 1, 1, 2010, 1, 2010, 1, 1, 1),
(2, '02:00:00', '02:30:00', 2, 2, 2010, 2, 2010, 2, 2, 2),
(3, '03:00:00', '03:30:00', 3, 3, 2010, 3, 2010, 3, 3, 3),
(4, '04:00:00', '04:30:00', 4, 4, 2010, 4, 2010, 4, 4, 4),
(5, '05:00:00', '05:30:00', 5, 5, 2010, 5, 2010, 5, 5, 5),
(6, '06:00:00', '06:30:00', 6, 6, 2010, 6, 2010, 6, 1, 6),
(7, '07:00:00', '07:30:00', 7, 7, 2010, 7, 2010, 7, 2, 7),
(8, '08:00:00', '08:30:00', 8, 8, 2010, 8, 2010, 8, 3, 8),
(9, '09:00:00', '09:30:00', 9, 9, 2010, 9, 2010, 9, 4, 9),
(10, '10:00:00', '10:30:00', 10, 10, 2010, 10, 2010, 10, 5, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `cod_mod` int(11) NOT NULL,
  `desc_2` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`cod_mod`, `desc_2`) VALUES
(1, 'descricao1'),
(2, 'descricao2'),
(3, 'descricao3'),
(4, 'descricao4'),
(5, 'descricao5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `patio`
--

CREATE TABLE `patio` (
  `num` int(11) NOT NULL,
  `ender` varchar(50) NOT NULL,
  `capacidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `patio`
--

INSERT INTO `patio` (`num`, `ender`, `capacidade`) VALUES
(1, 'ender1', 1),
(2, 'ender2', 2),
(3, 'ender3', 3),
(4, 'ender4', 4),
(5, 'ender5', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `cod_veiculo` int(11) NOT NULL,
  `placa` varchar(8) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cod_cliente` int(11) NOT NULL,
  `cod_mod` int(11) NOT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`cod_veiculo`, `placa`, `cor`, `cod_cliente`, `cod_mod`, `ano`) VALUES
(1, 'JJJ-2020', 'verde', 1, 1, 1990),
(2, 'JEG-1010', 'azul', 2, 2, 2000),
(3, 'SAS-1000', 'amarelo', 3, 3, 2001),
(4, 'SIS-5000', 'roxo', 4, 5, 2002),
(5, 'ABC-2010', 'preto', 5, 5, 2003),
(6, 'UNO-9800', 'branco', 6, 1, 2004),
(7, 'UAU-2019', 'cinza', 7, 2, 2019),
(8, 'NOS-3210', 'vermelho', 8, 3, 2077),
(9, 'JOA-6540', 'azul escuro', 9, 4, 1000),
(10, 'POR-1111', 'ciano', 10, 5, 9999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Indexes for table `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod_estaciona`),
  ADD KEY `cod_veiculo` (`cod_veiculo`),
  ADD KEY `num` (`num`);

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`cod_mod`);

--
-- Indexes for table `patio`
--
ALTER TABLE `patio`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`cod_veiculo`),
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `cod_mod` (`cod_mod`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`cod_veiculo`) REFERENCES `veiculo` (`cod_veiculo`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`num`) REFERENCES `patio` (`num`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`cod_mod`) REFERENCES `modelo` (`cod_mod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
