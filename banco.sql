-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Nov-2023 às 13:27
-- Versão do servidor: 8.0.21
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `desafio_SAEP`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alocacao`
--

CREATE TABLE `alocacao` (
  `id` int NOT NULL,
  `area` varchar(45) NOT NULL,
  `automovel` int NOT NULL,
  `concessionaria` int NOT NULL,
  `quantidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `alocacao`
--

INSERT INTO `alocacao` (`id`, `area`, `automovel`, `concessionaria`, `quantidade`) VALUES
(1, '1', 1, 1, '8'),
(2, '2', 2, 2, '1'),
(3, '4', 3, 3, '4'),
(4, '7', 4, 4, '6'),
(5, '8', 5, 5, '4'),
(6, '9', 6, 1, '4'),
(7, '10', 7, 2, '1'),
(8, '1', 8, 2, '7'),
(9, '2', 9, 3, '2'),
(10, '4', 10, 4, '6'),
(11, '7', 11, 5, '3'),
(12, '8', 12, 1, '9'),
(13, '9', 13, 2, '9'),
(14, '10', 14, 3, '6'),
(15, '1', 15, 3, '4'),
(16, '2', 16, 4, '1'),
(17, '4', 17, 5, '8'),
(18, '7', 18, 1, '4'),
(19, '8', 19, 2, '10'),
(20, '9', 20, 3, '10'),
(21, '10', 21, 4, '7'),
(22, '1', 22, 4, '3'),
(23, '2', 23, 5, '5'),
(24, '4', 24, 1, '4'),
(25, '7', 25, 2, '3'),
(26, '8', 26, 3, '3'),
(27, '9', 27, 4, '10'),
(28, '10', 28, 5, '4'),
(29, '1', 29, 1, '2'),
(30, '2', 30, 2, '3'),
(31, '4', 31, 3, '4'),
(32, '7', 32, 4, '2'),
(33, '8', 33, 5, '3'),
(34, '9', 34, 1, '4'),
(35, '10', 35, 2, '3'),
(36, '1', 36, 3, '2'),
(37, '2', 37, 4, '3'),
(38, '4', 38, 5, '3'),
(39, '7', 39, 1, '2'),
(40, '8', 40, 2, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `automovel`
--

CREATE TABLE `automovel` (
  `id` int NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `automovel`
--

INSERT INTO `automovel` (`id`, `modelo`, `preco`) VALUES
(1, 'Fiat Strada', 43115),
(2, 'Fiat Argo', 47660),
(3, 'Fiat Mobi', 32102),
(4, 'Jeep Compass', 34950),
(5, 'Hyundai HB20', 49302),
(6, 'Jeep Renegade', 36661),
(7, 'Volkswagen T-Cross', 38182),
(8, 'Fiat Toro', 57733),
(9, 'Hyundai Creta', 55998),
(10, 'Chevrolet S10', 51035),
(11, 'Toyota Corolla Cross', 34544),
(12, 'Toyota Hilux', 53937),
(13, 'Toyota Corolla', 55022),
(14, 'Volkswagen Gol', 48253),
(15, 'Honda HR-V', 53438),
(16, 'Renault Kwid', 31810),
(17, 'Volkswagen Nivus', 35104),
(18, 'Hyundai HB20S', 31855),
(19, 'Ford Ranger', 48927),
(20, 'Fiat Uno', 38111),
(21, 'Fiat Cronos', 36515),
(22, 'Citroen C4 Cactus', 53654),
(23, 'Toyota Yaris Hatchback', 55869),
(24, 'Volkswagen Voyage', 30954),
(25, 'Honda Civic', 30871),
(26, 'Volkswagen Saveiro', 32306),
(27, 'Caoa Chery Tiggo 5x', 30069),
(28, 'Volkswagen Virtus', 40689),
(29, 'Fiat Grand Siena', 33469),
(30, 'Caoa Chery Tiggo 8', 48481),
(31, 'Chevrolet Tracker', 30648),
(32, 'Peugeot 208', 46934),
(33, 'Toyota SW4', 54252),
(34, 'Nissan Frontier', 32596),
(35, 'Honda WR-V', 35139),
(36, 'Volkswagen Taos', 47546),
(37, 'Mitsubishi L200', 57049),
(38, 'Renault Oroch', 48756),
(39, 'Toyota Yaris Sedan', 43077),
(40, 'Renault Duster', 52641);

-- --------------------------------------------------------

--
-- Estrutura da tabela `concessionaria`
--

CREATE TABLE `concessionaria` (
  `id` int NOT NULL,
  `concessionaria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `concessionaria`
--

INSERT INTO `concessionaria` (`id`, `concessionaria`) VALUES
(1, 'Atena_concessionaria'),
(2, 'Demetir_concessionaria'),
(3, 'Hera_concessionaria'),
(4, 'Estia_concessionaria'),
(5, 'Persefoneconcessionaria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alocacao`
--
ALTER TABLE `alocacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `automovel_id_automovel` (`automovel`),
  ADD KEY `concessionaria_id_concessionaria` (`concessionaria`);

--
-- Índices para tabela `automovel`
--
ALTER TABLE `automovel`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `concessionaria`
--
ALTER TABLE `concessionaria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alocacao`
--
ALTER TABLE `alocacao`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `automovel`
--
ALTER TABLE `automovel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `concessionaria`
--
ALTER TABLE `concessionaria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alocacao`
--
ALTER TABLE `alocacao`
  ADD CONSTRAINT `automovel_id_automovel` FOREIGN KEY (`automovel`) REFERENCES `automovel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `concessionaria_id_concessionaria` FOREIGN KEY (`concessionaria`) REFERENCES `concessionaria` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
