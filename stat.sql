-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 30 Mai 2021 à 12:47
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `stat`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL DEFAULT '',
  `pass` varchar(50) NOT NULL DEFAULT '',
  `nom` varchar(50) NOT NULL DEFAULT '',
  `prenom` varchar(50) NOT NULL DEFAULT '',
  `agence` varchar(50) NOT NULL DEFAULT '',
  `adr_user` varchar(70) NOT NULL,
  `tel_user` varchar(25) NOT NULL,
  `mail_user` varchar(70) NOT NULL,
  `reseau` varchar(70) NOT NULL,
  `type_user` varchar(20) NOT NULL DEFAULT 'user',
  `etat_user` varchar(2) NOT NULL DEFAULT 'D',
  `id_par` int(11) NOT NULL DEFAULT '0',
  `wilaya` varchar(70) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_user`, `login`, `pass`, `nom`, `prenom`, `agence`, `adr_user`, `tel_user`, `mail_user`, `reseau`, `type_user`, `etat_user`, `id_par`, `wilaya`) VALUES
(1, 'MREDJAH', 'e063c95ba57e17c61a82f7996299dbeb861fdabb', 'REDJAH', 'MED LAMINE', 'd0700', 'CONSTANTINE', '', '', 'CASH', 'dr', 'A', 0, 'Constantine'),
(2, 'IZEMMACHE', '1a22cd7f66da4870858b3246636790aa56a47e6d', 'ZEMMACHE', 'IMEN', 'd0200', 'ALGER I', '', '', 'CASH', 'dr', 'A', 0, 'Alger'),
(3, 'dkenzoua', '59179dc4eece20be6b7b735c96c0ec31925ceebf', 'KENZOUA ', 'Dallal', 'd0600', 'ALGER II', '', '', 'CASH', 'dr', 'A', 0, 'Alger'),
(4, 'fhouhou', '76556fd4c0afb0a88eaeceb0ddd37d60db6ec14c', 'Houhou', 'Fatima', 'd0500', 'SUCCURSALE EST', '213771348698', '', 'CASH', 'dr', 'A', 0, 'Annaba'),
(5, 'DMERABET', 'f85a4dda182285dc3d97857a57adad198833d0a8', 'MERABET', 'DJAZIA', 'd0300', 'SUCCURSALE WEST', '', '', 'CASH', 'dr', 'A', 0, 'Oran'),
(6, 'EBEDOUI', '362a66f24d559f6b7c353d5b153b1b7ab7f80ce8', 'BEDOUI', 'Elhocine', 'd0400', 'citÃ© IBN BADIS NÂ° 42 , Hassi Messaoud, OUARGLA', ' 213 662 245', 'e-bedoui@cash-assurances.dz', 'CASH', 'dr', 'A', 0, 'Ouargla'),
(7, 'akhaldi', '6707e835ac11e46712a185609a1d90d769d79a4c', 'KHALDI', 'AZZEDINE', 'd0701', '12 rue amrane ali lot ferhat biskra', '0551045454 ', 'a-khaldi@cash-assurances.dz', 'CASH', 'user', 'A', 1, ''),
(8, 'ndjddou', '3d703fcaff62cdfa34cf2bbe2830cde4f5b606ea', 'DJEDDOU', 'NAOUEL', 'd0701', 'd701', '033657548', 'n-djeddou@cash-assurances.dz', 'CASH', 'user', 'A', 1, ''),
(9, 'SBENSALEM', 'f7216851f9fa39c4992c00b4af955e41928ec49f', 'BENSALEM', 'SARRA', 'd0703', 'promotion immo freres   BD entrpreneurs Bt1 bloc2', '036519207', '', 'CASH', 'user', 'A', 1, ''),
(10, 'SGUERRA', '8bd19af7d152d449368c319032ad0dffbf4ef041', 'GUERRA', 'SOUAD', 'd0703', 'promotion immo freres   BD entrpreneurs Bt1 bloc2', '036519207', '', 'CASH', 'user', 'A', 1, ''),
(11, 'HSASSI', '2a34e3ba99728fd6407ab654a3df36316006e0bc', 'SASSI', 'HALIM', 'd0704', '226 Lots Route de Setif N117 Bordj Bou Arreridj', '035744417', '', 'CASH', 'user', 'A', 1, ''),
(12, 'RBERKA', 'c67aa6893ebcb29b204aeacbde23232aedc566f4', 'BERKA', 'RIADH', 'd0704', '226 Lots Route de Setif N117 Bordj Bou Arreridj', '035744417', '', 'CASH', 'user', 'A', 1, ''),
(13, 'SHAMLAT', 'fd6f3bb7f08aca03f737227b27f4df24a4d8afec', 'HAMLAT', 'SOUMIA', 'd0705', '6 Rue Ali NMeur  Batna', '033807880', '', 'CASH', 'user', 'A', 1, ''),
(14, 'ZZEGHDOUD', '43fff3219b959c9161c64dbce29853a29d73d8e6', 'ZEGHDOUD', 'ZOULIKHA', 'd0705', '6 Rue Ali NMeur  Batna', '033807880', '', 'CASH', 'user', 'A', 1, ''),
(15, 'ania', '1d73cc08445058121f6450cf41ee89c51c48a4cf', 'nia', 'affaf', 'd0706', '47A  Avenue Kadour Boumedous (BEL ï¿½AIR) ', '031927292', '', 'CASH', 'user', 'A', 1, ''),
(16, 'SABED', '44016241861bf40a4d188a61161e6e890a22f601', 'ABED', 'SOUMIYA', 'd0706', '47A  Avenue Kadour Boumedous (BEL ï¿½AIR) ', '031927292', '', 'CASH', 'user', 'A', 1, ''),
(19, 'kkhiar', 'd0ac05099c52bf63753bd2e11a43238041dca3ba', 'KHIAR', 'KARIMA', 'd0201', '02 rue AMRIOU el Biar - Alger', '021799044', '', 'CASH', 'user', 'A', 2, ''),
(20, 'sferdjalah', '34c5a40344134cb25365f90fc297dd420e5dba41', 'FERDJALAH', 'Salima', 'd0201', '02 rue AMRIOU el Biar - Alger', '021799044', '', 'CASH', 'user', 'A', 2, ''),
(21, 'scherchame', 'bef2fa5b9dd7e2c88a625d0ef408b2a0bb73d3f4', 'cherchame', 'Samya', 'd0202', '34 rue Ziar abedelkader Bouloughne alger ', '', '', 'CASH', 'user', 'A', 2, ''),
(22, 'SABADA', '0c399cb4fe443ff769b8ed7dc1a2eac9dbcdcd63', 'ABADA', 'SARAH', 'd0202', '34 rue Ziar abedelkader Bouloughne alger ', '', '', 'CASH', 'user', 'A', 2, ''),
(23, 'mbenhassen', '13bdd69c3e52a16767aaf2b93fbfb5ad7e256910', 'BENHASSEN', 'MERVET', 'd0203', 'Residence Chabani Serie N 9 Val d’Hydra - Alger', '021480368', '', 'CASH', 'user', 'D', 2, ''),
(24, 'akermi', 'ee41c6c0b540f301ba3045ef7ab11c8e54458927', 'KERMI', 'AMEL', 'd0203', 'Residence Chabani Serie N 9 Val dï¿½Hydra - Alger', '021480368', '', 'CASH', 'user', 'A', 2, ''),
(25, 'amahmoud', 'f6ada35024065ea87eb0faf9913c59aa10baf963', 'MAHMOUD', 'ABBAD', 'd0209', '7  Rue des Freres Djilali  Birkhadem - Alger', '021544913', '', 'CASH', 'user', 'A', 2, ''),
(26, 'mhaouacheOLD', '90b123321398c5d3b64a4c1ef096650a43f53b52', 'HAOUACHE', 'MONCEF', 'd0209', '7  Rue des Freres Djilali  Birkhadem - Alger', '021544913', '', 'CASH', 'user', 'D', 2, ''),
(27, 'rzitouni', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'ZITOUNI', 'Redounane', 'd0211', '05  Rue des freres Bouadou  Bir Mourad Rais  Alger', '023542485', '', 'CASH', 'user', 'A', 2, ''),
(28, 'ridjer', '8d6194bdf798325835009c05db841748d4036da6', 'IDJER', 'Riad', 'd0211', '05  Rue des freres Bouadou  Bir Mourad Rais  Alger', '023542485', '', 'CASH', 'user', 'A', 2, ''),
(29, 'ysmahi', '67ef12871fd7684d8ec41bb1641045f0330b8add', 'SMAHI', 'YACINE', 'd0212', '12 lotissement Citmil  Dely brahim', '023304174', '', 'CASH', 'user', 'A', 2, ''),
(30, 'zahmedameur', '974a4d10fbd95525f9578426d7a4402299de12c4', 'AHMEDAMEUR', 'ZINEB', 'd0212', '12 lotissement Citmil  Dely brahim', '023304174', 'z-ahmedameur@cash-assurances.dz', 'CASH', 'user', 'A', 2, ''),
(31, 'RHABBAR', '8861fd7b2c77ba041e0dbf159ec2ba72601b04a2', 'HABBAR', 'RAFIQA', 'd0901', '32 Logements -CHARA 04', '027721455', '', 'CASH', 'user', 'A', 2, ''),
(32, 'LKHETIB', '425bf67231b069153a3c9dc45e17e8ec7eb9666d', 'KHETIB', 'LEYLA', 'd0901', '32 Logements -CHARA 04', '027721452', '', 'CASH', 'user', 'A', 2, ''),
(33, 'AOUAILI', '5deda58dd8b8ba6e74f50a2376c9e9362c594c38', 'OUAILI', 'ADNAN', 'd0906', 'Blida', '', '', 'CASH', 'user', 'A', 2, ''),
(34, 'ABENYOUCEF', 'ff0cf40d96c44e56e06cd7d4dca2f5cb831fe8d1', 'BENYOUCEF', 'AKILA', 'd0906', 'Blida', '', '', 'CASH', 'user', 'A', 2, ''),
(35, 'ABOURNANE', 'ee40060ac976a89de261fea6d9edda4602ae502d', 'BOURNANE', 'AZOUAOU', 'd0801', 'Projet 406 cosider promotion bat 27 Karim Belkacem', '026102130', '', 'CASH', 'user', 'D', 3, ''),
(36, 'BREZIKA', '7ee6d9fb0859be2ece38681009b416b8c7bbf80f', 'REZIKA', 'BEDOUHENE', 'd0801', 'Projet 406 cosider promotion bat 27 Karim Belkacem', '026102130', '', 'CASH', 'user', 'A', 3, ''),
(37, 'KKHELLOUFI', '8fd749b734b11e666d0b684768585e1fcedabf6b', 'KHELOUFI', 'KENZA', 'd0610', 'Cite 730 logements, tour 2 AADL, Babezzouar ', '023929613', '', 'CASH', 'user', 'A', 3, ''),
(38, 'MAMMARI', '77f6eaba6b7e1de9b8008f310fd186d0eac4be85', 'AMMARI', 'MERIEM', 'd0610', 'Cite 730 logements, tour 2 AADL, Babezzouar ', '024929613', '', 'CASH', 'user', 'A', 3, ''),
(39, 'ckhelfaoui', '218de5ccc8d73eab7e06ba8584c3b438e148417e', 'KHELFAOUI', 'CHAFIA', 'd1002', 'Carrefour Naceria - Bejaia', '034204942', '', 'CASH', 'user', 'A', 3, ''),
(40, 'ibenmanseur', '9196c8edb7f037567e67b6c7b02d64da8283a2d4', 'BENMANSEUR', 'IBRAHIM', 'd1002', 'Carrefour Naceria - Bejaia', '034204942', '', 'CASH', 'user', 'A', 3, ''),
(41, 'NKACI', '11e16ff92ef2ad9414a51518557040777247ba68', 'NKACI', 'NORA', 'D1007', 'Akbou', '', '', 'CASH', 'user', 'A', 3, ''),
(42, 'KBOUMEDJAOUD', 'd26cbd713dff87349ac3f5076b3d5db39dc985fa', 'BOUMEDJAOUD', 'KAHINA', 'D1007', 'Akbou', '', '', 'CASH', 'user', 'A', 3, ''),
(43, 'mboukhenouf', 'bfbcf61d55a1d126033babe0826618006154ef7f', 'BOUKHENOUF', 'MOHAMED ANIS', 'd0604', '03 RUE MUSTAPHA BOUHIRED-Alger', '', '', 'CASH', 'user', 'D', 3, ''),
(44, 'nboucherit', '87180c19f3980da35e9af2d04c8b5221e30802f2', 'BOUCHERIT', 'Nassim Lakhdar', 'd0604', '03 RUE MUSTAPHA BOUHIRED-Alger', '', '', 'CASH', 'user', 'A', 3, ''),
(45, 'FHABBOU', 'a164457ed2a765c3487c338b7b3cfa28d5e868c3', 'HABBOU', 'FATMA-ZOHRA', 'd0605', '47,Rue Khodjetel-Djeld Mahmoud-les sources B M R ', '021541168', '', 'CASH', 'user', 'A', 3, ''),
(46, 'AOUAD', 'e7bd97a3195ffd383bd2c193335c69d682b9c3c9', 'OUAD', 'AYOUB', 'd0605', '47,Rue Khodjetel-Djeld Mahmoud-les sources B M R ', '021541168', '', 'CASH', 'user', 'A', 3, ''),
(47, 'AAITKACI', '24bf8e3c6002e20094c31acc78b9ffc3318b230c', 'AIT KACI', 'Abderrazak ', 'd0813', 'Cite AADL  132 lgts  N  06 C08 BT G BOUIRA ', '', '', 'CASH', 'user', 'A', 3, ''),
(48, 'YBESSIRE', '9d9e40fb83d9a31b36c467387ebebba8cfb63a06', 'BESSIRE ', 'Douniazad Yamina', 'd0813', 'Cite AADL  132 lgts  N  06 C08 BT G BOUIRA ', '0555599567', 'y-bessire@cash-assurances.dz', 'CASH', 'user', 'A', 3, ''),
(49, 'CGUENFOUD', 'c5de4c5fe7de698bd968dcce0d5039c8d579e3fe', 'GUENFOUD', 'CHABANE ', 'd0808', ' Centre Commertial Cosider TATAREG Boumerdes ', '024947705', 'c-guenfoud@cash-assurances.dz', 'CASH', 'user', 'A', 3, ''),
(50, 'dbelaid', '4332c5eb1916d1da9975c988a697ec69b3ac5f9c', 'BELAID', 'DJAMILA ', 'd0808', ' Centre Commertial Cosider TATAREG Boumerdes ', '024947705', '', 'CASH', 'user', 'A', 3, ''),
(51, 'zhamrioui', '8d6d776f3e6389df4311f4ea8327ba8325a483cf', 'HAMRIOUI', 'ZORRA', 'd0808', ' Centre Commertial Cosider TATAREG Boumerdes ', '024947705', '', 'CASH', 'user', 'A', 3, ''),
(52, '501_prod04', 'a30f77cc23a3c5c7e3080cfba765a5159007efe0', 'Rahmani', 'Nadjette', 'd0501', '47, Bd du 1er Novembre 1954 Annaba', '038866854', '', 'CASH', 'user', 'A', 4, ''),
(53, 'AMESBAH', '7be8c716cfde6fd7b9a70577fb5c3aa24df50d23', 'MESBAH', 'ABDALLAH', 'd0501', '47, Bd du 1er Novembre 1954 Annaba', '038866854', '', 'CASH', 'user', 'A', 4, ''),
(54, 'FSISTA', '4160411c12cd9266db6e713af21922313827c6fd', 'Amar SISTA', 'FATAH', 'd0502', 'Allee du 20 Aout 55 Centre com', '038721621', '', 'CASH', 'user', 'A', 4, ''),
(55, 'HKECHKOUCHA', '5e0e829c2e0f629f1149ab4e57a9ab39514c58fa', 'KECHKOUCHA', 'HANANE', 'd0502', 'Allee du 20 Aout 55 Centre com', '038721621', '', 'CASH', 'user', 'A', 4, ''),
(56, 'FABLOUL', 'bef360e9f3679fdcd03b2439326ca00ce2f767cd', 'ABLOUL', 'FARIDA', 'd0507', '47, Bd du 1er Novembre 1954 Annaba', '', '', 'CASH', 'user', 'A', 4, ''),
(57, 'MSEBTI', 'd7249cce43aeabfcfa4288ee8c89c605fd17d406', 'SEBTI', 'MOHAMED', 'd0507', '47, Bd du 1er Novembre 1954 Annaba', '', '', 'CASH', 'user', 'A', 4, ''),
(58, 'IHAYANI', '65c8b29ae2f5c13f0a5a76e52fdc17a30234aa48', 'HAYANI', 'IMENE', 'd0301', 'Agent Technique Assurance Niv2 | Agence 301', 'i-hayani@cas', '', 'CASH', 'user', 'D', 5, ''),
(59, 'shassani', '9beca106fd2b6451a1e679a4f3934056e300a3e3', 'HASSANI', 'SOUAD', 'd0301', '24 COOPERATIVE EL HANDASSA  - Oran', '041221084', '', 'CASH', 'user', 'A', 5, ''),
(60, 'ANECHNICHE', '1be245e66fcf67c0f3bd28eef440db1b362e9e9c', 'NECHNICHE', 'AMINA', 'd0302', 'Oran', '', '', 'CASH', 'user', 'A', 5, ''),
(61, 'YDEKHILI', 'b042367586f2aa2247314eee7692ad0d42ed6f2b', 'DEKHILI', 'YASSINE', 'd0302', 'Oran', '', '', 'CASH', 'user', 'A', 5, ''),
(62, 'WMIDOUNI', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'MIDOUNI', 'WAHIBA', 'd0303', 'Cite 200 Logts AADL Route d oran Sidi Bel Abbes', '0560093738', '', 'CASH', 'user', 'A', 5, ''),
(63, 'NZEKRAOUI', 'ed8797a581f545c46ad23eefcd9e08a3e3829eeb', 'ZAKRAOUI', 'NOREDDINE', 'd0303', 'Cite 200 Logts AADL Route d oran Sidi Bel Abbes', '0560093738', '', 'CASH', 'user', 'A', 5, ''),
(64, 'AYOUCFI', '8e1a9a25eb3870315482d181962d04e2f32c8386', 'YOUSFI', 'AYOUSFI', 'd0304', 'Cite 52 logts aadl n 03 Imama Mansourah Tlemcen', '', '', 'CASH', 'user', 'D', 5, ''),
(65, 'FZKARAOUZENE', '8e539c6bccda97fc7f0c0dc24edce5b79243d549', 'KARAOUZENE', 'FATIMA ZOHRA', 'd0304', 'Cite 52 logts aadl n 03 Imama Mansourah Tlemcen', '', '', 'CASH', 'user', 'D', 5, ''),
(66, 'DFOUKERACH', '6c99a43aaefc29f3c7ca8d508bc444054f4f5467', 'FOUKERACH', 'DEHHOU', 'd0305', 'Cite 240 Logements AADL, Tijdite', '045398600', '', 'CASH', 'user', 'A', 5, ''),
(67, 'MLAHOUEL', 'fe389c668f4b4c1621fdb1965fa215606b781198', 'LAHOUEL', 'MALIKA', 'd0305', 'Cite 240 Logements AADL, Tijdite', '045398600', '', 'CASH', 'user', 'A', 5, ''),
(68, 'BABDERRAHIM', '905e19ebd136a796b62442098e6fb62f4824144b', 'AIT ABDERRAHIM', 'BLAID', 'd0306', 'Cite 50 LGT ALSP CiteeL BADR BT N  5  Tiaret ', '0782096701', 'belaid22b@gmail.com', 'CASH', 'user', 'A', 5, ''),
(69, 'RBENAISSA', '7cb5f8963286f649b238100f9330f43d1be930f0', 'BENAISSA', 'RIMA', 'd0306', 'Cite 50 LGT ALSP CiteeL BADR BT N  5  Tiaret ', '', '', 'CASH', 'user', 'A', 5, ''),
(70, 'amahfoud', '578fb95bd4514109a9b53cbf4309b65b140d7c93', 'MAHFOUD', 'AMINE', 'd0401', 'Cite Chaabani Mohamed BP 614 Hassi Messaoud', '029737012', '', 'CASH', 'user', 'A', 6, ''),
(71, 'FLAKHDARI1', 'b8b6e9fd2e82fd358daf3aab53f6dffd762ebb9f', 'LAKHDARI', 'FATMA ZOHRA', 'd0401', 'Cite Chaabani Mohamed BP 614 Hassi Messaoud', '029737012', '', 'CASH', 'user', 'D', 6, ''),
(72, 'FSEBA', '00d5f42d6e77a5f155dd794331fc98bc07cc68c3', 'SEBA', 'FOUAD', 'd0402', 'Centre Commercial Mourki', '029820404', '', 'CASH', 'user', 'A', 6, ''),
(73, 'hbahmed', '5d95734045207b277e65400f52d8c6bfa8eff147', 'HADJSAID', 'BAHMED', 'd0402', 'Centre Commercial Mourki', '029255454', 'cashgh@yahoo.fr', 'CASH', 'user', 'A', 6, ''),
(74, 'DGCASH', '190822df7fd8dab94b80fe2d79a3ff07e578210a', 'CASH', 'Supervisor', 'DG', 'ALGER', '', '', 'CASH', 'sp', 'A', 0, ''),
(75, 'aglic', '9b33130f63f7b2d3bed5140308fb9ea5a1ae100d', 'AGLIC', 'Comptabilite', 'AGLIC', 'ALGER', '', '', 'CASH', 'sp', 'A', 0, ''),
(76, 'souandjeli', '0b63dcb4c027ad5fb2f46325d6c1e41b5392e848', 'OUANDJELI', 'Samia', 'AGLIC', 'ALGER', '', '', 'AGLIC', 'admin', 'A', 0, ''),
(77, 'byamina', '4467ee835b9bcbfc8cf962c5b1e4f2629b82dfd6', 'BEREZG', 'Yamina', 'AGLIC', 'ALGER', '', '', 'AGLIC', 'admin', 'A', 0, ''),
(78, 'RZEGHADI', '5329d54929467d2ce76f78eaeb35ccd6222aff6e', 'ZEGHADI', 'Redha', 'd0707', '', '', '', 'CASH', 'user', 'A', 1, ''),
(79, 'ylouda', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'LOUDA', 'Yacine', 'AGLIC', 'ALGER', '213 770 350 ', 'yacine.louda@aglic.dz', 'AGLIC', 'admin', 'A', 0, ''),
(80, 'ABLARBI', '8f9a76adba2ccc41ec95e7dc7c0a42c5518c6781', 'BLARBI', 'Assia', 'd0301', '04  rue Lakhdar Hafiz ex rue d’IGLY - Oran', '041392388', '', 'CASH', 'user', 'A', 5, ''),
(81, 'SBELHARET', 'aaaa7ec83c1104abcd0c604dd62c14a483bc950e', 'BELHARET', 'Salma', 'd0400', 'Citï¿½ Ben Badis No 42, BP 614, Hassi Messaoud, OUARGLA', '029793040', 's-belharet@cash-assurances.dz', 'CASH', 'user', 'A', 6, ''),
(82, 'FLAKHDARI', 'e46075e1c8ec8fd9008e0674734282268ae71eb2', 'LAKHDARI ', 'FATMA ZOHRA', 'd0403', 'Citï¿½ 24 Fï¿½vrier lot21 Ouargla ', '029737012', '', 'CASH', 'user', 'A', 6, ''),
(83, 'HTAMNI', 'c41b079d7f97c768e5faa64b492a2c35fda0778e', 'TAMNI', 'Hamza', 'd0403', 'Cite 24 Fevrier lot21 Ouargla ', '029 70 08 30', '', 'CASH', 'user', 'A', 6, ''),
(84, 'arosa', '63bb945ad99215edce46768e072a679e6aa78f04', 'AIT-ATMANE', 'ROSA', 'd1002', 'Carrefour Naceria - Bejaia', '34204942', '', 'CASH', 'user', 'A', 3, ''),
(85, 'BLOTFI', 'e1e28d8fd5f02f98d8d3e2a7269a26c9f7c38df8', 'YOUNES BOUACIDA', 'LOTFI', 'd0503', 'rue HASSINI Mohamed Saleh RDC n°01 Guelma', '0770 70 23 1', '', 'CASH-Assurance', 'user', 'A', 4, ''),
(86, 'HREZAIGUIA', 'f26d56ee1eebbab02a6284b28d8b09ef072a265c', 'REZAIGUIA', 'Hamou', 'd0307', '04 rue Lakhdar HAFIZ ( Ex rue d IGLY)', '0555 11 55 8', 'h-rezaiguia@cash-assurances.dz', 'CASH-Assurance', 'user', 'A', 5, ''),
(87, 'ACHOUAL', '266a5f6e705184e81461dd37c256c60544b36d92', 'CHOUAL', 'Amina', 'd0307', '04 rue Lakhdar HAFIZ ( Ex rue d IGLY)', '', '', 'CASH', 'user', 'A', 5, ''),
(89, 'DHAMANE', '2c945214b4bbe78a240d360778130e238993c8ab', 'HAMANE', 'Djamel', 'd0302', 'Oran', '', '', 'CASH', 'user', 'A', 5, ''),
(90, 'IKADI', 'd777dd683e3fe0fd6f80d2a00fc349f346d10784', 'KADI', 'ISLAM', 'd0203', 'Residence Chabani Serie N 9 Val dï¿½Hydra - Alger', '021480368', '', 'CASH', 'user', 'A', 2, ''),
(91, 'amechehed', '89d804eabae4ecd9ffb1bd9a4d165ed77f051bc9', 'MECHEHED', 'Abderraouf Akram', 'd0604', '03 RUE MUSTAPHA BOUHIRED-Alger', '', '', 'CASH', 'user', 'A', 3, ''),
(92, 'RBELKACEM', 'f26cff16401dd045a7c25354874e7d74485d71e7', 'BELKACEM', 'RYMA', 'd0304', 'Cite 52 logts aadl n 03 Imama Mansourah Tlemcen', '', '', 'CASH', 'user', 'A', 5, ''),
(93, 'AAMEUR', '2deea3c828d1f457dc5018f2a2a43e971744a0ad', 'AMEUR', 'ABDELAZIZ', 'd0304', 'Cite 52 logts aadl n 03 Imama Mansourah Tlemcen', '', '', 'CASH', 'user', 'A', 5, ''),
(94, 'mhaouache', '90b123321398c5d3b64a4c1ef096650a43f53b52', 'HAOUACHE', 'MONCEF', 'd0201', '02 rue AMRIOU el Biar - Alger', '021799044', '', 'CASH', 'user', 'A', 2, ''),
(95, 'DHADJI', '98c7a026d85b7c558d58e1997bde5a8182b5a625', 'HADJI', 'DJOUHER', 'd0801', 'Projet 406 cosider promotion bat 27 Karim Belkacem', '026102130', '', 'CASH', 'user', 'A', 3, ''),
(97, 'ZBOUNNECHE', 'f26d56ee1eebbab02a6284b28d8b09ef072a265c', 'BOUNNECHE', 'Zouhyr', 'd0702', 'Route de la Soummam, Jijel', '034470750', 'z-bounneche@cash-assurances.dz', 'CASH', 'user', 'A', 1, ''),
(98, 'NGUEHAM', '09ff7401c7ce4c7d5bac883ffa7143f036355912', 'GUEHAM', 'Nassim', 'd0702', 'Route de la Soummam, Jijel', '0770115766', 'z-bounneche@cash-assurances.dz', 'CASH', 'user', 'A', 1, ''),
(99, 'super', '8451ba8a14d79753d34cb33b51ba46b4b025eb81', 'CASH', 'Supervisor', 'DG', 'ALGER', '', '', 'CASH', 'sp', 'A', 0, ''),
(100, 'likou', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'Likou', 'D commercial', 'AGLIC', 'ALGER', '', '', 'CASH', 'sp', 'A', 0, ''),
(101, 'SDJAIL', 'd6fce424e1a6b9951f3c4fb80d8ab3d0f0d9ce41', 'DJAIL', 'SORAYA', 'D1007', 'Akbou', '', '', 'CASH', 'user', 'A', 3, ''),
(102, 'MKHEDAOUI', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'KHEDAOUI', 'MALAK', 'd0902', 'AIN DEFLA', '027.51.26.34', 'm-khedaoui@cash-assurances.dz', 'CASH', 'user', 'A', 3, ''),
(103, 'MROUIBAH', 'f26d56ee1eebbab02a6284b28d8b09ef072a265c', 'ROUIBAH', 'Mohamed', 'd0504', 'Tebessa', '037562261', 'm-rouibah@cash-assurances.dz', 'CASH', 'user', 'A', 4, ''),
(104, 'MDJEMLI', '544011c121d23e7f75b84a47a049c6ae542e3a61', 'DJEMLI', 'Mohamed Larbi', 'd0507', '47, Bd du 1er Novembre 1954 Annaba', '', '', 'CASH', 'user', 'A', 4, ''),
(105, 'RGUENFOUD', '390c5ad6e7b24a3dc984b1d7b6255b5aebb9d1d0', 'GUENFOUD', 'RAOUF', 'd0507', '47, Bd du 1er Novembre 1954 Annaba', '213777720758', 'r-guenfoud@cash-assurances.dz', 'CASH', 'user', 'A', 4, ''),
(107, 'AMAHMOUDI', '4720580c2f3638b457b307205598b5cda693986d', 'MAHMOUDI', 'ASMAA', 'd0808', ' Centre Commertial Cosider TATAREG Boumerdes ', '024947705', '', 'CASH', 'user', 'A', 3, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
