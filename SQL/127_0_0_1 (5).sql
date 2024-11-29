-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 29/11/2024 às 14:11
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_clientes`
--
CREATE DATABASE IF NOT EXISTS `bd_clientes` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci;
USE `bd_clientes`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_clientes`
--

DROP TABLE IF EXISTS `tb_clientes`;
CREATE TABLE IF NOT EXISTS `tb_clientes` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nascto` date NOT NULL,
  `fotoUrl` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `senha` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`codigo`, `nome`, `email`, `telefone`, `nascto`, `fotoUrl`, `senha`) VALUES
(1, 'Guilherme Marques', 'guilhermetoptopdostop@gmail.com', '(21)31', '2024-05-30', 'fotosClientes/f3e1e58284461f529c43ab52db366c79.jpg', '202cb962ac59075b964b07152d234b70');
--
-- Banco de dados: `bd_cliente_camisa`
--
CREATE DATABASE IF NOT EXISTS `bd_cliente_camisa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bd_cliente_camisa`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `numeroPedido` int NOT NULL AUTO_INCREMENT,
  `clientePedido` int NOT NULL,
  `dataPedido` date NOT NULL,
  `itensPedido` varchar(200) NOT NULL,
  `precoPedido` int NOT NULL,
  PRIMARY KEY (`numeroPedido`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`numeroPedido`, `clientePedido`, `dataPedido`, `itensPedido`, `precoPedido`) VALUES
(1, 0, '2024-06-19', '2', 349),
(2, 0, '2024-06-21', '7, 1', 648);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `nomeCamisa` varchar(40) NOT NULL,
  `infoProduto` varchar(300) NOT NULL,
  `precoProduto` double NOT NULL,
  `timeProduto` varchar(20) NOT NULL,
  `codProduto` int NOT NULL AUTO_INCREMENT,
  `fotoProduto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `generoPro` varchar(255) DEFAULT 'Masculina',
  `regiao` varchar(50) DEFAULT 'brasil',
  PRIMARY KEY (`codProduto`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`nomeCamisa`, `infoProduto`, `precoProduto`, `timeProduto`, `codProduto`, `fotoProduto`, `generoPro`, `regiao`) VALUES
('Camisa Botafogo I 24/25', 'A Reebok traz essa nova camisa do Botofogo,com excelente material,alêm do estilo classico do clube.', 349, 'Botafogo', 1, '../PICS/fotosProdutos/Botafogo/500c6fb2c83ffe395faeb50cd6bdb4f6.jpg', 'Masculina', 'brasil'),
('Camisa Botafogo II 24/25', 'Camisa secundaria Botafogo,simples e basica trazendo a essencia do clube.', 349, 'Botafogo', 2, '../PICS/fotosProdutos/Botafogo/05ba0b215adafdfaa7acf3673f123e23.jpg', 'Feminina', 'brasil'),
('Camisa Flamengo I 24/25', 'Homenageie o Mengão com um toque moderno. Esta camisa adidas do primeiro uniforme do Flamengo moderniza um dos uniformes mais icônicos do futebol. Por trás do novo visual, o tecido AEROREADY antitranspirante mantém os torcedores confortáveis, seja para torcer nas arquibancadas ou assistir ao jogo na', 349, 'Flamengo', 3, '../PICS/fotosProdutos/Flamengo/2bd6db558ea4cafd3523ae4c9bcc0480.jpg', 'Feminina', 'brasil'),
('Camisa Flamengo II 24/25', 'É na batida do Mengão. Esta camisa adidas do segundo uniforme do Flamengo. Por trás do novo visual, o tecido AEROREADY antitranspirante mantém os torcedores confortáveis, seja para torcer nas arquibancadas ou assistir ao jogo na TV. O escudo bordado ajuda a turbinar a sua paixão pelo time.', 349, 'Flamengo', 5, '../PICS/fotosProdutos/Flamengo/1e6597a34fa57a1ce8d325f5f7c8bb64.jpg', 'Feminina', 'brasil'),
('Camisa Bahia I 24/25', 'A camisa titular do Tricolor de Aço tem a cor branca predominante e traz como destaque uma faixa vertical tricolor que percorre região central do manto, sendo interrompida na barriga, para a aplicação do patrocínio master da Esportes da Sorte, mas que traz referências à bandeira do Estado, com o tri', 329, 'Bahia', 6, '../PICS/fotosProdutos/Bahia/bab8096c68403ffb809bc6d2cc2f90e8.jpg', 'Masculina', 'brasil'),
('Camisa Bahia II 24/25', 'A camisa do Bahia Tricolor Esquadrão Oficial é a pedida certa para os torcedores vestirem sua paixão pelo Tricolor baiano.Produzida em 100% poliéster leve e respirável, modelo na versão torcedor, com preço mais acessível. A peça conta com um design ousado e moderno, nas cores tradicionais, conta', 299, 'Bahia', 7, '../PICS/fotosProdutos/Bahia/21699e1bcf2104bc4f94a59f4c47dd43.jpg', 'Masculina', 'brasil'),
('Camisa São Paulo I 24/25', 'Sentimento que jamais acabará! A New Balance apresenta o novo uniforme do Tricolor Paulista para a temporada 2024, exaltando os 94 anos de história com glórias do passado e conquistas do presente, defendendo as três cores de um amor que alimenta a paixão de mais de 20 milhões de torcedores.', 349, 'São Paulo', 8, '../PICS/fotosProdutos/São Paulo/92bc9823c0873e2a1f8d9efc793ddaeb.jpg', 'Masculina', 'brasil'),
('Camisa São Paulo II 24/25', 'Celebre a história e a glória do São Pauli com a nova camisa II para torcedores da New Balance. Esta peça não é apenas uma vestimenta, é um tributo à tradição e aos triunfos do clube ao longo dos anos.', 349, 'São Paulo', 9, '../PICS/fotosProdutos/São Paulo/22c7cf32b2218180bb4e087eab0295f2.jpg', 'Masculina', 'brasil'),
('Camisa Atlético-PR II 24/25', 'Celebre todas as conquistas e vitórias do CAP com a nova Camisa Masculina Athletico Paranaense Jogador Oficial 2 2024! Seja o primeiro a vestir o orgulho rubro-negro, a camisa oficial 2024 é confeccionada em poliéster de alta qualidade, é feita para os torcedores que não abrem mão do conforto e esti', 329, 'Athletico-PR', 10, '../PICS/fotosProdutos/Athletico-PR/edc0f0654d3ce42b530976ecae7481a9.jpg', 'Masculina', 'brasil'),
('Camisa Atlético-PR I 24/25', 'A Umbro exibe a camisa I do Athletico Paranaense para 2024, ideal para o jovem fanático celebrar o centenário do Furacão. O manto traz design em vermelha, com 4 listras diagonais pretas, que dão a sensação de movimento e ritmo frenético que marcam o jogo do time.', 339, 'Athletico-PR', 11, '../PICS/fotosProdutos/Athletico-PR/7d698b9d6a8fa5f55dabc32f29a5fe28.jpg', 'Masculina', 'brasil'),
('Camisa Atlético-MG I 24/25', 'O manto 1 de 2024 é a expressão perfeita de amor e paixão pelo clube! Com um design tradicional e sofisticado em preto, branco, o manto 1 é um verdadeiro tesouro. Nosso escudo estampado em no peito esquerdo mostra sua fidelidade ao Galo. Confeccionada em tecido respirável e confortável, ela é ideal ', 349, 'Atlético-MG', 12, '../PICS/fotosProdutos/Atlético-MG/c37c44e4cb4f3bd410cd49a17726c46a.jpg', 'Masculina', 'brasil'),
('Camisa Atlético-MG II 23/24', 'Uma nova casa precisa de um novo fardamento. A Camisa Atlético Mineiro II 23/24 s/n° Torcedor Adidas Masculina te acompanha na hora de torcer pelo Galo e assistir aos jogos no novo estádio. Essa camisa Atlético Mineiro masculina é predominantemente branca com mangas na cor cinza e listras laterais, ', 310, 'Atlético-MG', 13, '../PICS/fotosProdutos/Atlético-MG/247d5e0eee6555d867a52f1f3bc55be9.jpg', 'Masculina', 'brasil'),
('Camisa RedBull Bragantino I 22/23', 'Um clube tradicional de Bragança Paulista trazendo este  manto  representando bem sua reconstrução e grandeza do clube.', 199, 'Red Bull Bragantino', 14, '../PICS/fotosProdutos/Red Bull Bragantino/32aa19814a97acf05fe854539e6850f1.jpg', 'Masculina', 'brasil'),
('Camisa RedBull Bragantino II 23/24', 'Manto recente do RedBull bragantino fornecido pela New Balance, trazendo linhas vermelhas e um fundo branco, mostrando modernidade e grandeza do clube neste uniforme 2.', 259, 'Red Bull Bragantino', 15, '../PICS/fotosProdutos/Red Bull Bragantino/b70261fa0fe186d2a8f3197807d879c8.jpg', 'Masculina', 'brasil'),
('Camisa Palmeiras I 23/24', 'Monstre o seu orgulho pelo Palmeiras com a nova camisa 1 home temporada 2023/24. Em uma cor verde vibrante, esta camisa é o iter perfeito para torcedores apaixonados e jogaodres de futebol. O patroci´nio da Puma adiciona um toque de marca ao design, enquanto a gola redonda clássica adiciona elegânci', 259, 'Palmeiras', 16, '../PICS/fotosProdutos/Palmeiras/42d366562024cb684390f379d1e3d0c8.jpg', 'Masculina', 'brasil'),
('Camisa Palmeiras II 23/24', 'Autêntica camisa usada pelos seus ídolos em campo, feita com o mesmo tecido tecnológico de alta absorção e branding oficial do time. Produto com selo de autenticidade emborrachado e texturizado aplicado na barra da camisa. Todos os produtos originais da PUMA possuem tag com selo holográfico com dist', 259, 'Palmeiras', 17, '../PICS/fotosProdutos/Palmeiras/436f8a0ee3daf7dde9a7ea63be1e8cf9.jpg', 'Masculina', 'brasil'),
('Camisa Cruzeiro I 24/25', 'A Raposa está preparada para fazer história com a Camisa Cruzeiro I 24/25 s/n° Torcedor Adidas Masculina! Com inspiração nos uniformes de 94, essa camisa do Cruzeiro apresenta tom predominantemente azul, listras brancas nos ombros, estrelas soltas no lado esquerdo do peito e formas de losangos na pa', 350, 'Cruzeiro', 21, '../PICS/fotosProdutos/Cruzeiro/ba6fd67061447e051a90e7903b4dd077.jpg', 'Masculina', 'brasil'),
('Camisa Inter I 24/25', 'O começo da temporada pede por um novo manto. Complete seu fardamento na hora de torcer pelo Colorado com a Camisa Internacional I 23/24 s/n° Torcedor Adidas Masculina! Em tom predominantemente vermelho, a peça apresenta gola em V e listras nas mangas que trazem uma tonalidade mais forte. O composto', 349, 'Internacional', 19, '../PICS/fotosProdutos/Internacional/4476ef08e3d79fc695a1e448ca82d8df.jpg', 'Masculina', 'brasil'),
('Camisa Inter II 23/24', 'O Colorado está pronto para os desafios da nova temporada com a Camisa Internacional II 23/24 s/n° Torcedor Adidas Masculina! Utilizada como segundo uniforme para a temporada, essa camisa do Inter masculina apresenta gola V, listras transversais e mangas com tom em vermelho mais escuro. O composto t', 367, 'Internacional', 20, '../PICS/fotosProdutos/Internacional/d0d8bcdbead24872135f33cf19f45ab3.jpg', 'Masculina', 'brasil'),
('Camisa Cruzeiro II 24/25', 'A Raposa está preparada para fazer história com a Camisa Cruzeiro II 24/25 s/n° Torcedor Adidas Masculina! Com inspiração nos uniformes de 94, essa camisa do Cruzeiro apresenta tom predominantemente branco, faixas azuis em detalhe e estrelas dispostas no lado esquerdo do peito. O tecido tecnológico ', 349, 'Cruzeiro', 22, '../PICS/fotosProdutos/Cruzeiro/265500947a2f68e0e085204c80bdce1e.jpg', 'Masculina', 'brasil'),
('Camisa Fortaleza I 23/24', 'Camisa do leão, mostrando a elegância do maior do nordeste, a volt traz materiais de alta tecnologia e qualidade, representando a verdadeira essência de Fortaleza ', 299, 'Fortaleza', 23, '../PICS/fotosProdutos/Fortaleza/de1527283e700a1266022b69bbff0c19.jpg', 'Masculina', 'brasil'),
('Camisa Fortaleza II 23/24', 'Segundo manto do leão do nordeste, trazendo classe e elegância para o clube, com faixa diagonal é a novidade da camisa do Fortaleza.', 299, 'Fortaleza', 24, '../PICS/fotosProdutos/Fortaleza/57b8e6c31a3ba7fa6b4b0019e52f8a73.jpg', 'Masculina', 'brasil'),
('Camisa Juventude II 23/24', 'amisa Branca Oficial  TEMPORADA 2023 – Masculina Manga Curta\r\n\r\nINFORMAÇÕES DO PRODUTO:\r\nNome: Camisa  Branca Oficial  TEMPORADA 2023 – Masculina Manga Curta\r\nMarca: 19Treze\r\nGênero: Masculina\r\nComposição: Poliéster 100%\r\nGarantia: Contra defeito de fabricação', 279, 'Juventude', 25, '../PICS/fotosProdutos/Juventude/3722de895abfbc360be68d23e743b426.jpg', 'Masculina', 'brasil'),
('Camisa Juventude I 23/24', 'Camisa  Listrada Oficial  TEMPORADA 2023 – Masculina Manga Curta\r\n\r\nINFORMAÇÕES DO PRODUTO:\r\nNome: Camisa  Listrada Oficial  TEMPORADA 2023 – Masculina Manga Curta\r\nMarca: 19Treze\r\nGênero: Masculina\r\nComposição: Poliéster 100%\r\nGarantia: Contra defeito de fabricação', 279, 'Juventude', 26, '../PICS/fotosProdutos/Juventude/8405f044424e8ae143f305c8e2874c48.jpg', 'Masculina', 'brasil'),
('Camisa Corinthians II 24/25', 'Faça parte da batalha contra o racismo com a Camisa Corinthians II 24/25 s/n° Torcedor Nike Masculina! Pioneiro contra o preconceito racial, o Corinthians e o Observatório da Discriminação Racial no Futebol entram em campo na luta antirracista, promovendo o novo manto para a temporada, que é mais do', 332, 'Corinthians', 37, '../PICS/fotosProdutos/Corinthians/bab449c48e96f686843ec6b460b5c717.jpg', 'Masculina', 'brasil'),
('Camisa Grêmio II 24/25', 'A Camisa do Grêmio Oficial 2 2024 Jogador Masculina homenageia um dos símbolos mais famosos do povo gaúcho, o Chimarrão. A peça conta com design personalizado e exibe na barra externa etiqueta com desenho minimalista do Campo, Mate e Sol, em referência a uma das bebidas preferidas da população sul-r', 399, 'Grêmio', 29, '../PICS/fotosProdutos/Grêmio/9482e8245360351d7d277012d9e11e2a.jpg', 'Masculina', 'brasil'),
('Camisa Corinthians I 24/25', 'Faça parte da batalha contra o racismo com a Camisa Corinthians I 24/25 s/n° Torcedor Nike Masculina! Pioneiro contra o preconceito racial, o Corinthians e o Observatório da Discriminação Racial no Futebol entram em campo na luta antirracista, promovendo o novo manto para a temporada, que é mais do ', 332, 'Corinthians', 36, '../PICS/fotosProdutos/Corinthians/a1033cd51bd879f23c3a4b0150366548.jpg', 'Masculina', 'brasil'),
('Camisa Gremio I 24/25', 'Celebrando o histórico título da Copa do Brasil de 1989, a Camisa Masculina Grêmio Oficial 1 2024 Torcedor Umbro é ideal para os apaixonados torcedores do Tricolor Gaúcho. O novo manto exibe arte personalizada, inspirada nos resultados das 10 partidas, e etiqueta temática com a silhueta do mapa do B', 359, 'Grêmio', 31, '../PICS/fotosProdutos/Grêmio/35200329fd23a6579b415e563dcfbf7d.jpg', 'Masculina', 'brasil'),
('Camisa Vasco da Gama I 24/25', 'Celebre um dos maiores ídolos da história do Cruzmaltino com a Camisa Vasco I 24/25 Jogador Kappa Masculina! Em homenagem aos 70 anos de Roberto Dinamite, essa camisa do Vasco representa uma combinação de camisas utilizadas pelo ídolo e faz alusão a trajetória de sucesso que culminou em títulos, rec', 349, 'Vasco da Gama', 32, '../PICS/fotosProdutos/Vasco da Gama/5af8793cad2bfa099912b9f86f8bc2bf.jpg', 'Masculina', 'brasil'),
('Camisa Vasco da Gama II 24/25', 'O Gigante da Colina está pronto para os desafios da nova temporada com a Camisa Vasco II 24/25 s/n° Jogador Kappa Masculina! Homenageando as conquistas entre 1997 e 2000, essa camisa Vasco presta tributo especialmente para a camisa de 2000 onde é predominantemente branca com a faixa diagonal preta e', 349, 'Vasco da Gama', 35, '../PICS/fotosProdutos/Vasco da Gama/40cf51682ffb58e34665c8cd43fcf30f.jpg', 'Masculina', 'brasil'),
('Camisa Fluminense I 24/25', 'Celebre todas as conquistas e vitórias do Fluzão com a nova Camisa do Fluminense Masculina Oficial 1 2024! Verde, grená e branco vibram em listras clássicas, enquanto o selo especial celebra o título de Campeão Brasileiro de 1984. A peça é confeccionada em poliéster e possui gola em ribana para comp', 249, 'Fluminense', 38, '../PICS/fotosProdutos/Fluminense/a3ed85ba137f7c2ab7dc7bd5c1a4ff15.jpg', 'Masculina', 'brasil'),
('Camisa Fluminense II 24/25', 'Vista a paixão pelo Tricolor das Laranjeiras, com a nova armadura II do Flu para 2024, criada pela Umbro. O manto celebra a paixão dos cariocas pelas praias, trazendo, nas faixas diagonais, textura lembrando a areia delas, além de contar com selo especial.', 269, 'Fluminense', 39, '../PICS/fotosProdutos/Fluminense/5707eec22244f6d86bb116513fbdce1f.jpg', 'Masculina', 'brasil'),
('Camisa Criciúma I 24/25', 'Produzido pela Volt Sport, o modelo é predominante na cor Amarela. Possui detalhes em preto. Confeccionada no tecido ‘Jacquard’ e ‘Ride New’, o escudo do clube aparece do lado esquerdo, aplicado em TPU, agregando tecnologia ao produto. A gola, com decote em V, é dividida em preto e amarelo, possui e', 199, 'Criciúma', 40, '../PICS/fotosProdutos/Criciúma/c8b24a03d18bdba487c42211310edcbf.jpg', 'Masculina', 'brasil'),
('Camisa Criciúma II 24/25', 'A 2ª camisa para a temporada 2024 do Criciúma, assinada pela Volt Sport, fornecedora de material esportivo do clube, tem a cor branca predominante, com detalhes em preto e amarelo nas mangas, laterais e gola.\r\n\r\nAlém disso, por referenciar o mascote oficial da instituição, o Tigre, o manto conta com', 199, 'Criciúma', 41, '../PICS/fotosProdutos/Criciúma/a1c8286017a838d1e72dcac0eba13ef0.jpg', 'Masculina', 'brasil'),
('Camisa Atlético-GO II 24/25', 'A Dragão Premium lançou oficialmente a nova camisa titular do Atlético-GO para 2023-2024, temporada em que o clube disputa o Campeonato Brasileiro da Série B. O novo manto titular traz uma inovação na faixa transversal, homenageando o primeiro título estadual do time, em 1944. A camisa titular do At', 199, 'Atlético-GO', 42, '../PICS/fotosProdutos/Atlético-GO/3638b6ae2775bf6b494bcc7e866522d2.jpg', 'Masculina', 'brasil'),
('Camisa Atlético-GO I 24/25', 'egundo o clube, a inversão da faixa remete à camisa de 1944, ano da conquista do primeiro título estadual. Sobre o corpo, é colocado um padrão quadriculado, característicos do estilo Art Déco, tendência na época da fundação de Goiânia e perceptível em monumentos históricos da capital, como por exemp', 199, 'Atlético-GO', 43, '../PICS/fotosProdutos/Atlético-GO/f2241a938c493d60af8aebc8d0749951.jpg', 'Masculina', 'brasil'),
('Camisa Cuiba I 24/25', 'A Kappa exibe a nova camisa titular do Cuiabá para 2024, o manto ideal para os torcedores do Dourado vestirem toda paixão pelo clube. O uniforme possui design na cor amarela com listras em verde, além de trazer o escudo do time bordado em destaque no tórax.', 269, 'Cuiabá', 44, '../PICS/fotosProdutos/Cuiabá/fc4562ef533fb9a6f695a57a08ee8ecc.jpg', 'Masculina', 'brasil'),
('Camisa Cuiba II 23/24', 'A Kappa exibe a nova camisa reserva do Cuiabá para 2024, o manto que faz sentir na pele todo orgulho de vestir as cores do Dourado. O uniforme possui design na cor branca com detalhes em verde e amarelo nos punhos e gola, além de trazer o escudo bordado.', 269, 'Cuiabá', 45, '../PICS/fotosProdutos/Cuiabá/b1dd138f3629cf8c6ef80e74adb33403.jpg', 'Masculina', 'brasil'),
('Camisa Vitória II 24/25', 'O modelo conta com a tecnologia do tecido Dry Ray, presente nos modelos desenvolvidos pela Volt Sport, com a composição feita em 100% poliéster e proteção contra raios solares e propriedades térmicas.', 279, 'Vitória', 46, '../PICS/fotosProdutos/Vitória/81f22c208495c97886567f3ebffc4d07.jpg', 'Masculina', 'brasil'),
('Camisa Vitória I 24/25', 'O novo uniforme conta com a tecnologia do tecido Dry Ray, presente nos modelos desenvolvidos pela Volt Sport, com a composição feita em 100% poliéster e proteção contra raios solares e propriedades térmicas, além de também ter recortes nos ombros e nas laterais, o escudo em tpu bordado, o ano de fun', 279, 'Vitória', 47, '../PICS/fotosProdutos/Vitória/661b2ef0e186872310a0f4d3c4add100.jpg', 'Masculina', 'brasil'),
('Camisa América-MG I 22/23', 'Os novos uniformes contam com a tecnologia do tecido Dry Ray, presente nos modelos desenvolvidos pela Volt Sport, com a composição feita em 100% poliéster e proteção contra raios solares e propriedades térmicas, além de também ter o escudo e a etiqueta em TPU.\r\n', 259, 'América-MG', 48, '../PICS/fotosProdutos/América-MG/50525e3c5e786df8696b0cb64ccc580c.jpg', 'Masculina', 'brasil'),
('Camisa América-MG II 22/23', 'Produzidos pela Volt Sport, o modelo é predominantemente branco. Assim como a camisa principal, traz referências ao “Abacate-Atômico”, elenco que ficou conhecido por conquistar o Campeonato Mineiro de 1971 de forma invicta.\r\n\r\nConfeccionada no tecido ‘Jacquard’ e ‘Ride New’, o escudo do clube aparec', 259, 'América-MG', 49, '../PICS/fotosProdutos/América-MG/13b0ea870a57f977493cf9ed32676c5e.jpg', 'Masculina', 'brasil'),
('Camisa Avaí II 22/23', 'A nova Camisa Treino do Avaí 22/23 traz o Leão da Ilha como protagonista.\r\nO mascote da década de 50 que representa a força e a bravura da Nação Avaiana chega na camisa azul como símbolo do elo entre o time e a torcida.\r\n\r\nOs detalhes da arte do Leão com a sigla do clube na parte frontal foram pensa', 169, 'Avaí', 50, '../PICS/fotosProdutos/Avaí/29dd2b93cfab7a8ce44305c2f2726c80.jpg', 'Masculina', 'brasil'),
('Camisa Avaí I 23/24', 'Apresentamos a camisa Umbro Avaí I 2023/24, uma verdadeira expressão de estilo e desempenho para os amantes do futebol. Com uma composição de 100% poliéster, esta camisa oferece conforto e durabilidade durante toda a partida. Suas mangas curtas são projetadas com um acabamento microperfurado, propor', 159, 'Avaí', 51, '../PICS/fotosProdutos/Avaí/e024bc079a806b20ca1f72d790500ffc.jpg', 'Masculina', 'brasil'),
('Camisa Botafogo-SP I 24/25', 'Chegou o novo uniforme principal do Botafogo-SP que será utilizado pela equipe nas disputas do Campeonato Paulista, Série B e Copa do Brasil em 2024. A camisa é branca e com as faixas tradicionais do clube. O modelo conta com gola retilínea. As listras vermelha e preta contam com detalhes personaliz', 249, 'Botafogo-SP', 52, '../PICS/fotosProdutos/Botafogo-SP/99b18b61555dbb70090661eef258d543.jpg', 'Masculina', 'brasil'),
('Camisa Botafogo-SP II 24/25', 'Chegou o novo uniforme principal do Botafogo-SP que será utilizado pela equipe nas disputas do Campeonato Paulista, Série B e Copa do Brasil em 2024. A camisa é branca e com as faixas tradicionais do clube. O modelo conta com gola retilínea. As listras vermelha e preta contam com detalhes personaliz', 249, 'Botafogo-SP', 53, '../PICS/fotosProdutos/Botafogo-SP/49ff37d433281c0f1af276212e9f230d.jpg', 'Masculina', 'brasil'),
('Camisa Ceará I 24/25', 'Em homanegem ao eterno ídolo Dimas Filgueiras, a Vozão traz a camisa titular do Ceará para 2024. Com design nas cores do clube, o manto traz a ilustração interna do craque, além de contar com a sua assinatura próximo à barra e na nuca \"1944 ao infinito\" estmpado.', 319, 'Ceará', 54, '../PICS/fotosProdutos/Ceará/e058767072044c54823338a5c24aeae9.jpg', 'Masculina', 'brasil'),
('Camisa Ceará II 24/25', 'A camisa II do Ceará para 2024, produzida pela Vozão, foi lançada junto com sócios-torcedores que tem nomes homônimos a ídolos do clube: Sérgio Alves, Mota e João Marcos. Feita em poliéster, a peça carrega o escudo do time no tórax e na nuca a frase \"O Mais Querido Desde 1914\".', 319, 'Ceará', 55, '../PICS/fotosProdutos/Ceará/95d54b54a7a639d51d2d5f19d8ba3462.jpg', 'Masculina', 'brasil'),
('Camisa Chapecoense II 24/25', 'A Camisa da Chapecoense Masculina Oficial 2 2024 Umbro celebra a origem histórica do clube e de Chapecó. Com a cor branca dominante, a peça traz etiqueta e artes gráficas inspiradas na Arena Condá, além de gola bicolor em ribana. Um símbolo de tradição e paixão pelo futebol.', 349, 'Chapecoense', 56, '../PICS/fotosProdutos/Chapecoense/f5d105e53be2cb600f5d4d004c56aeb7.jpg', 'Masculina', 'brasil'),
('Camisa Chapecoense I 23/24', '“Tu és sempre Chapecó”! A Camisa Oficial de Futebol Masculina Umbro Chapecoense 1/2023 foi inspirada nos 50 anos de história do clube. A peça traz gola V, manga curta, recortes nas laterais e selo personalizado. Confeccionado em poliéster, o modelo dá um toque de conforto e estilo em sua torcida.', 349, 'Chapecoense', 57, '../PICS/fotosProdutos/Chapecoense/395762a75df811d53be6477cbc50dc4f.jpg', 'Masculina', 'brasil'),
('Camisa CRB I 24/25', 'A armadura I do CRB para 2024, versão Torcedor, é ideal para todos os Regatianos celebrarem Alagoas e o orgulho pelo Galo da Praia. O manto exibe um selo especial alusivo ao time e ao estado e traz, na barra traseira, a frase: \"Glória à Terra de Alagoas\".', 199, 'CRB', 58, '../PICS/fotosProdutos/CRB/4575551ca5c50062dea35dfe11fecadf.jpg', 'Masculina', 'brasil'),
('Camisa CRB II 24/25', 'A armadura II do CRB para 2024, versão Torcedor, é ideal para todos os Regatianos celebrarem Alagoas e a paixão pelo Galo da Praia. O manto exibe um selo especial alusivo ao time e ao estado e traz, na barra traseira, a frase: \"Glória à Terra de Alagoas\".', 199, 'CRB', 59, '../PICS/fotosProdutos/CRB/4496727ff6c7dab067562a862230d541.jpg', 'Masculina', 'brasil'),
('Camisa Guarani I 24/25', 'A Kappa apresenta a nova camisa I do Guarani para 2024, o manto ideal para os bugrinos reviverem as memórias do inesquecível título brasileiro de 78. O uniforme traz tecido jacquard formado por diversos \"Gs\", alusivos ao escudo usado na época da conquista.', 269, 'Guarani', 60, '../PICS/fotosProdutos/Guarani/4d71c6ef3fe7fa3ca2b05e5fc7ab3ded.jpg', 'Masculina', 'brasil'),
('Camisa Guarani II 24/25', 'A Kappa exibe a nova camisa II do Guarani para 2024, criada para os bugrinos reviverem todas as memórias do histórico título Brasileiro de 78. O uniforme traz tecido em jacquard formado por diversos \"Gs\", alusivos ao escudo usado na época da conquista.', 269, 'Guarani', 61, '../PICS/fotosProdutos/Guarani/b39becaf94fd0c3374b59c48f0f48df0.jpg', 'Masculina', 'brasil'),
('Camisa Ituano I 24/25', 'Em homenagem a conquista do bicampeonato paulista em 2014, A Alluri apresenta a camisa I do Ituano para 2024. Confeccionada em poliéster e elastano, a peça possui design nas cores do clube com faixas horizontais, além de carregar o escudo do time no tórax.', 179, 'Ituano', 62, '../PICS/fotosProdutos/Ituano/a8382d5ceb9f51d99f979c4012beb919.jpg', 'Masculina', 'brasil'),
('Camisa Ituano II 24/25', 'Desenvolvida pela Alluri, a camisa II do Ituano para 2024, relembra a conquista do bicampeonato Paulista em 2014, perfeita para o torcedor fanático pelo Galo de Itu. O manto é feito em poliéster, exibe design na cor branca e escudo aplicado no tórax.', 179, 'Ituano', 63, '../PICS/fotosProdutos/Ituano/9cfce95724aa915f5597f827f6ea9e81.jpg', 'Masculina', 'brasil');

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro`
--

DROP TABLE IF EXISTS `registro`;
CREATE TABLE IF NOT EXISTS `registro` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `cpf` int NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `telefone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nascto` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `senha` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fotoUrl` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `registro`
--

INSERT INTO `registro` (`codigo`, `nome`, `email`, `cpf`, `sexo`, `telefone`, `nascto`, `time`, `senha`, `fotoUrl`) VALUES
(1, 'ADM', 'adm@roost.com', 0, 'opcao1', '(00)00000-0000', '0001-01-01', 'Selecionar', '202cb962ac59075b964b07152d234b70', 'fotosClientes/0b4f0bb7d099d838f805780838844939.jpg'),
(2, 'Guilherme Marques', 'gamaiagamer@outlook.com', 1231123123, 'opcao1', '(11)93338-0719', '2006-10-09', '0', '202cb962ac59075b964b07152d234b70', 'fotosClientes/2a37b7cab570322866ea90e6da289ec5.jpg'),
(3, 'GUILHERME MARQUES CARDOSO DOS SANTOS', 'guilhermetoptopdostop@gmail.com', 1231231231, 'opcao1', '11958124482', '2024-11-08', 'Fluminense', '202cb962ac59075b964b07152d234b70', 'fotosClientes/1df6a27e174834e93745b23463c317d9.jpg'),
(4, '', '', 0, '', '', '0000-00-00', '', 'd41d8cd98f00b204e9800998ecf8427e', '../PICS/fotosClientes/30a658e8135dd721af44bbc23821'),
(5, 'GUILHERME MARQUES CARDOSO DOS SANTOS', 'guigui@teste.com', 2147483647, 'opcao1', '11958124482', '2024-11-14', 'Fluminense', '202cb962ac59075b964b07152d234b70', '../PICS/fotosClientes/60c99ba2b4376ee940dbff2d529b'),
(6, 'GUILHERME MARQUES CARDOSO DOS SANTOS', 'guiguiteste2@gmail.com', 2147483647, 'opcao1', '12313132131', '2024-11-01', 'Criciúma', '202cb962ac59075b964b07152d234b70', '../PICS/fotosClientes/dc59da7101b498769d9f1e6a9af6'),
(7, 'GUILHERME MARQUES CARDOSO DOS SANTOS', 'guigui3@teste.com', 153, 'opcao1', '123131313131', '2024-11-06', 'Grêmio', '202cb962ac59075b964b07152d234b70', '../PICS/fotosClientes/e8759f6f540e3e24d79091b7511c1397.jpg');
--
-- Banco de dados: `save`
--
CREATE DATABASE IF NOT EXISTS `save` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `save`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `caixinha_sonhos`
--

DROP TABLE IF EXISTS `caixinha_sonhos`;
CREATE TABLE IF NOT EXISTS `caixinha_sonhos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `nome_meta` varchar(255) NOT NULL,
  `valor_meta` decimal(10,2) NOT NULL,
  `valor_atual` decimal(10,2) DEFAULT '0.00',
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `caixinha_sonhos`
--

INSERT INTO `caixinha_sonhos` (`id`, `user_id`, `nome_meta`, `valor_meta`, `valor_atual`, `data_criacao`) VALUES
(1, 3, 'Viagem', 1000.00, 3000.00, '2024-11-18 23:05:59'),
(2, 3, 'GATO', 123333.00, 99999999.99, '2024-11-18 23:07:31'),
(3, 3, '1000', 200.00, 2000.00, '2024-11-18 23:16:10'),
(4, 3, 'Guilherme', 12332.00, 101000.00, '2024-11-19 00:12:14'),
(5, 2, 'Gava', 123.00, 1113.00, '2024-11-19 02:26:22'),
(6, 4, 'GATO', 123.00, 11111.00, '2024-11-19 14:18:08'),
(7, 5, 'Viagem paris', 5000.00, 5000.00, '2024-11-19 15:09:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gastosfix`
--

DROP TABLE IF EXISTS `gastosfix`;
CREATE TABLE IF NOT EXISTS `gastosfix` (
  `Id_gastoFix` int NOT NULL AUTO_INCREMENT,
  `Nomes_gastos` text NOT NULL,
  `Valores_gastos` text NOT NULL,
  `Id_User` int DEFAULT NULL,
  PRIMARY KEY (`Id_gastoFix`),
  UNIQUE KEY `Id_User` (`Id_User`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `gastosfix`
--

INSERT INTO `gastosfix` (`Id_gastoFix`, `Nomes_gastos`, `Valores_gastos`, `Id_User`) VALUES
(1, '1231,1231,1231232,qweqweqweqe1,qweqeqweq', '31231,1,13123213,23131,3213131', 1),
(2, 'Gamaia,Analize', '123,231', 2),
(3, '123123,321131321', '12,32', 3),
(4, '1231', '31231', 4),
(5, 'Agua,Luz,Aluguel,Gato', '111,120,1000,100', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `informacao`
--

DROP TABLE IF EXISTS `informacao`;
CREATE TABLE IF NOT EXISTS `informacao` (
  `Id_Informacao` int NOT NULL AUTO_INCREMENT,
  `saldo` decimal(10,2) NOT NULL,
  `Nomes_Dividas` text NOT NULL,
  `Valores_Dividas` text NOT NULL,
  `Tempo_Dividas` text NOT NULL,
  `Juros_Dividas` text NOT NULL,
  `Id_User` int DEFAULT NULL,
  `nivel` int DEFAULT NULL,
  `status_divida` varchar(10) DEFAULT 'ativo',
  `valor_reserva` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`Id_Informacao`),
  UNIQUE KEY `Id_User` (`Id_User`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `informacao`
--

INSERT INTO `informacao` (`Id_Informacao`, `saldo`, `Nomes_Dividas`, `Valores_Dividas`, `Tempo_Dividas`, `Juros_Dividas`, `Id_User`, `nivel`, `status_divida`, `valor_reserva`) VALUES
(1, 1000.00, '123,gamaia,gamaia2,oi123,Gamaia', '1231,123,1232,1231,123', '3123128,321,3212,312,0', '312,1231,12312,31231,1', 1, 1, 'ativo', 0.00),
(2, 33432.00, 'Seila,adasdad,1,2,3,adassdada,Alisson', '123,1231,1,2,3,123,112222', '0,229,0,0,0,0,0', '23,12321,1,1,3,213,2', 2, 2, 'ativo', 0.00),
(3, 1000.00, 'fafajfaj1,eqeqwewq', '1231,12', '312,0', '13231,3', 3, 3, 'ativo', 5579.00),
(4, 123213.13, '213123', '13131', '31', '313131', 4, 2, 'ativo', 1000.00),
(5, 1200.00, 'Tenis,Gaz', '122,99', '3,2', '1,0', 5, 3, 'ativo', 100.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `missoes`
--

DROP TABLE IF EXISTS `missoes`;
CREATE TABLE IF NOT EXISTS `missoes` (
  `id_missao` int NOT NULL AUTO_INCREMENT,
  `nivel` int NOT NULL,
  `descricao` text NOT NULL,
  `recompensa` varchar(50) NOT NULL,
  PRIMARY KEY (`id_missao`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `missoes`
--

INSERT INTO `missoes` (`id_missao`, `nivel`, `descricao`, `recompensa`) VALUES
(1, 1, 'Aprender a fazer um orçamento básico', 'Badge: Primeiro Orçamento'),
(2, 1, 'Pagar dívidas mais urgentes', '10 pontos'),
(3, 1, 'Criar uma lista de prioridades financeiras', '5 pontos'),
(4, 2, 'Fazer uma reserva de emergência', 'Badge: Começo da Reserva'),
(5, 2, 'Identificar 3 despesas desnecessárias e cortar gastos', '20 pontos'),
(6, 2, 'Guardar uma pequena quantia em poupança', '10 pontos'),
(7, 3, 'Investir 10% do valor reservado em uma aplicação de baixo risco', 'Badge: Investidor Iniciante'),
(8, 3, 'Criar um plano financeiro de longo prazo', '50 pontos'),
(9, 3, 'Aumentar a reserva de emergência para 3 meses de salário', 'Badge: Reserva Completa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `missoes_usuarios`
--

DROP TABLE IF EXISTS `missoes_usuarios`;
CREATE TABLE IF NOT EXISTS `missoes_usuarios` (
  `id_usuario` int NOT NULL,
  `id_missao` int NOT NULL,
  `progresso` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_usuario`,`id_missao`),
  KEY `id_missao` (`id_missao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `recompensas`
--

DROP TABLE IF EXISTS `recompensas`;
CREATE TABLE IF NOT EXISTS `recompensas` (
  `id_recompensa` int NOT NULL AUTO_INCREMENT,
  `descricao` text NOT NULL,
  `criterio` text NOT NULL,
  PRIMARY KEY (`id_recompensa`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `recompensas`
--

INSERT INTO `recompensas` (`id_recompensa`, `descricao`, `criterio`) VALUES
(1, 'Badge: Primeiro Orçamento', 'Completar 1ª missão do Plano 1'),
(2, '10 pontos', 'Pagar uma dívida no Plano 1'),
(3, 'Badge: Começo da Reserva', 'Completar todas as missões do Plano 2'),
(4, '20 pontos', 'Identificar e cortar 3 despesas no Plano 2'),
(5, 'Badge: Investidor Iniciante', 'Completar 1ª missão do Plano 3'),
(6, 'Badge: Reserva Completa', 'Aumentar a reserva de emergência para 3 meses no Plano 3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `recompensas_usuarios`
--

DROP TABLE IF EXISTS `recompensas_usuarios`;
CREATE TABLE IF NOT EXISTS `recompensas_usuarios` (
  `id_usuario` int NOT NULL,
  `id_recompensa` int NOT NULL,
  `data_desbloqueio` date DEFAULT NULL,
  PRIMARY KEY (`id_usuario`,`id_recompensa`),
  KEY `id_recompensa` (`id_recompensa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro`
--

DROP TABLE IF EXISTS `registro`;
CREATE TABLE IF NOT EXISTS `registro` (
  `Id_user` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `genero` varchar(40) NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nascto` date NOT NULL,
  `senha` varchar(40) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `nivel` int NOT NULL,
  PRIMARY KEY (`Id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `registro`
--

INSERT INTO `registro` (`Id_user`, `nome`, `email`, `cpf`, `genero`, `telefone`, `nascto`, `senha`, `foto`, `nivel`) VALUES
(1, 'Teste', 'teste@teste.com', '111.111.111-11', 'Masculino', '(00) 00000-0000', '2024-10-28', '123', '../clientes/fotosClientes/Teste.jpg', 2),
(2, 'Guilherme Teste Marques', 'teste1@gamail.com', '123.131.313-23', 'Masculino', '(12) 31323-3123', '0000-00-00', '123', '../clientes/fotosClientes/Guilherme Teste Marques.jpg', 2),
(4, 'Guilherme Marques Cardoso Dos Santos', 'teste@hteste.com', '123.131.312-13', 'Masculino', '(11) 95812-4482', '0000-00-00', '123', 'https://api.dicebear.com/8.x/initials/svg?seed=Guilherme Marques Cardoso Dos Santos&backgroundColor=ff6d00\r\n            ', 2),
(3, 'Guilherme Marques Cardoso Dos Santos', 'teste123@gmail.com', '131.231.321-32', 'Masculino', '(11) 95812-4482', '0000-00-00', '123', 'https://api.dicebear.com/8.x/initials/svg?seed=Guilherme Marques Cardoso Dos Santos&backgroundColor=ff6d00\r\n            ', 2),
(5, 'Guilherme Marques', 'guilherme@gmail.com', '111.111.111-11', 'Masculino', '(11) 11111-1111', '2006-10-09', '202cb962ac59075b964b07152d234b70', 'https://api.dicebear.com/8.x/initials/svg?seed=Guilherme Marques&backgroundColor=ff6d00\r\n            ', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id_video` int NOT NULL AUTO_INCREMENT,
  `nivel` int NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `perguntas` text,
  PRIMARY KEY (`id_video`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `videos`
--

INSERT INTO `videos` (`id_video`, `nivel`, `titulo`, `url`, `perguntas`) VALUES
(1, 1, 'Como criar um orçamento simples', 'https://www.youtube.com/watch?v=exemplo1', '[\"O que é orçamento?\",\"Por que é importante?\"]'),
(2, 1, 'Conceitos básicos sobre juros e dívidas', 'https://www.youtube.com/watch?v=exemplo2', '[\"O que é taxa de juros?\",\"Como calcular juros simples?\"]'),
(3, 2, 'Como fazer uma reserva de emergência', 'https://www.youtube.com/watch?v=exemplo3', '[\"O que é uma reserva de emergência?\",\"Quanto reservar?\"]'),
(4, 2, 'Como cortar despesas e otimizar orçamento', 'https://www.youtube.com/watch?v=exemplo4', '[\"Quais despesas cortar primeiro?\",\"Como identificar gastos supérfluos?\"]'),
(5, 3, 'Introdução aos investimentos de baixo risco', 'https://www.youtube.com/watch?v=exemplo5', '[\"O que é baixo risco?\",\"Quais investimentos são considerados seguros?\"]'),
(6, 3, 'Como criar um plano financeiro robusto', 'https://www.youtube.com/watch?v=exemplo6', '[\"Quais são os componentes de um plano financeiro?\",\"Como planejar para o longo prazo?\"]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `videos_usuarios`
--

DROP TABLE IF EXISTS `videos_usuarios`;
CREATE TABLE IF NOT EXISTS `videos_usuarios` (
  `id_usuario` int NOT NULL,
  `id_video` int NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_usuario`,`id_video`),
  KEY `id_video` (`id_video`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Banco de dados: `tech`
--
CREATE DATABASE IF NOT EXISTS `tech` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `tech`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro`
--

DROP TABLE IF EXISTS `registro`;
CREATE TABLE IF NOT EXISTS `registro` (
  `email` varchar(60) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `nomeCompleto` varchar(60) NOT NULL,
  `data` date NOT NULL,
  `Cliente` int NOT NULL,
  PRIMARY KEY (`Cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Banco de dados: `teste`
--
CREATE DATABASE IF NOT EXISTS `teste` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `teste`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `cod_dep` int NOT NULL AUTO_INCREMENT,
  `descr` varchar(40) NOT NULL,
  `localiz` varchar(30) NOT NULL,
  PRIMARY KEY (`cod_dep`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
