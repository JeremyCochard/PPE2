-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2022 at 08:35 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tholdi`
--

-- --------------------------------------------------------

--
-- Table structure for table `devis`
--

CREATE TABLE `devis` (
  `codeDevis` int(9) NOT NULL,
  `dateDevis` varchar(20) DEFAULT NULL,
  `montantDevis` decimal(8,2) DEFAULT NULL,
  `volume` int(4) DEFAULT NULL,
  `nbcontainers` int(11) DEFAULT NULL,
  `valider` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devis`
--

INSERT INTO `devis` (`codeDevis`, `dateDevis`, `montantDevis`, `volume`, `nbcontainers`, `valider`) VALUES
(13, '23-03-2022', '40.50', 22, 4, NULL),
(14, '23-03-2022', '40.50', 22, 4, NULL),
(15, '23-03-2022', '1269.50', 2, 147, NULL),
(16, '23-03-2022', '1269.50', 2, 147, NULL),
(17, '23-03-2022', '306.00', 2, 33, NULL),
(18, '23-03-2022', '306.00', 2, 33, NULL),
(19, '23-03-2022', '1036.00', 22, 129, NULL),
(20, '23-03-2022', '69.25', 2, 6, NULL),
(21, '2022-03-22', '27472.00', 125, 3434, NULL),
(22, '2022-03-09', '8.00', 22, 1, NULL),
(23, '2022-03-09', '1133.00', 22, 126, NULL),
(24, '2022-03-08', '22497.75', 22, 2222, NULL),
(25, '25-03-2022', '104.00', 5, 13, NULL),
(26, '2022-02-28', '483.00', 125, 51, NULL),
(27, '2022-02-28', '36.25', 125, 4, NULL),
(28, '2022-03-08', '1641.25', 5, 138, NULL),
(29, '2022-03-15', '223326.75', 2, 23490, NULL),
(30, '2022-03-15', '703.75', 2, 56, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `codePays` char(2) NOT NULL,
  `nomPays` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`codePays`, `nomPays`) VALUES
('AD', 'ANDORRE'),
('AE', 'EMIRATS ARABES UNIS'),
('AF', 'AFGHANISTAN'),
('AG', 'ANTIGUA-ET-BARBUDA'),
('AL', 'ALBANIE'),
('AM', 'ARMENIE'),
('AN', 'ANTILLES NEERLANDAIS'),
('AO', 'ANGOLA'),
('AR', 'ARGENTINE'),
('AT', 'AUTRICHE'),
('AU', 'AUSTRALIE'),
('AZ', 'AZERBAIDJAN'),
('BA', 'BOSNIE-HERZEGOVINE'),
('BB', 'BARBADE'),
('BD', 'BANGLADESH'),
('BE', 'BELGIQUE'),
('BF', 'BURKINA FASO'),
('BG', 'BULGARIE'),
('BH', 'BAHREIN'),
('BI', 'BURUNDI'),
('BJ', 'BENIN'),
('BM', 'BERMUDES'),
('BN', 'BRUNEI DARUSSALAM'),
('BO', 'BOLIVIE'),
('BR', 'BRESIL'),
('BS', 'BAHAMAS'),
('BT', 'BHOUTAN'),
('BW', 'BOTSWANA'),
('BY', 'BELARUS'),
('BZ', 'BELIZE'),
('CA', 'CANADA'),
('CD', 'CONGO (ZAIRE)'),
('CF', 'CENTRAFRICAINE, REPU'),
('CG', 'CONGO (BRAZZA)'),
('CH', 'SUISSE'),
('CI', 'COTE D\'IVOIRE'),
('CK', 'COOK, ILES'),
('CL', 'CHILI'),
('CM', 'CAMEROUN'),
('CN', 'CHINE'),
('CO', 'COLOMBIE'),
('CR', 'COSTA RICA'),
('CS', 'SERBIE-ET-MONTENEGRO'),
('CU', 'CUBA'),
('CV', 'CAP-VERT'),
('CY', 'CHYPRE'),
('CZ', 'TCHEQUIE'),
('DE', 'ALLEMAGNE'),
('DJ', 'DJIBOUTI'),
('DK', 'DANEMARK'),
('DM', 'DOMINIQUE'),
('DO', 'DOMINICAINE, REPUBL.'),
('DZ', 'ALGERIE'),
('EC', 'EQUATEUR'),
('EE', 'ESTONIE'),
('EG', 'EGYPTE'),
('ER', 'ERYTHREE'),
('ES', 'ESPAGNE'),
('ET', 'ETHIOPIE'),
('FI', 'FINLANDE'),
('FJ', 'FIDJI'),
('FM', 'MICRONESIE'),
('FR', 'FRANCE'),
('GA', 'GABON'),
('GB', 'GRANDE-BRETAGNE'),
('GD', 'GRENADE'),
('GE', 'GEORGIE'),
('GH', 'GHANA'),
('GI', 'GIBRALTAR'),
('GM', 'GAMBIE'),
('GN', 'GUINEE'),
('GQ', 'GUINEE EQUATORIALE'),
('GR', 'GRECE'),
('GT', 'GUATEMALA'),
('GU', 'GUAM'),
('GW', 'GUINEE-BISSAU'),
('GY', 'GUYANA'),
('HK', 'HONG-KONG'),
('HN', 'HONDURAS'),
('HR', 'CROATIE'),
('HT', 'HAITI'),
('HU', 'HONGRIE'),
('ID', 'INDONESIE'),
('IE', 'IRLANDE'),
('IL', 'ISRAEL'),
('IN', 'INDE'),
('IQ', 'IRAQ'),
('IR', 'IRAN'),
('IS', 'ISLANDE'),
('IT', 'ITALIE'),
('JM', 'JAMAIQUE'),
('JO', 'JORDANIE'),
('JP', 'JAPON'),
('KE', 'KENYA'),
('KG', 'KIRGHIZISTAN'),
('KH', 'CAMBODGE'),
('KI', 'KIRIBATI'),
('KM', 'COMORES'),
('KN', 'SAINT-KITTS-ET-NEVIS'),
('KP', 'COREE DU NORD'),
('KR', 'COREE DU SUD'),
('KW', 'KOWEIT'),
('KZ', 'KAZAKHSTAN'),
('LA', 'LAOS'),
('LB', 'LIBAN'),
('LC', 'SAINTE-LUCIE'),
('LI', 'LIECHTENSTEIN'),
('LK', 'SRI LANKA'),
('LR', 'LIBERIA'),
('LS', 'LESOTHO'),
('LT', 'LITUANIE'),
('LU', 'LUXEMBOURG'),
('LV', 'LETTONIE'),
('LY', 'LIBYE'),
('MA', 'MAROC'),
('MC', 'MONACO'),
('MD', 'MOLDAVIE'),
('MG', 'MADAGASCAR'),
('MH', 'MARSHALL, ILES'),
('MK', 'MACEDOINE'),
('ML', 'MALI'),
('MM', 'MYANMAR (BIRMANIE)'),
('MN', 'MONGOLIE'),
('MO', 'MACAO'),
('MR', 'MAURITANIE'),
('MT', 'MALTE'),
('MU', 'MAURICE'),
('MV', 'MALDIVES'),
('MW', 'MALAWI'),
('MX', 'MEXIQUE'),
('MY', 'MALAISIE'),
('MZ', 'MOZAMBIQUE'),
('NA', 'NAMIBIE'),
('NE', 'NIGER'),
('NG', 'NIGERIA'),
('NI', 'NICARAGUA'),
('NL', 'PAYS-BAS'),
('NO', 'NORVEGE'),
('NP', 'NEPAL'),
('NR', 'NAURU'),
('NU', 'NIUE'),
('NZ', 'NOUVELLE-ZELANDE'),
('OM', 'OMAN'),
('PA', 'PANAMA'),
('PE', 'PEROU'),
('PG', 'PAPOUASIE-NOUV.-GUIN'),
('PH', 'PHILIPPINES'),
('PK', 'PAKISTAN'),
('PL', 'POLOGNE'),
('PR', 'PORTO RICO'),
('PT', 'PORTUGAL'),
('PW', 'PALAOS'),
('PY', 'PARAGUAY'),
('QA', 'QATAR'),
('RO', 'ROUMANIE'),
('RU', 'RUSSIE'),
('RW', 'RWANDA'),
('SA', 'ARABIE SAOUDITE'),
('SB', 'SALOMON, ILES'),
('SC', 'SEYCHELLES'),
('SD', 'SOUDAN'),
('SE', 'SUEDE'),
('SG', 'SINGAPOUR'),
('SI', 'SLOVENIE'),
('SK', 'SLOVAQUIE'),
('SL', 'SIERRA LEONE'),
('SM', 'SAINT-MARIN'),
('SN', 'SENEGAL'),
('SO', 'SOMALIE'),
('SR', 'SURINAME'),
('ST', 'SAO TOME-ET-PRINCIPE'),
('SV', 'EL SALVADOR'),
('SY', 'SYRIE'),
('SZ', 'SWAZILAND'),
('TD', 'TCHAD'),
('TG', 'TOGO'),
('TH', 'THAILANDE'),
('TJ', 'TADJIKISTAN'),
('TL', 'TIMOR-LESTE'),
('TM', 'TURKMENISTAN'),
('TN', 'TUNISIE'),
('TO', 'TONGA'),
('TR', 'TURQUIE'),
('TT', 'TRINITE-ET-TOBAGO'),
('TV', 'TUVALU'),
('TW', 'TAIWAN'),
('TZ', 'TANZANIE'),
('UA', 'UKRAINE'),
('UG', 'OUGANDA'),
('US', 'ETATS-UNIS'),
('UY', 'URUGUAY'),
('UZ', 'OUZBEKISTAN'),
('VA', 'VATICAN'),
('VC', 'SAINT-VINCENT'),
('VE', 'VENEZUELA'),
('VN', 'VIET NAM'),
('VU', 'VANUATU'),
('WS', 'SAMOA'),
('YE', 'YEMEN'),
('ZA', 'AFRIQUE DU SUD'),
('ZM', 'ZAMBIE'),
('ZW', 'ZIMBABWE');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `codeReservation` int(15) NOT NULL,
  `dateDebutReservation` varchar(20) DEFAULT NULL,
  `datefinReservation` varchar(20) DEFAULT NULL,
  `dateReservation` datetime DEFAULT CURRENT_TIMESTAMP,
  `volumeEstime` decimal(4,0) DEFAULT NULL,
  `codeDevis` int(9) DEFAULT NULL,
  `codeVilleMiseDisposition` int(6) NOT NULL,
  `codeVilleRendre` int(6) NOT NULL,
  `codeUtilisateur` smallint(6) DEFAULT NULL,
  `numeroDeReservation` int(11) DEFAULT NULL,
  `etat` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`codeReservation`, `dateDebutReservation`, `datefinReservation`, `dateReservation`, `volumeEstime`, `codeDevis`, `codeVilleMiseDisposition`, `codeVilleRendre`, `codeUtilisateur`, `numeroDeReservation`, `etat`) VALUES
(99, '2022-03-01', '2022-03-16', '2022-03-26 21:15:07', '2', NULL, 1, 3, 8, NULL, 'encours'),
(102, '2022-03-06', '2022-03-14', '2022-03-27 07:03:32', '2', NULL, 1, 4, 8, NULL, 'encours'),
(103, '2022-03-07', '2022-03-08', '2022-03-27 07:51:20', '22', NULL, 1, 4, 8, NULL, 'encours'),
(104, '2022-02-28', '2022-03-01', '2022-03-27 07:53:27', '22', NULL, 1, 4, 8, NULL, 'encours'),
(105, '2022-03-15', '2022-03-08', '2022-03-27 07:54:48', '2', NULL, 1, 3, 8, NULL, 'encours'),
(106, '2022-03-14', '2022-03-16', '2022-03-27 07:58:00', '2', NULL, 1, 4, 8, NULL, 'encours'),
(107, '2022-03-15', '2022-03-08', '2022-03-27 07:58:53', '3', NULL, 1, 5, 8, NULL, 'encours'),
(108, '2022-02-28', '2022-03-16', '2022-03-27 08:03:15', '2', NULL, 1, 3, 8, NULL, 'encours'),
(109, '2022-03-07', '2022-03-01', '2022-03-27 08:05:16', '12', NULL, 3, 1, 8, NULL, 'finie'),
(110, '2022-03-15', '2022-03-01', '2022-03-27 08:20:54', '22', NULL, 1, 5, 10, NULL, 'arrêtée'),
(111, '2022-03-30', '2022-03-09', '2022-03-27 08:29:07', '2', NULL, 3, 1, 9, NULL, 'encours');

-- --------------------------------------------------------

--
-- Table structure for table `reserver`
--

CREATE TABLE `reserver` (
  `code` int(6) NOT NULL,
  `codeReservation` int(15) NOT NULL,
  `numTypeContainer` int(6) NOT NULL,
  `qteReserver` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserver`
--

INSERT INTO `reserver` (`code`, `codeReservation`, `numTypeContainer`, `qteReserver`) VALUES
(9, 108, 1, 2),
(11, 108, 7, 23),
(12, 109, 5, 240),
(13, 109, 2, 250),
(15, 110, 2, 44),
(16, 110, 3, 12345),
(18, 110, 3, 1234),
(21, 111, 9, 44),
(22, 111, 1, 44),
(23, 111, 1, 2),
(24, 111, 5, 21),
(25, 111, 9, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tarificationContainer`
--

CREATE TABLE `tarificationContainer` (
  `codeDuree` varchar(20) NOT NULL,
  `numTypeContainer` int(6) NOT NULL,
  `tarif` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarificationContainer`
--

INSERT INTO `tarificationContainer` (`codeDuree`, `numTypeContainer`, `tarif`) VALUES
('ANNEE', 1, '1260.00'),
('ANNEE', 2, '1663.20'),
('ANNEE', 3, '2700.00'),
('ANNEE', 4, '1620.00'),
('ANNEE', 5, '2700.00'),
('ANNEE', 6, '2800.00'),
('ANNEE', 7, '1620.00'),
('ANNEE', 8, '2700.00'),
('ANNEE', 9, '3200.00'),
('JOUR', 1, '8.00'),
('JOUR', 2, '9.25'),
('JOUR', 3, '10.00'),
('JOUR', 4, '9.00'),
('JOUR', 5, '10.00'),
('JOUR', 6, '12.25'),
('JOUR', 7, '9.50'),
('JOUR', 8, '10.75'),
('JOUR', 9, '14.00'),
('TRIMESTRE', 1, '585.00'),
('TRIMESTRE', 2, '623.70'),
('TRIMESTRE', 3, '765.00'),
('TRIMESTRE', 4, '585.00'),
('TRIMESTRE', 5, '755.00'),
('TRIMESTRE', 6, '890.00'),
('TRIMESTRE', 7, '585.00'),
('TRIMESTRE', 8, '765.00'),
('TRIMESTRE', 9, '890.00');

-- --------------------------------------------------------

--
-- Table structure for table `typeContainer`
--

CREATE TABLE `typeContainer` (
  `numTypeContainer` int(6) NOT NULL,
  `codeTypeContainer` char(4) NOT NULL,
  `libelleTypeContainer` char(50) NOT NULL,
  `longueurCont` decimal(5,0) NOT NULL,
  `largeurCont` decimal(5,0) NOT NULL,
  `hauteurCont` decimal(4,0) NOT NULL,
  `poidsCont` decimal(5,0) DEFAULT NULL,
  `tare` decimal(4,0) DEFAULT NULL,
  `capaciteDeCharge` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typeContainer`
--

INSERT INTO `typeContainer` (`numTypeContainer`, `codeTypeContainer`, `libelleTypeContainer`, `longueurCont`, `largeurCont`, `hauteurCont`, `poidsCont`, `tare`, `capaciteDeCharge`) VALUES
(1, 'DFCS', 'Petit conteneur de fret sec', '5896', '2350', '2385', NULL, NULL, NULL),
(2, 'DFCM', 'Conteneur de fret moyen sec', '12035', '2350', '2385', NULL, NULL, NULL),
(3, 'DFCH', 'Conteneur de fret sec Hight Cube', '12035', '2350', '2697', NULL, NULL, NULL),
(4, 'FRCS', 'Petit conteneur à rack plat', '5935', '2398', '2103', NULL, NULL, NULL),
(5, 'FRCM', 'Conteneur plat moyen', '12080', '2398', '2103', NULL, NULL, NULL),
(6, 'OTCS', 'Petit conteneur à toit ouvert', '5893', '2346', '2385', NULL, NULL, NULL),
(7, 'OTCM', 'Conteneur à toit ouvert moyen', '12029', '2346', '2359', NULL, NULL, NULL),
(8, 'RCSM', 'Petit conteneur réfrigéré', '5451', '2294', '2201', NULL, NULL, NULL),
(9, 'RCME', 'Conteneur frigorifique moyen', '11577', '2294', '2210', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `code` smallint(6) NOT NULL,
  `role` varchar(20) NOT NULL,
  `raisonSociale` char(50) NOT NULL,
  `adresse` char(80) NOT NULL,
  `cp` char(5) NOT NULL,
  `ville` char(40) NOT NULL,
  `adrMel` char(100) NOT NULL,
  `telephone` char(15) NOT NULL,
  `contact` char(50) NOT NULL,
  `login` char(10) NOT NULL,
  `mdp` char(100) NOT NULL,
  `codePays` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`code`, `role`, `raisonSociale`, `adresse`, `cp`, `ville`, `adrMel`, `telephone`, `contact`, `login`, `mdp`, `codePays`) VALUES
(8, 'electricien', 'alsotel', '23 emy les près', '95240', 'Cormeilles en Parisis', 'jeremy@orange.fr', '0156854575', 'Martin Philippe', 'acar', '$2y$14$s.U5p7eqN9C7VScaVTIxkOoNOaswUcayMCsF1Ksdhx3FdA5Ic5KVe', 'AD'),
(9, 'electricien', 'alsotel', '23 emy les près', '95240', 'Cormeilles en Parisis', 'tholdi@orange.fr', '0156854575', 'Martin Philippe', 'tholdi', '$2y$14$FjkVjRVGQDuQDd5PyLmRn.k.Ylp23kooMthO9u79i2XorFuATirlW', 'AD'),
(10, 'electricien', 'alsotel', '23 emy les près', '95240', 'Cormeilles en Parisis', 'Belle@outlook.fr', '0156854575', 'Martin Philippe', 'zerty', '$2y$14$QQLt9b2Q2kNhvPyeVQDBDuYeCdZaQXgXACjzzqOziSutBSA5oOosS', 'AD');

-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `codeVille` int(6) NOT NULL,
  `nomVille` char(30) NOT NULL,
  `codePays` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`codeVille`, `nomVille`, `codePays`) VALUES
(1, 'Le Havre', 'FR'),
(2, 'Marseille', 'FR'),
(3, 'Gennevilliers', 'FR'),
(4, 'Anvers', 'BE'),
(5, 'Barcelone', 'ES'),
(6, 'Hambourg', 'DE'),
(7, 'Rotterdam', 'NL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`codeDevis`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`codePays`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`codeReservation`),
  ADD KEY `fk_Vill1` (`codeVilleRendre`),
  ADD KEY `codeDevis` (`codeDevis`);

--
-- Indexes for table `reserver`
--
ALTER TABLE `reserver`
  ADD PRIMARY KEY (`code`),
  ADD KEY `fk_Rese` (`codeReservation`),
  ADD KEY `fk_Typei` (`numTypeContainer`);

--
-- Indexes for table `tarificationContainer`
--
ALTER TABLE `tarificationContainer`
  ADD PRIMARY KEY (`codeDuree`,`numTypeContainer`),
  ADD KEY `fk_Type` (`numTypeContainer`);

--
-- Indexes for table `typeContainer`
--
ALTER TABLE `typeContainer`
  ADD PRIMARY KEY (`numTypeContainer`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`code`),
  ADD KEY `fk_codeP` (`codePays`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`codeVille`),
  ADD KEY `fk_codePa` (`codePays`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devis`
--
ALTER TABLE `devis`
  MODIFY `codeDevis` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `codeReservation` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `reserver`
--
ALTER TABLE `reserver`
  MODIFY `code` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `typeContainer`
--
ALTER TABLE `typeContainer`
  MODIFY `numTypeContainer` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `code` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `codeVille` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_Vill1` FOREIGN KEY (`codeVilleRendre`) REFERENCES `ville` (`codeVille`),
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`codeDevis`) REFERENCES `devis` (`codeDevis`);

--
-- Constraints for table `reserver`
--
ALTER TABLE `reserver`
  ADD CONSTRAINT `fk_Rese` FOREIGN KEY (`codeReservation`) REFERENCES `reservation` (`codeReservation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Typei` FOREIGN KEY (`numTypeContainer`) REFERENCES `typeContainer` (`numTypeContainer`);

--
-- Constraints for table `tarificationContainer`
--
ALTER TABLE `tarificationContainer`
  ADD CONSTRAINT `fk_Type` FOREIGN KEY (`numTypeContainer`) REFERENCES `typeContainer` (`numTypeContainer`);

--
-- Constraints for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `fk_codeP` FOREIGN KEY (`codePays`) REFERENCES `pays` (`codePays`);

--
-- Constraints for table `ville`
--
ALTER TABLE `ville`
  ADD CONSTRAINT `fk_codePa` FOREIGN KEY (`codePays`) REFERENCES `pays` (`codePays`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
