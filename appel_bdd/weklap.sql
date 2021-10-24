-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 24 oct. 2021 à 20:09
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `weklap`
--

-- --------------------------------------------------------

--
-- Structure de la table `weklap_categorie`
--

CREATE TABLE `weklap_categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_categorie`
--

INSERT INTO `weklap_categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Films'),
(2, 'Série'),
(3, 'Dessin Animé');

-- --------------------------------------------------------

--
-- Structure de la table `weklap_defi`
--

CREATE TABLE `weklap_defi` (
  `id_defi` int(11) NOT NULL,
  `nom_defi` varchar(50) NOT NULL,
  `explication_defi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `weklap_favoris_lieu`
--

CREATE TABLE `weklap_favoris_lieu` (
  `id_favoris_lieu` int(11) NOT NULL,
  `ext_utilisateur` smallint(5) NOT NULL,
  `ext_lieu` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `weklap_favoris_oeuvre`
--

CREATE TABLE `weklap_favoris_oeuvre` (
  `id_favoris_oeuvre` int(11) NOT NULL,
  `ext_oeuvre` smallint(5) NOT NULL,
  `ext_utilisateur` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `weklap_formulaire`
--

CREATE TABLE `weklap_formulaire` (
  `id_formulaire` int(11) NOT NULL,
  `mail_formulaire` varchar(100) NOT NULL,
  `sujet` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `weklap_genre`
--

CREATE TABLE `weklap_genre` (
  `id_genre` int(11) NOT NULL,
  `nom_genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_genre`
--

INSERT INTO `weklap_genre` (`id_genre`, `nom_genre`) VALUES
(1, 'Action'),
(2, 'Comédies'),
(3, 'Documentaires'),
(4, 'Drames'),
(5, 'Fantastique'),
(6, 'Halloween'),
(7, 'Jeunesse'),
(8, 'Comédies musicales'),
(9, 'Policier'),
(10, 'Romance'),
(11, 'Science Fiction'),
(12, 'Thriller'),
(13, 'Anime'),
(14, 'Horreur'),
(15, 'Historique');

-- --------------------------------------------------------

--
-- Structure de la table `weklap_lieu`
--

CREATE TABLE `weklap_lieu` (
  `id_lieu` int(11) NOT NULL,
  `nom_lieu` varchar(50) NOT NULL,
  `description_lieu` text NOT NULL,
  `anecdote_historique` text NOT NULL,
  `adresse_lieu` varchar(200) NOT NULL,
  `lien_adresse` varchar(200) NOT NULL,
  `photo_lieu` varchar(200) NOT NULL,
  `ext_ville` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_lieu`
--

INSERT INTO `weklap_lieu` (`id_lieu`, `nom_lieu`, `description_lieu`, `anecdote_historique`, `adresse_lieu`, `lien_adresse`, `photo_lieu`, `ext_ville`) VALUES
(1, 'Tour Eiffel', 'La Dame de Fer sortant tout droit de l’imagination de Gustave Eiffel, à l’occasion de l’exposition universelle de 1889, s’élève à 324 mètres de haut sur le Champ-de-Mars. Elle domine la capitale, telle un phare. Elle devait être détruite au bout de 20 ans, mais elle a finalement résisté au temps…', 'Créée pour l’Exposition Universelle de 1889, la tour Eiffel ne devait être qu’une installation provisoire. Les riverains du Champ de Mars ont même fait une pétition pour sa destruction. ', '5 avenue Anatole France – Champ-de-Mars, Paris 7e', 'https://goo.gl/maps/AFhXyQUSfPAdUN9PA', 'https://www.toureiffel.paris/sites/default/files/styles/760x430/public/actualite/image_principale/TOUR_EIFFEL_CONFINEMENT_%E2%94%AC%C2%AE11h45_HD-7.jpg?itok=cdi3nFcB', 1);

-- --------------------------------------------------------

--
-- Structure de la table `weklap_newsletter`
--

CREATE TABLE `weklap_newsletter` (
  `id_newsletter` int(11) NOT NULL,
  `mail_newsletter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_newsletter`
--

INSERT INTO `weklap_newsletter` (`id_newsletter`, `mail_newsletter`) VALUES
(5, 'test@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `weklap_oeuvre`
--

CREATE TABLE `weklap_oeuvre` (
  `id_oeuvre` int(11) NOT NULL,
  `titre_oeuvre` varchar(50) NOT NULL,
  `realisateur` varchar(50) NOT NULL,
  `synopsis` text NOT NULL,
  `nationnalite` varchar(40) NOT NULL,
  `anecdote_oeuvre` text NOT NULL,
  `annee_sortie` year(4) NOT NULL,
  `bande_annonce` varchar(200) NOT NULL,
  `ext_categorie` smallint(5) NOT NULL,
  `ext_genre` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_oeuvre`
--

INSERT INTO `weklap_oeuvre` (`id_oeuvre`, `titre_oeuvre`, `realisateur`, `synopsis`, `nationnalite`, `anecdote_oeuvre`, `annee_sortie`, `bande_annonce`, `ext_categorie`, `ext_genre`) VALUES
(1, 'Miraculous', 'Thomas Astruc ', 'Marinette et Adrien sont deux collégiens presque comme les autres. À la moindre menace sur Paris, ils deviennent Ladybug et Chat Noir. Leur mission : capturer les Akoumas du mystérieux Papillon qui transforment les Parisiens en supervilains. Si les deux héros font équipe, chacun ignore la véritable identité de l’autre : Marinette ne sait pas que derrière Chat Noir se cache Adrien, le garçon qu’elle aime secrètement ; et Adrien, dont le cœur bat pour Ladybug, ignore que derrière le costume de la superhéroïne se dissimule la fille sympa et tête en l’air de sa classe', 'France, Japon, Corée du Sud', '', 2015, 'https://youtu.be/OIfopgLAyv0', 3, 7),
(2, 'Lupin', 'George Kay et François Uzan', 'En 1995, le jeune Assane Diop est bouleversé par la mort de son \r\npère, accusé d’un délit qu’il n’a pas commis. Vingt-cinq ans plus\r\ntard, Assane organise le vol d’un collier ayant appartenu à Marie-\r\nAntoinette d’Autriche. Le bijou, aujourd’hui exposé au musée du\r\nLouvre, appartenait à la riche famille Pellegrini. Il veut se venger\r\nde cette famille ayant accusé à tort son père, en s’inspirant de\r\nson personnage fétiche : le « gentleman cambrioleur » Arsène\r\nLupin, utilisant la science de ce personnage aux multiples\r\nfacettes imaginé par Maurice Leblanc pour échapper à la police.\r\nEn parallèle de ses activités illégales, Assane tente également\r\nde s’occuper davantage de son fils Raoul, qui vit aujourd’hui avec\r\nson ex-petite amie Claire1.', 'Français', '', 2021, 'https://www.youtube.com/watch?v=gCmuYqeeNpc', 2, 4),
(3, 'Intouchables', 'Olivier Nakache et Eric Toledano', 'Tout les oppose et il était peu probable qu’ils se rencontrent un\r\njour, et pourtant. Philippe, un riche aristocrate devenu\r\ntétraplégique après un accident de parapente va engager Driss,\r\nun jeune homme d’origine sénégalaise tout droit sorti de prison,\r\ncomme auxiliaire de vie à domicile. Pourquoi lui ? Tout\r\nsimplement parce qu’il ne regarde pas Philippe avec le même\r\nregard de pitié que les autres candidats.', 'Français', '', 2011, 'https://www.youtube.com/watch?v=cXu2MhWYUuE', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `weklap_pays`
--

CREATE TABLE `weklap_pays` (
  `id_pays` int(11) NOT NULL,
  `nom_pays` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_pays`
--

INSERT INTO `weklap_pays` (`id_pays`, `nom_pays`) VALUES
(1, 'France');

-- --------------------------------------------------------

--
-- Structure de la table `weklap_photo_defi`
--

CREATE TABLE `weklap_photo_defi` (
  `id_photo_defi` int(11) NOT NULL,
  `nombre_like` int(11) NOT NULL,
  `ext_defi` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `weklap_photo_profil`
--

CREATE TABLE `weklap_photo_profil` (
  `id_photo_profil` int(11) NOT NULL,
  `photo_profil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `weklap_rel_oeuvre_lieu`
--

CREATE TABLE `weklap_rel_oeuvre_lieu` (
  `id_rel_oeuvre_lieu` int(11) NOT NULL,
  `ext_oeuvre` smallint(5) NOT NULL,
  `ext_lieu` smallint(5) NOT NULL,
  `photo_oeuvre` varchar(200) NOT NULL,
  `type_photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_rel_oeuvre_lieu`
--

INSERT INTO `weklap_rel_oeuvre_lieu` (`id_rel_oeuvre_lieu`, `ext_oeuvre`, `ext_lieu`, `photo_oeuvre`, `type_photo`) VALUES
(1, 1, 1, 'https://weklap.fr/photos_site/oeuvres/dessin_anime/miraculous_couverture.jpeg', 'Couverture'),
(2, 1, 1, 'https://weklap.fr/photos_site/oeuvres/dessin_anime/miraculous_affiche.jpg', 'Affiche'),
(3, 1, 1, 'https://weklap.fr/photos_site/oeuvres/dessin_anime/miraculous_lieu_1.jpg', 'Lieu'),
(4, 2, 1, 'https://weklap.fr/photos_site/oeuvres/serie/lupin_couverture.jpg', 'Couverture'),
(5, 2, 1, 'https://weklap.fr/photos_site/oeuvres/serie/lupin_affiche.jpg', 'Affiche'),
(6, 2, 2, 'https://weklap.fr/photos_site/oeuvres/serie/lupin_lieu_1.jpg', 'Lieu'),
(7, 3, 3, 'https://weklap.fr/photos_site/oeuvres/film/intouchables_affiche.jpg', 'Affiche'),
(8, 3, 3, 'https://weklap.fr/photos_site/oeuvres/film/intouchables_lieu_1.jpeg', 'Lieu'),
(9, 3, 3, 'https://weklap.fr/photos_site/oeuvres/film/intouchables_couverture.jpg', 'Couverture');

-- --------------------------------------------------------

--
-- Structure de la table `weklap_rel_oeuvre_pays`
--

CREATE TABLE `weklap_rel_oeuvre_pays` (
  `id_rel_oeuvre_pays` int(11) NOT NULL,
  `ext_oeuvre` smallint(5) NOT NULL,
  `ext_pays` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_rel_oeuvre_pays`
--

INSERT INTO `weklap_rel_oeuvre_pays` (`id_rel_oeuvre_pays`, `ext_oeuvre`, `ext_pays`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `weklap_rel_utilisateur_photo_defi`
--

CREATE TABLE `weklap_rel_utilisateur_photo_defi` (
  `id_rel_utilisateur_photo_defi` int(11) NOT NULL,
  `ext_utilisateur` smallint(5) NOT NULL,
  `ext_photo` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `weklap_utilisateur`
--

CREATE TABLE `weklap_utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `pseudo_utilisateur` varchar(50) NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `prenom_utilisateur` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `oeuvre_du_moment` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  `ext_photo_profil` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_utilisateur`
--

INSERT INTO `weklap_utilisateur` (`id_utilisateur`, `pseudo_utilisateur`, `nom_utilisateur`, `prenom_utilisateur`, `description`, `oeuvre_du_moment`, `mail`, `mot_de_passe`, `ext_photo_profil`) VALUES
(0, 'teste', 'test', 'test', '', '', 'test@gmail.fr', 'testtt', 0),
(1, 'weklap', 'we', 'klap', 'Profil du site internet Weklap', 'Lucky strike', 'weklap@gmail.com', 'Weklap123', 0);

-- --------------------------------------------------------

--
-- Structure de la table `weklap_ville`
--

CREATE TABLE `weklap_ville` (
  `id_ville` int(11) NOT NULL,
  `nom_ville` varchar(50) NOT NULL,
  `code_postal` varchar(10) NOT NULL,
  `ext_pays` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weklap_ville`
--

INSERT INTO `weklap_ville` (`id_ville`, `nom_ville`, `code_postal`, `ext_pays`) VALUES
(1, 'Paris', '75000', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `weklap_categorie`
--
ALTER TABLE `weklap_categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `weklap_defi`
--
ALTER TABLE `weklap_defi`
  ADD PRIMARY KEY (`id_defi`);

--
-- Index pour la table `weklap_favoris_lieu`
--
ALTER TABLE `weklap_favoris_lieu`
  ADD PRIMARY KEY (`id_favoris_lieu`);

--
-- Index pour la table `weklap_favoris_oeuvre`
--
ALTER TABLE `weklap_favoris_oeuvre`
  ADD PRIMARY KEY (`id_favoris_oeuvre`);

--
-- Index pour la table `weklap_formulaire`
--
ALTER TABLE `weklap_formulaire`
  ADD PRIMARY KEY (`id_formulaire`);

--
-- Index pour la table `weklap_genre`
--
ALTER TABLE `weklap_genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `weklap_lieu`
--
ALTER TABLE `weklap_lieu`
  ADD PRIMARY KEY (`id_lieu`);

--
-- Index pour la table `weklap_newsletter`
--
ALTER TABLE `weklap_newsletter`
  ADD PRIMARY KEY (`id_newsletter`);

--
-- Index pour la table `weklap_oeuvre`
--
ALTER TABLE `weklap_oeuvre`
  ADD PRIMARY KEY (`id_oeuvre`);

--
-- Index pour la table `weklap_pays`
--
ALTER TABLE `weklap_pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Index pour la table `weklap_photo_defi`
--
ALTER TABLE `weklap_photo_defi`
  ADD PRIMARY KEY (`id_photo_defi`);

--
-- Index pour la table `weklap_photo_profil`
--
ALTER TABLE `weklap_photo_profil`
  ADD PRIMARY KEY (`id_photo_profil`);

--
-- Index pour la table `weklap_rel_oeuvre_lieu`
--
ALTER TABLE `weklap_rel_oeuvre_lieu`
  ADD PRIMARY KEY (`id_rel_oeuvre_lieu`);

--
-- Index pour la table `weklap_rel_oeuvre_pays`
--
ALTER TABLE `weklap_rel_oeuvre_pays`
  ADD PRIMARY KEY (`id_rel_oeuvre_pays`);

--
-- Index pour la table `weklap_rel_utilisateur_photo_defi`
--
ALTER TABLE `weklap_rel_utilisateur_photo_defi`
  ADD PRIMARY KEY (`id_rel_utilisateur_photo_defi`);

--
-- Index pour la table `weklap_utilisateur`
--
ALTER TABLE `weklap_utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- Index pour la table `weklap_ville`
--
ALTER TABLE `weklap_ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `weklap_newsletter`
--
ALTER TABLE `weklap_newsletter`
  MODIFY `id_newsletter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
