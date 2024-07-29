-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 30 juil. 2024 à 00:08
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e-airneis_final`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `designers`
--

CREATE TABLE `designers` (
  `designer_id` int(11) NOT NULL,
  `designer_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `designers`
--

INSERT INTO `designers` (`designer_id`, `designer_name`, `description`) VALUES
(1, 'Charles Eames', 'Designer américain du XXe siècle, connu pour ses meubles modernes et innovants.'),
(2, 'Arne Jacobsen', 'Architecte et designer danois, célèbre pour ses créations fonctionnelles et intemporelles.'),
(3, 'Philippe Starck', 'Designer français prolifique, reconnu pour son style audacieux et ses objets du quotidien réinventés.'),
(4, 'Patricia Urquiola', 'Architecte et designer espagnole, appréciée pour son approche éclectique et ses matériaux innovants.'),
(5, 'Ronan & Erwan Bouroullec', 'Designers français, connus pour leurs créations minimalistes et poétiques.'),
(6, 'Jasper Morrison', 'Designer britannique, adepte du \"super normal\" et des objets simples et fonctionnels.'),
(7, 'Jean Prouvé', 'Architecte et designer français, pionnier de la construction métallique et du mobilier industriel.'),
(8, 'Charlotte Perriand', 'Architecte et designer française, collaboratrice de Le Corbusier et Pierre Jeanneret.'),
(9, 'Verner Panton', 'Designer danois, célèbre pour ses meubles en plastique aux formes organiques et colorées.'),
(10, 'Achille Castiglioni', 'Designer italien, connu pour son approche expérimentale et ludique du design.');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `materials`
--

CREATE TABLE `materials` (
  `material_id` int(11) NOT NULL,
  `material_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `materials`
--

INSERT INTO `materials` (`material_id`, `material_name`) VALUES
(1, 'Bois'),
(2, 'Métal'),
(3, 'Cuir'),
(4, 'Plastique'),
(5, 'Tissu'),
(6, 'Verre'),
(7, 'Bois'),
(8, 'Métal'),
(9, 'Cuir'),
(10, 'Plastique'),
(11, 'Tissu'),
(12, 'Verre'),
(13, 'Coton'),
(14, 'Macramé');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'John Doe', 'johndoe@example.com', 'Demande de contact', 'Bonjour, je souhaite vous contacter pour...', '2024-07-15 18:24:57'),
(2, 'OUKACI', 'fabio@gmail.com', 'TEST', 'TEST', '2024-07-15 18:30:51'),
(3, 'OUKACI', 'fabio@gmail.com', 'TEST', 'JE TEST', '2024-07-16 17:06:20'),
(4, 'OUKACI', 'tartempiondu94@yopmail.com', 'TEST', 'efzefzef', '2024-07-16 17:07:21'),
(5, 'OUKACI', 'fabio@gmail.com', 'TEST', 'gzgv', '2024-07-18 16:59:02');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `productcategories`
--

CREATE TABLE `productcategories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `productcategories`
--

INSERT INTO `productcategories` (`category_id`, `category_name`) VALUES
(1, 'Mobilier de bureau'),
(2, 'Canapés et fauteuils'),
(3, 'Décoration intérieure'),
(4, 'Luminaires'),
(5, 'Rangement'),
(6, 'Cuisine et salle à manger'),
(7, 'Chambre à coucher'),
(8, 'Salle de bain'),
(9, 'Jardin et extérieur'),
(10, 'Enfants');

-- --------------------------------------------------------

--
-- Structure de la table `productphotos`
--

CREATE TABLE `productphotos` (
  `photo_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `productphotos`
--

INSERT INTO `productphotos` (`photo_id`, `product_id`, `photo_url`, `is_primary`) VALUES
(1, 1, 'chaise-dsw.jpg', 1),
(3, 2, 'fauteuil-egg.jpg', 1),
(4, 3, 'lampe-pipistrello.jpg', 1),
(5, 4, 'canape-tufty-time.jpg', 1),
(6, 5, 'bibliotheque-aim.png', 1),
(7, 6, 'table-basse-em.jpg', 1),
(8, 7, 'lit-lc4.jpg', 1),
(9, 8, 'suspension-flowerpot.jpg', 1),
(10, 9, 'tabouret-mezzadro.jpg', 1),
(11, 10, 'etagere-string-pocket.jpg', 1),
(12, 11, 'miroir.jpg', 1),
(14, 12, 'serviettes.jpg', 1),
(15, 13, 'hamac.jpg', 1),
(17, 14, 'tapis.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `designer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `stock_quantity`, `category_id`, `designer_id`) VALUES
(1, 'Chaise DSW', 'La chaise de bureau DSW, frappe par la simplicité de son design. Le siège est en contreplaqué, recouvert d\'un placage de frêne. Le bois de frêne traité est solide et résistant, mais le bois de frêne non traité peut montrer beaucoup de mouvement et jaunir rapidement. \r\nDesigner : Charles Eames', 399.99, 25, 1, 1),
(2, 'Fauteuil Egg', 'Composée de différents modèles et d\'une large gamme de couleurs de base et tendance, le fauteuil Egg est fait à partir d\'une combinaison de bois dur et de MDF certifiés FSC. L\'assise est remplie d\'une mousse VP35 et le dossier contient une mousse VP21, ce qui permet d\'obtenir un confort d\'assise ferme et soutenant. Les pieds sont en bois de bouleau.\r\nDesigner : Arne Jacobsen', 1299.99, 10, 2, 2),
(3, 'Lampe Pipistrello', 'Lampe de table moderne en métal à la douce forme de champignon. Modèle équipé d\'un câble habillé de textile avec interrupteur en plastique. Douille de type G9. LED 4 W maximum. Ampoule non incluse. Hauteur totale 18 cm. Diamètre de l\'abat-jour 22 cm. Longueur du câble 160 cm.\r\nDesign : Philippe Starck.', 499.99, 15, 4, 3),
(4, 'Canapé Tufty-Time', 'Le canapé Tufty-Time donne rapidement une impression accueillante et tendance avec son design scandinave et son design doux ! Il est fabriqué avec une structure étroite en acier de couleur blanche, avec des coussins beiges comme siège et dossier pour un confort supplémentaire.\r\nDesign : Patricia Urquiola', 2499.99, 5, 2, 4),
(5, 'Bibliothèque AIM', 'La bibliothèque AIM a un design global bien pensé avec des structures élancées et stylées. L\'étagère offre plusieurs surfaces de rangement à différents niveaux pour varier le contenu. Fabriquée en acier revêtu par poudre pour une surface claire et un aspect moderne.\r\nDesign : Ronan & Erwan Bouroullec', 999.99, 8, 5, 5),
(6, 'Table basse EM', 'La table basse Rogaland est la combinaison parfaite de design moderne et de style. Cette élégante table basse est fabriquée en matériau MDF. Le design sobre et épuré de la table basse Rogaland s\'intègre parfaitement dans les intérieurs modernes et crée une atmosphère fraîche et élégante.\r\nDesign : Jean Prouvé', 599.99, 12, 6, 7),
(7, 'Lit LC4', 'Cette confortable chaise longue crée une atmosphère invitante et rustique grâce à son design global bien pensé. Le cadre est en teck certifié et le matériau naturel donne à chaque meuble un caractère unique.\r\nDesign : Charlotte Perriand', 1999.99, 3, 7, 8),
(8, 'Suspension Flowerpot', 'Petite suspension Flowerpot en métal, inspirée des pétales de fleur. L\'intérieur est toujours de couleur dorée pour diffuser une luminosité chaude. Chaque abat-jour est fait à la main. Avec ses formes féminines et ses couleurs séduisantes, Flowerpot apportera une note de fraîcheur dans tous les espaces de vie.\r\nDesign: Verner Panton', 249.99, 20, 4, 9),
(9, 'Tabouret Mezzadro', 'Le tabouret Mezzadro est un ajout élégant à votre coin repas. Cet élégant tabouret est recouvert de cuir microfibre avec une finition mate et un toucher doux. La base est en métal avec un revêtement en poudre noir brillant. Un revêtement en poudre donne un aspect mat luxueux et protège le métal à vie. \r\nDesign : Achille Castiglioni', 349.99, 18, 6, 10),
(10, 'Etagère String Pocket', 'Étagère murale pour enfant en métal et MDF peint. Modèle disposant de trois niveaux pour ranger des livres ou des jouets. Article vendu à plat, prêt à assembler. Visserie murale non incluse. Profondeur 23 cm. Largeur 60 cm. Hauteur 66 cm.\r\nDesign : Arne Jacobsen', 149.99, 30, 5, 2),
(11, 'Miroir mural décoratif', 'Grand miroir asymétrique avec cadre en bois de manguier. Modèle avec dos en MDF muni de fixations permettant de l\'installer facilement à l\'horizontale ou à la verticale, en fonction de vos envies. Dimensions 35x45 cm.\r\nDesign : Charlotte Perriand', 89.99, 15, 3, 8),
(12, 'Ensemble de serviettes de bain', 'Ensemble coordonné en tissu de coton et lin mélangés, composé de deux sets de table et de deux serviettes avec broderie ajourée sur le pourtour. Dimensions des serviettes 40x40 cm. Dimensions des sets de table 35x48 cm.\r\nDesign : Philippe Starck', 45.50, 20, 6, 3),
(13, 'Hamac suspendu', 'Le hamac une place classique dans une teinte élégante ! Le tissu en polyester résistant et les cordes décoratives vous offrent un hamac résistant et de bon goût qui donne à votre terrasse une touche de relaxation. La suspension se compose de plusieurs cordes qui contribuent à l\'équilibre et à un plus grand confort. \r\nDesign : Verner Panton', 129.00, 8, 9, 9),
(14, 'Tapis d\'éveil pour bébé', 'Tapis en toile de coton de bonne tenue avec détails tuftés et décor composé de voitures et de routes imprimées. Modèle avec dessous antidérapant.\r\nDesign : Achille Castiglioni', 39.99, 12, 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `product_materials`
--

CREATE TABLE `product_materials` (
  `product_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_materials`
--

INSERT INTO `product_materials` (`product_id`, `material_id`) VALUES
(1, 1),
(1, 4),
(2, 3),
(2, 5),
(3, 2),
(3, 6),
(4, 5),
(5, 2),
(6, 1),
(6, 2),
(7, 2),
(7, 3),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 2),
(11, 6),
(12, 7),
(13, 8),
(14, 7);

-- --------------------------------------------------------

--
-- Structure de la table `promotions`
--

CREATE TABLE `promotions` (
  `promotion_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `promotions`
--

INSERT INTO `promotions` (`promotion_id`, `product_id`, `discount_percentage`, `start_date`, `end_date`) VALUES
(1, 3, 15, '2024-06-01', '2024-06-30'),
(2, 5, 10, '2024-05-15', '2024-07-15'),
(3, 8, 20, '2024-06-10', '2024-06-20');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `role` tinyint(1) NOT NULL,
  `token` varchar(250) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `first_name`, `last_name`, `address`, `city`, `country`, `phone_number`, `registration_date`, `role`, `token`, `payment_method`) VALUES
(61, 'ezcezcezcezc@gmail.com', '$2y$13$ahaw16ic6.x2/vJogXp4rObcNSLKBLsTim0MNINK8OiVAWdj7WC3C', 'fczecez', 'cezcezc', NULL, NULL, NULL, NULL, NULL, 1, 'a7130843b43e380f5c010c89d9051ee2a41530b659f0d766c1d3d7d4765f', NULL),
(62, 'test@gmail.com', '$2y$13$qaF6VFaBwJ3WHUIdI06fKehK4l6t3HSaKg3PFAvRLwzeg4pYuUprW', 'Tarik', 'Test', NULL, NULL, NULL, NULL, NULL, 1, '304a2611da41911a29519c8abb28e2cd3e053d8fe192d907c0c8eb2ac12d', NULL),
(63, 'zefzefzef@gmail.com', '$2y$13$qHTZv.onksVV6Sod6lSBPu6eaHH.DF3oW80I9AgNtw8VT.5Qd2cf.', 'fzfzef', 'fzfze', NULL, NULL, NULL, NULL, NULL, 1, 'ffa47e73301e82ae87426b15ea005a09db80adb8782683405ce4ef2649b8', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `designers`
--
ALTER TABLE `designers`
  ADD PRIMARY KEY (`designer_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_panier_user_id` (`user_id`),
  ADD KEY `FK_panier_product_id` (`product_id`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `productphotos`
--
ALTER TABLE `productphotos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `designer_id` (`designer_id`);

--
-- Index pour la table `product_materials`
--
ALTER TABLE `product_materials`
  ADD PRIMARY KEY (`product_id`,`material_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Index pour la table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `materials`
--
ALTER TABLE `materials`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `productphotos`
--
ALTER TABLE `productphotos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `FK_panier_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FK_panier_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `productphotos`
--
ALTER TABLE `productphotos`
  ADD CONSTRAINT `productphotos_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `productcategories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`designer_id`) REFERENCES `designers` (`designer_id`);

--
-- Contraintes pour la table `product_materials`
--
ALTER TABLE `product_materials`
  ADD CONSTRAINT `product_materials_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_materials_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `materials` (`material_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
