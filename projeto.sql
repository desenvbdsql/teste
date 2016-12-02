-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01-Dez-2016 às 18:39
-- Versão do servidor: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_alosindico`
--

CREATE TABLE `tb_alosindico` (
  `idAloSindico` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `ativo` tinyint(4) DEFAULT NULL,
  `data_Cadastro` datetime DEFAULT NULL,
  `status_AloSindico` char(1) DEFAULT NULL,
  `data_Alteracao` datetime DEFAULT NULL,
  `usuario_Alteracao` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_alosindicocontrole`
--

CREATE TABLE `tb_alosindicocontrole` (
  `idAloSindicoControle` int(11) NOT NULL,
  `idAlosindico` int(11) DEFAULT NULL,
  `mensagem` varchar(4000) DEFAULT NULL,
  `data_Mensagem` datetime DEFAULT NULL,
  `idUsuarioResposta` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_perfil`
--

CREATE TABLE `tb_perfil` (
  `idPerfil` int(11) NOT NULL,
  `perfil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_perfil`
--

INSERT INTO `tb_perfil` (`idPerfil`, `perfil`) VALUES
(1, 'admin'),
(2, 'morador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_torre`
--

CREATE TABLE `tb_torre` (
  `idTorre` int(11) NOT NULL,
  `torre` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_torre`
--

INSERT INTO `tb_torre` (`idTorre`, `torre`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `idUsuario` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `idTorre` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `apto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`idUsuario`, `idPerfil`, `idTorre`, `nome`, `email`, `senha`, `apto`) VALUES
(1, 2, 0, 'douglas', 'douglasolive@hotmail.com', '1234', '54b'),
(2, 2, 0, 'admin', 'admin@hotmail.com', '1234', '154a'),
(3, 1, 0, 'sindico', 'sinco@uol.com.br', '1234', '54a'),
(9, 2, 3, 'alan', 'alan@hotmail.com', '1234', '54b'),
(10, 2, 1, 'jackson', 'jackson@hotmail.com', '1234', '54b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alosindico`
--
ALTER TABLE `tb_alosindico`
  ADD PRIMARY KEY (`idAloSindico`);

--
-- Indexes for table `tb_alosindicocontrole`
--
ALTER TABLE `tb_alosindicocontrole`
  ADD PRIMARY KEY (`idAloSindicoControle`);

--
-- Indexes for table `tb_perfil`
--
ALTER TABLE `tb_perfil`
  ADD PRIMARY KEY (`idPerfil`);

--
-- Indexes for table `tb_torre`
--
ALTER TABLE `tb_torre`
  ADD PRIMARY KEY (`idTorre`);

--
-- Indexes for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alosindico`
--
ALTER TABLE `tb_alosindico`
  MODIFY `idAloSindico` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_alosindicocontrole`
--
ALTER TABLE `tb_alosindicocontrole`
  MODIFY `idAloSindicoControle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_perfil`
--
ALTER TABLE `tb_perfil`
  MODIFY `idPerfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
