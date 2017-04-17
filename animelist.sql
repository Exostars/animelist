-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 14 Avril 2017 à 17:20
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `animelist`
--

-- --------------------------------------------------------

--
-- Structure de la table `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `nb_ep` int(11) NOT NULL,
  `nb_oav` int(11) NOT NULL,
  `nb_film` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `synopsis` text NOT NULL,
  `Auteur` varchar(50) NOT NULL,
  `Studio` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `imglarge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `anime`
--

INSERT INTO `anime` (`id`, `nom`, `nb_ep`, `nb_oav`, `nb_film`, `note`, `synopsis`, `Auteur`, `Studio`, `img`, `imglarge`) VALUES
(1, 'Steins;Gate', 24, 6, 1, 10, 'Dans un quartier d\'Otaku à Akihabara, un groupe d\'amis modifient leurs micro-ondes de manière à en faire un dispositif qui leur permet d\'envoyer des messages écrits vers le passé. Une organisation, CERN, a mené différentes recherches à propos des voyages temporels. À présent, le groupe, ayant effectué plusieurs expériences diverses, doit absolument éviter de se faire capturer par cette organisation qui les perturbent en les traquant...', '5pb. & NitroPlus', 'WHITE FOX', 'images/S;G.jpg', 'images/S;Glarge.jpg'),
(2, 'Code Geass', 50, 0, 0, 10, 'Le 10 Août du Calendrier Impérial, le Saint Empire de Britannia déclare la guerre au Japon. Les îles neutres du lointain Orient et l\'unique superpuissance mondiale Britannia, et au milieu, l\'épicentre d\'un conflit profondément ancré, dont le Japon était responsable. Pendant la bataille du continent, l\'Armée Britannienne eut recours pour la première fois aux Véhicules Humanoïde Armés, les " Knightmares Frames ". Ils possédaient une force incroyable et l\'armée japonaise fut aisément vaincue par les " Knightmares ". Le Japon devient un territoire de l\'Empire? et vit sa liberté? ses droits? et son nom disparaitre. " Zone 11 ", ce nombre devient le nouveau nom du Japon après la Guerre. L\'histoire se déroule en 2017 dans la " Zone 11 ". Le Saint Empire de Britannia y règne depuis ses sept dernières années. Les " Elevens " vivent dans des ghettos, cédant une majeure partie de leur territoire aux colons Britanniens? Néanmoins des mouvements rebelles et nationalistes luttent pour l\'indépendance. Un jeune étudiant de l\'école privée Ashford, Lelouch Lamperouge, se retrouve malgré lui impliqué dans le vol d\'une arme chimique par un groupe de terroristes. Cette arme s\'avère être en fait une étrange jeune fille, qui possède des pouvoirs mystiques?', 'Goro Taniguchi & Ichiro Okouch', 'Sunrise', 'images/Code-Geass.jpg', 'images/codegeasslarge.jpg'),
(3, 'Hunter x Hunter', 148, 0, 2, 10, 'Des monstres redoutables, des créatures rares, des richesses enfouies, des trésors cachés, des mondes démoniaques, des terres inexplorées, le mot « inconnu » dégage quelque chose de magique, et certaines personnes sont attirées par cette force, on les appelle… les Hunters. Gon est un jeune garçon de douze ans vivant sur l\'île de la Baleine. Son père l\'a abandonné et a disparu il y a longtemps pour devenir Hunter. Gon décide donc de quitter son île et de passer l\'examen des Hunters pour suivre le chemin de son père et peut-être un jour le retrouver et en savoir plus sur lui. Mais devenir un Hunter officiel n\'est pas donné à tout le monde, et les chances de mourir ou d\'échec sont extrêmement élevées. Il rencontrera sur son chemin Kurapika, Léolio et Kirua, qui seront ses camarades de route à travers les différentes étapes et dangers que présage la vie d\'un Hunter', 'Yoshihiro Togashi', 'Madhouse', 'images/hxh.jpg', 'images/hxhlarge.jpg'),
(4, 'Fate/Zero', 25, 0, 0, 9, 'En quête du Saint Graal et du miracle qu’il promet d’exaucer, 7 magiciens (Maîtres) ont invoqué 7 Esprits-Héros (Serviteurs) qui se livrent une lutte sans merci jusqu’à ce qu’il n’en reste qu’un… C’est la Guerre Sainte. Après 3 guerres sans vainqueur, le combat est sur le point de reprendre pour la 4ème fois. Les magiciens s’empressent de rejoindre Fuyuki, le champ de bataille, chacun priant pour la victoire. Parmi eux cependant, un seul ne semble pas montrer autant de motivation. Son nom, Kirei Kotomine. Ne pouvant se résigner à son destin, Kirei se pose des questions. Pourquoi doit-il endosser ce qu’il voit comme une malédiction ? Mais un adversaire va lui faire oublier tous ses doutes et le remettre sur le chemin de sa destinée. Cet adversaire n’est autre que Kiritsugu Emiya. Épris d’aucune compassion, lui veut le Saint Graal plus violemment que tous les autres. Cette histoire retrace la vérité sur la Quatrième Guerre Sainte qui a eu lieu il y a 10 ans et qui n\'avait été qu\'effleurée par fragment dans le jeu à succès "Fate/stay night". Ici sera révélée la vérité sur le combat qui a impliqué le père adoptif de Shiro, le père de Rin et le jeune Kirei Kotomine, le héros de l\'histoire !', 'Urobuchi Gen', 'ufotable', 'images/fatezero.jpg', 'images/fatezerolarge.jpg'),
(5, 'Fate/Stay Night : Unlimited Blade Works', 25, 1, 0, 9, 'L’histoire nous entraîne dans le quotidien de Emiya Shiro, un lycéen capable d’analyser la structure des objets grâce à la magie. Enfant, Emiya fut témoin du dénouement tragique d’une guerre occulte opposant 7 magiciens et leurs servants (serviteurs) qui détruisit son quartier.Recueilli par un magicien, désormais décédé, Emiya est devenu un jeune garçon solitaire capable de réparer les objets par instinct et de lancer quelques sorts.Cependant, sa vie bascule quand il fait partie des 7 Magiciens qui doivent s’entre-tuer dans la nouvelle Guerre Sainte. C’est ainsi qu’il rencontre son servant, Saber, une redoutable épéiste.', 'Nasu Kinoko', 'ufotable', 'images/fatestaynight.jpg', 'images/fatestaynightlarge.jpg'),
(6, 'Nisekoi', 32, 4, 0, 9, 'L&rsquo;histoire nous entra&icirc;ne dans la rivalit&eacute; de 2 familles criminelles.Raku Ichijo est le fils d&rsquo;un chef Yakuza et Chitoge Kirisaki est la fille d&rsquo;un chef de Gang. Le seul moyen d&rsquo;&eacute;viter la guerre est que leurs enfants sortent ensemble.Malheureusement, les 2 lyc&eacute;ens ne se supportent pas en classe.Mais conscients de l&rsquo;enjeu, Raku et Chitoge vont faire semblant de s&rsquo;appr&eacute;cier aux yeux de leur famille pour &eacute;viter toute guerre.', 'Akiyuki Shinbo', 'SHAFT', 'images/nisekoi.jpg', 'images/nisekoilarge.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `anime_genre`
--

CREATE TABLE `anime_genre` (
  `anime_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `anime_genre`
--

INSERT INTO `anime_genre` (`anime_id`, `genre_id`) VALUES
(1, 2),
(1, 3),
(1, 7),
(1, 11),
(2, 1),
(2, 6),
(2, 7),
(2, 12),
(3, 1),
(3, 2),
(3, 4),
(3, 7),
(3, 12),
(4, 1),
(4, 4),
(4, 7),
(4, 12),
(5, 1),
(5, 3),
(5, 4),
(5, 7),
(5, 12),
(6, 3),
(6, 5),
(6, 17);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `nom`) VALUES
(1, 'ACTION'),
(2, 'AVENTURE'),
(3, 'AMOUR ET AMITIE'),
(4, 'COMBAT'),
(5, 'COMEDIE'),
(6, 'CYBER ET MECHA'),
(7, 'DRAME'),
(8, 'ECCHI'),
(9, 'ENIGME ET POLICIER'),
(10, 'EPIQUE ET HEROIQUE'),
(11, 'SCIENCE-FICTION'),
(12, 'FANTASTIQUE'),
(13, 'HORREUR'),
(14, 'MAGICAL GIRL'),
(15, 'MUSICAL'),
(16, 'SPORT'),
(17, 'TRANCHE DE VIE');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `access`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `anime_genre`
--
ALTER TABLE `anime_genre`
  ADD KEY `anime_id` (`anime_id`,`genre_id`),
  ADD KEY `genre_link` (`genre_id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `anime_genre`
--
ALTER TABLE `anime_genre`
  ADD CONSTRAINT `anime_link` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`id`),
  ADD CONSTRAINT `genre_link` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
