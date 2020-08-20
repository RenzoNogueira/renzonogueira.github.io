-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20-Ago-2020 às 19:25
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `renzonogueiradb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_imagem` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `portifolio`
--

CREATE TABLE `portifolio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `link_visualizacao` varchar(200) DEFAULT NULL,
  `link_projeto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `portifolio`
--

INSERT INTO `portifolio` (`id`, `titulo`, `descricao`, `image`, `link_visualizacao`, `link_projeto`) VALUES
(1, 'PHP Native Image Compressor', 'Uma maneira simples de compactar imagens em seu servidor e economizar espaço. Feito em PHP puro. Não requer dependências.', 'img/github.svg', 'https://renzonogueira.github.io/php-native-image-compressor/', 'https://github.com/RenzoNogueira/php-native-image-compressor'),
(2, 'Window Debug JS', ' Uma janela que exibe as mensagens do console diretamente no corpo do seu site.                                         Útil para debug.', 'img/github.svg', 'https://renzonogueira.github.io/Window-Debug-JS/', 'https://github.com/RenzoNogueira/Window-Debug-JS'),
(3, ' Buttons Social networks', 'Lindos botões de rede social em puro CSS.', 'img/github.svg', 'https://renzonogueira.github.io/Buttons-Social-networks/', 'https://github.com/RenzoNogueira/Buttons-Social-networks'),
(4, 'Credit Card Null Bank', 'Um cartão do NullBank feito com CSS e JS.', 'img/github.svg', 'https://renzonogueira.github.io/Credit-Card-Null-Bank/', 'https://github.com/RenzoNogueira/Credit-Card-Null-Bank'),
(5, 'Password Generator', 'Um gerador de senhas para te auxiliar na sua segurança digital.', 'img/github.svg', 'https://renzonogueira.github.io/Password-Generator/', 'https://github.com/RenzoNogueira/Password-Generator');

-- --------------------------------------------------------

--
-- Estrutura da tabela `principais_projetos`
--

CREATE TABLE `principais_projetos` (
  `id` int(11) NOT NULL,
  `id_projeto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `principais_projetos`
--

INSERT INTO `principais_projetos` (`id`, `id_projeto`) VALUES
(1, 1),
(3, 2),
(2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `user`, `password`) VALUES
(1, 'Renzo da silva Soares Nogueira', 'Renzo_Nogueira', 'SGFja2VyMTIzNDU2Nzg5');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `portifolio`
--
ALTER TABLE `portifolio`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `principais_projetos`
--
ALTER TABLE `principais_projetos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_projeto` (`id_projeto`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `portifolio`
--
ALTER TABLE `portifolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `principais_projetos`
--
ALTER TABLE `principais_projetos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
