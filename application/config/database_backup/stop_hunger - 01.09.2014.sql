-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 01, 2014 at 02:59 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stop_hunger`
--
CREATE DATABASE IF NOT EXISTS `stop_hunger` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `stop_hunger`;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `description` text,
  `more_details` text,
  `profile` varchar(255) DEFAULT NULL,
  `partener` varchar(255) DEFAULT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_case` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `id_case`, `title`, `filepath`, `insertdate`) VALUES
(1, 9, 'bla bla bla', '438db32057fcddce423e9a8a8ecd16f5.jpg', '2014-07-28 14:27:57'),
(2, 9, 'filename', 'd615dadcb1eca32534ddfbceb721eca2.jpg', '2014-07-28 14:29:38'),
(3, 9, 'some title', '64aa539ad423c3ff5473817e799ab7ec.jpg', '2014-07-28 14:30:03'),
(4, 9, 'Numele la fisier', 'a9ed81c90b5ecf28f878cd54384d1844.jpg', '2014-07-28 14:44:09'),
(5, 9, 'nume', '3de8ee01ba47dac0c2b95eca2bcd6ea1.jpg', '2014-07-28 15:02:27'),
(6, 9, 'asdasd', 'c4217aa4df146c1224dbf3255cd941ec.jpg', '2014-07-28 15:02:37'),
(7, 8, 'somename', 'ef87ea901a5835d3cc864c27c666acd2.jpg', '2014-07-29 07:20:21'),
(8, 6, 'imagine 221', '8e1dfeee84b66f8087604508adcba007.jpg', '2014-07-29 08:22:13'),
(9, 6, 'blah', '5e895dad94686ff71be1be5c9988ed99.png', '2014-07-29 08:23:56'),
(10, 10, 'Bla :)', 'db85cd14efa6eec82205f581298cdbfa.jpg', '2014-07-29 10:30:11'),
(11, 20, 'test', 'bc5c09dde7e8c61553258f78815df0e2.jpg', '2014-08-13 10:05:24'),
(12, 21, 'nume fisier', 'f34e021dcc1d9f54a5a0a2ea09f473f1.jpg', '2014-08-18 14:17:08'),
(13, 21, 'alt fisier', '6afa34761d475b2817e102b506e7a57c.jpg', '2014-08-18 14:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `coverphoto` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo_bottom` varchar(255) DEFAULT NULL,
  `intro` text CHARACTER SET utf8,
  `description` text CHARACTER SET utf8,
  `date` varchar(255) DEFAULT NULL,
  `crateddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `coverphoto`, `photo_bottom`, `intro`, `description`, `date`, `crateddate`) VALUES
(1, 'Daruieste un inceput de scoala fericit!', 'copii.jpg', NULL, 'Ne-am propus sa sprijinim in aceasta toamna 300 de copii sa fie pregatiti pentru scoala . Ii poti ajuta si tu.', 'Asociatia Stop Hunger va desfasura in perioada august - octombrie proiectul „Daruieste un inceput de scoala fericit!”. Alaturi de tine le vom darui celor 300 de copii inclusi in proiect cate un ghiozdan echipat pentru inceperea noului an scolar, cu caiete, creioane, pixuri si alte categorii de rechizite. <br/><br/>\nAm demarat acest proiect ca urmare a feedbackului primit in mod direct, in urma interactiunilor cu familii modeste , ca inceputul scolii este un moment dificil si nu unul de bucurie, in conditiile in care  familiile nu isi permit sa le ofere copiilor ghizdane, carti si rechizite. <br/><br/>\n\nAceasta campanie este desfasurata de catre Asociatia Stop Hunger in parteneriat cu Sodexo si Novo Park. Campania este sustinuta si de mai multe organizații neguvernamentale, care au desfășurat anchetele sociale pentru a identifica copiii: <br/><br/>\n\n• Fundația Sf. Dimitrie (București)<br/><br/>\n• Fundația Metropolis (București) <br/><br/>\n• Organizația Caritas Satu Mare<br/><br/>\n• Fundația Hospice Emanuel Oradea<br/><br/>\n• Fundația Casa Speranței Brasov & București<br/><br/>\n• Fundația pentru Voi Timișoara<br/><br/>\n• Fundația Star of Hope Iași<br/><br/>\n• Fundația Serviciilor Sociale Bethany<br/><br/>\nImpreuna putem darui multa bucurie. Daca vrei sa daruiesti un ghiozdan, te rugam, scrie-ne la <b>office@stophunger.ro</b> si mentioneaza carui copil alege  doresti sa ii faci aceasta bucurie. Vom decide impreuna cum ii vom trimite ghiozdanul . <br/>\nLasa-ne adresa de email pentru a-ti trimite procesul verbal de predare –primire.\n', 'August 2014', '2014-07-31 12:25:13'),
(2, 'Implica-te si tu alaturi de noi! ', 'implicate.jpg', 'sodexo sprijina cu mandrie stop hunger.jpg', 'Doneaza si tu 2% Asociatiei Stop Hunger pentru a reusi impreuna sa schimbam in bine viata a cat mai multi copii! ', 'In 2014 toate donatiile primite din 2% de catre Asociatia Stop Hunger sunt utilizate pentru a sprijini copiii care traiesc in conditii de saracie si au risc sa abandoneze scoala in cadrul proiectului „Adopta o Familie” . Sustinuti si indrumati acesti copii pot reusi sa  aiba o viata mai buna. <br/><br/>\nCopii sunt selectati in urma unor anchete sociale si  primesc lunar o bursa pentru hrana, rechizite, incaltaminte, imbracaminte si medicamente. In plus primesc sprijin specializat: consiliere psihologica, mentoring, participare la activitati extracurricurale care sa ii ajute sa reuseasca in viata! <br/><br/>\nProgramul este implementat in prezent in Bucuresti, Brasov, Buzau, Iasi, Constanta,  Oradea, Timisoara, Targu Mures, Satu Mare si Vaslui. <br/><br/>\nSodexo auditeaza periodic Asociatia Stop Hunger, asigurandu-se ca toate fondurile primite sunt utilizate exclusiv in  beneficiul copiilor. <br/><br/>\nDaca ai ales sa donezi 2% si vrei sa te implici, contacteaza-ne la office@stophunger.ro pentru mai multe detalii. <br/><br/>\nAnual statul iti impoziteaza veniturile cu un procent de 16%. Conform Codului Fiscal - Legea 571 / 2003, Art. 84, fiecare persoana poate directiona 2% din cele 16% catre o organizatie non-guvernamentala. Asadar, in loc sa lasi acesti bani statului alege sa marchezi pozitiv viata unui copil. <br/><br/>\n', 'Aprilie 2014', '2014-07-31 12:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) CHARACTER SET utf8 NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `active`, `insertdate`) VALUES
(1, 'corneliu@yahoo.com', 1, '2014-08-22 10:17:34'),
(2, 'fucktard@yahooo', 1, '2014-08-22 10:32:13'),
(3, 'asd@yaa', 1, '2014-08-22 10:36:48'),
(4, 'ionescu.popescu@yahoo.com', 1, '2014-08-22 10:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `show_all_projects` tinyint(4) NOT NULL DEFAULT '0',
  `coverphoto` varchar(255) DEFAULT NULL,
  `photo_top` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo_bottom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `description`, `show_all_projects`, `coverphoto`, `photo_top`, `photo_bottom`, `insertdate`) VALUES
(1, 'Proiectul  "Adopta o Familie"  (2011- prezent)', 'adopta-o-familie', 'In cadrul programelor de sprijin adresate categoriilor de persoane aflate in dificultate, desfasurate de Asociatia Stop Hunger,  printre problemele majore constant intalnite in randul tinerilor sunt lipsa de repere pozitive, de indrumare si de modele.  <br/><br/>\nPornind de la acesta problema reala, am gandit in 2011 proiectul  „Adopta o Familie”,  o initiativa foarte curajoasa,  care s-a materializat  gratie entuziasmului companiilor partenere si al echipei de voluntari Sodexo. <br/><br/>\nObiectivul acestui proiect este crearea  unei retele de sprijin pentru copii care traiesc in conditii de saracie si prezinta un risc ridicat de abandon scolar. Mecanismul prin care copiii sunt sprijiniti este simplu si la indemana. Astfel, fiecare copil selectat in proiect este „adoptat” de o companie care accepta sa il acompanieze pe durata studiilor, oferindu-i o bursa lunara si mai ales mentoring. <br/><br/>\nDincolo de contributia financiara extrem de importanta pentru oricare dintre acesti copii, mentoringul este cel care va avea cu adevarat un impact pe termen lung.   <br/><br/>\nMecanismul proiectului ii sustine pe copii sa devina mai responsabili pentru dezvoltarea lor si le incurajeaza familiile sa utilizeze bursele lunare exclusiv pentru nevoile copiilor.  Copii implicati in proiect sunt indrumati si primesc gratuit consiliere, iar legatura cu sponsorii ii ajuta sa aiba o perspectiva pozitiva asupra vietii.  <br/><br/>\nRezultatele programului sunt usor de cuantificat observand progresul si reusitele copiilor. Fiecare admitere la liceu si reusita la examenul de bacalaureat , fiecare admitere la facultate reprezinta pentru toti cei implicati in program incununarea unei colaborari de succes. Pentru companii, acesta este momentul in care inteleg cat de valoros este minimum lor aport, in timp ce pentru copiii si familiile acestora, reprezinta schimbarea unui destin. <br/><br/>\nProiectul a fost initiat in anul 2011 si este implementat de Asociatia Stop Hunger, cu indrumarea si sprijinul companiei Sodexo. Programul este implementat in prezent in Bucuresti, Brasov, Constanta, Iasi, Oradea, Timisoara si Satu Mare. <br/><br/>\nPentru mai multe detalii despre cazurile sprijinite este nevoie sa aveti acces la sectiunea restrictionata creeata special pentru a proteja imaginea copiilor ajutati in cadrul acestui proiect. <br/><br/> Click <a href="/adopta-o-familie">aici</a> pentru cont la sectiunea restrictionata.\n\n<br/><br/>\n', 1, 'Adopta o Familie/Proiect Adopta o Familie (1).jpg', 'Adopta o Familie/Proiect Adopta o Familie (4).jpg', 'Adopta o Familie/Proiect Adopta o Familie (5).jpg', '2014-07-31 10:17:09'),
(2, 'Daruieste un inceput de scoala fericit!', 'un-inceput-de-scoala-fericit', ' <b>In aceasta toamna, ne-am propus sa sprijinim   300 de copii sa fie pregatiti pentru scoala . Ii poti ajuta si tu.</b>\n<br/><br/>\n\nAsociatia Stop Hunger desfasoara in perioada august - octombrie proiectul „Daruieste un inceput de scoala fericit!”. Alaturi de tine le vom darui celor 300 de copii inclusi in proiect cate un ghiozdan echipat pentru inceperea noului an scolar, cu caiete, creioane, pixuri si alte categorii de rechizite. \n<br/><br/>\nAm demarat acest proiect ca urmare a feedbackului primit in mod direct, in urma interactiunilor cu familii modeste, ca inceputul scolii este un moment dificil si nu unul de bucurie, in conditiile in care familiile nu isi permit sa le ofere copiilor ghizdane, carti si rechizite. \n<br/><br/>\nAceasta campanie este desfasurata de catre Asociatia Stop Hunger in parteneriat cu Sodexo si Novo Park. Campania este sustinuta si de mai multe organizații neguvernamentale, care au desfășurat anchetele sociale pentru a identifica copiii: \n<br/><br/>\n• Fundația Sf. Dimitrie (București)\n<br/><br/>\n• Fundația Metropolis (București) \n<br/><br/>\n• Organizația Caritas Satu Mare\n<br/><br/>\n• Fundația Hospice Emanuel Oradea\n<br/><br/>\n• Fundația Casa Speranței Brasov & București\n<br/><br/>\n• Fundația pentru Voi Timișoara\n<br/><br/>\n• Fundația Star of Hope Iași\n<br/><br/>\n• Fundația Serviciilor Sociale Bethany\n<br/><br/>\nImpreuna putem darui multa bucurie. Daca vrei sa daruiesti un ghiozdan, te rugam, scrie-ne la <a href="mailto:office@stophunger.ro">office@stophunger.ro</a>  si mentioneaza carui copil alege doresti sa ii faci aceasta bucurie. Vom decide impreuna cum ii vom trimite ghiozdanul . \nLasa-ne adresa de email pentru a-ti trimite procesul verbal de predare –primire.<br/><br/>\n\n\nLISTA COPIILOR INCLUSI IN PROIECT: <br/><br/>\n\n1.	M. ALEXANDRA, 15 ani, jud. Jud. BRASOV<br/>\n2.	T. VLAD, 19 ani, jud.  Jud. BRASOV<br/>\n3.	C. ANDREEA C. , 17 ani, jud. Jud. BRASOV<br/>\n4.	M.I IONUT, 11 ani, Jud. BRASOV<br/>\n5.	R. FLAVIA ALEXANDRA, 16 ani, Jud. BRASOV<br/>\n6.	I. ANDREI, 16 ani , Jud. BRASOV<br/>\n7.	S. GEORGE, 14 ani, Jud. BRASOV<br/>\n8.	C. ERIC , 8 ani , Jud. BRASOV<br/>\n9.	M., ALEXANDRU 14 ani, BUCURESTI<br/>\n10.	N. RAMONA, 8 ani, BUCURESTI<br/>\n11.	B. GABRIEL, 9 ani, BUCURESTI<br/>\n12.	S. LORIN, 10 ani, BUCURESTI<br/>\n13.	D. IULIAN MADALIN , 14 ani, CRAIOVA<br/>\n14.	S. SARA, 13 ani, CRAIOVA<br/>\n15.	O. ANDREI, 8 ani , TIMIS<br/>\n16.	C. CORINA  , 11 ani, TIMIS<br/>\n17.	N. CAMELIA , 13 ani, TIMIS<br/>\n18.	I. ELISABETA, 10 ani, TIMIS<br/>\n19.	I. LEONARDO, 9 ani, TIMIS<br/>\n20.	D. MELISA, 16 ani, Jud. SATU MARE<br/>\n21.	C. ANDREEA-MADALINA, 14 ani, Jud. IASI, COM. LITENI<br/>\n22.	C. CATALINA, 12 ani , Jud. IASI<br/>\n23.	B. CONSTATIN COSMIN, 13 ani, Jud. IASI<br/>\n24.	O. MARTA DUMITRITA , 13 ani, Jud. IASI <br/>\n25.	C. PETRONELA  , 13  an , Jud. IASI <br/>\n26.	A. V. ANDREI , 14 ani , BUCURESTI<br/>\n27.	A.  ANDREI, 9 ani, BUCURESTI<br/>\n28.	B. ANDREEA, 12 ani , BUCURESTI<br/>\n29.	B. LARISA, 14 ani, BUCURESTI<br/>\n30.	B. PETRE, 13 ani, BUCURESTI<br/>\n31.	B. FLORIN, 11 ani , BUCURESTI<br/>\n32.	C. GABRIEL, 14 ani , BUCURESTI<br/>\n33.	C.MIHAI, 14 ani, BUCURESTI<br/>\n34.	A.   NICOLAE, 11 ani, BUCURESTI<br/>\n35.	C. NICOLAE, 14 ani , BUCURESTI<br/>\n36.	D. DANIEL , 18 ani, BUCURESTI<br/>\n37.	G. ADRIAN, 12 ani , BUCURESTI<br/>\n38.	G. NICOLAE, 15 ani ,  <br/>\n39.	G. GIULIA, 13 ani , BUCURESTI<br/>\n40.	G.  CLAUDIU , 13 ani, BUCURESTI<br/>\n41.	G. IONUT, 12 ani, BUCURESTI<br/>\n42.	I. ANDREEA, 14 ani , BUCURESTI<br/>\n43.	L. IZABELA , 7 ani, BUCURESTI<br/>\n44.	M. BIANCA, 13 ani, BUCURESTI<br/>\n45.	N.  ALIN, 9 ani, BUCURESTI<br/>\n46.	N. SILVIU , 11 ani, BUCURESTI<br/>\n47.	N.  EMANUEL, 15 ani, BUCURESTI<br/>\n48.	P. DAVID, 11 ani, BUCURESTI<br/>\n49.	S.  ALEXANDRU, 13 ani, BUCURESTI<br/>\n50.	S. COSTEL, 13 ani, BUCURESTI<br/>\n51.	T. VALENTIN, 14 ani, BUCURESTI<br/>\n52.	V. GABRIEL, 11 ani, BUCURESTI<br/>\n53.	S.  MONICA, 8 ani, BUCURESTI<br/>\n54.	N. ANA, 11ani, BUCURESTI<br/>\n55.	N.  NICUSOR, 8 ani, BUCURESTI<br/>\n56.	B.  ANDREI, 13 ani, BUCURESTI<br/>\n57.	B. ANA, 14 ani, BUCURESTI<br/>\n58.	S. GABRIELA, 13 ani, BUCURESTI<br/>\n59.	S. NICOLAE, 15 ani, BUCURESTI<br/>\n60.	I. MARIA, 12 ani, BUCURESTI<br/>\n61.	S. DANUT, 12 ani, BUCURESTI<br/>\n62.	M. FLORIN, 13 ani, BUCURESTI<br/>\n63.	M. CRISTI, 12 ani, BUCURESTI<br/>\n64.	M. RALUCA, 12ani, BUCURESTI<br/>\n65.	B. SARA, 12 ani, BUCURESTI<br/>\n66.	D. NICOLAS, 12 ani, BUCURESTI<br/>\n67.	A. STEFAN, 14 ani, BUCURESTI<br/>\n68.	A. IONUT, 13 ani, BUCURESTI<br/>\n69.	A. GEORGIANA, 14 ani, BUCURESTI<br/>\n70.	P. SOFIAN, 11 ani, BUCURESTI<br/>\n71.	M. ANA MARIA, 10 ani, BUCURESTI<br/>\n72.	L. MARIA, 9 ani, BUCURESTI<br/>\n73.	M. AURELIAN, 9 ani, BUCURESTI<br/>\n74.	B. FLORENTINA, 10 ani, BUCURESTI<br/>\n75.	M. ALIN , 12 ani, BUCURESTI<br/>\n76.	A. VIOREL, 13 ani, BUCURESTI<br/>\n77.	R. FLORIN, 12 ani, BUCURESTI<br/>\n78.	T. ANDREI, 11 ani, BUCURESTI<br/>\n79.	T. STEFAN, 10 ani, BUCURESTI<br/>\n80.	N. ADRIAN, 10 ani, BUCURESTI<br/>\n81.	G. DENYS, 11 ani, BUCURESTI<br/>\n82.	I. PETRU, 6 ani, BUCURESTI<br/>\n83.	C. ROBERT, 6 ani, BUCURESTI<br/>\n84.	C. MARINA, 12 ani, BUCURESTI<br/>\n85.	M. FLORIAN, 14 ani, BUCURESTI<br/>\n86.	M. SARA, 6 ani, BUCURESTI<br/>\n87.	D. STEFANIA, 17 ani, BUCURESTI<br/>\n88.	L. MIHAI, 16 ani, BUCURESTI<br/>\n89.	D. GABRIELA, 16 ani, BUCURESTI<br/>\n90.	G. AGATA, 16 ani, BUCURESTI<br/>\n91.	A. ROBERT, 10 ani, BUCURESTI<br/>\n92.	P. MIHAELA, 18 ani, BUCURESTI<br/>\n93.	A. ANDREEA, 15 ani, BUCURESTI<br/>\n94.	S. STEFaniA, 13 ani, BUCURESTI<br/>\n95.	S. MARIA, 10 ani, BUCURESTI<br/>\n96.	S.DIMITRIE, 6 ani, BUCURESTI<br/>\n97.	S. ANTONIE, 12 ani, BUCURESTI<br/>\n98.	C. GABRIELA, 15 ani, BUCURESTI<br/>\n99.	P. ANDREEA, 15 ani, BUCURESTI<br/>\n100.	L. ELISABETA, 11 ani, BUCURESTI<br/>\n101.	G. LAURA, 15 ani, BUCURESTI<br/>\n102.	N. GABRIEL, 10 ani, BUCURESTI<br/>\n103.	N. GEORGIANA, 11 ani, BUCURESTI<br/>\n104.	N. RAMONA, 10 ani, BUCURESTI<br/>\n105.	P. IRINA, 16 ani, BUCURESTI<br/>\n106.	H.ALEXANDRA, 9 ani, Jud. BIHOR<br/>\n107.	B. FABIAN  , 11 ani, Jud. BIHOR<br/>\n108.	B. IONUT, 14ani, Jud. BIHOR<br/>\n109.	B. GIaniN, 11 ani, Jud. BIHOR<br/>\n110.	F. HADASA, 9 ani, Jud. BIHOR<br/>\n111.	T. GETA, 16 ani, Jud. BIHOR<br/>\n112.	T. CATALIN, 15 ani, Jud. BIHOR<br/>\n113.	G. MARCO, 16 ani, Jud. BIHOR<br/>\n114.	G. MARIA, 12 ani, Jud. BIHOR<br/>\n115.	G. GABRIEL, 11 ani, Jud. BIHOR<br/>\n116.	C. ELA, 14 ani, Jud. BIHOR<br/>\n117.	A. PAUL, 11 ani, Jud. IASI <br/>\n118.	O..ANDRADA IOANA, 9 ani, Jud. IASI<br/> \n119.	R. ANTONIO , 10 ani, Jud. IASI <br/>\n120.	S. TEODORA, 10 ani, Jud. IASI <br/>\n121.	B STEFAN, 11 ani, Jud. IASI <br/>\n122.	B. SILVIU PETRONEL, 7 ani, Jud. IASI <br/>\n123.	B. ALEX PETRONEL, 9 ani, Jud. IASI <br/>\n124.	G. VLAD, 11 ani, Jud. IASI <br/>\n125.	A. EMILIA ELENA, 8 ani, Jud. IASI <br/>\n126.	B. ANDREEA, 12 ani, Jud. IASI <br/>\n127.	C. PAULA, 14 ani, Jud. IASI <br/>\n128.	B. GIANINA, 14 ani, Jud. IASI <br/>\n129.	U. EMILIAN, 14 ani, Jud. IASI <br/>\n130.	A. OANA, 14 ani, Jud. IASI <br/>\n131.	P. NICUSOR, 14 ani, Jud. IASI <br/>\n132.	H. DIANA, 14 ani, Jud. IASI <br/>\n133.	D. NICOLETA, 14 ani, Jud. IASI <br/>\n134.	B. ELENA, 14 ani, Jud. IASI <br/>\n135.	M. LARISA, 14 ani, Jud. IASI <br/>\n136.	B. RALUCA, 13 ani, Jud. IASI <br/>\n137.	M.FLORINA, 13 ani, Jud. IASI <br/>\n138.	C. ANDREEA, 14 ani, Jud. IASI <br/>\n139.	C. CATALINA, 12 ani, Jud. IASI <br/>\n140.	B. COSMIN, 13 ani, Jud. IASI <br/>\n141.	O. MARTA, 13 ani, Jud. IASI <br/>\n142.	C. PETRONELA, 13 ani, Jud. IASI <br/>\n143.	S. PETRONELA, 13 ani, Jud. IASI <br/>\n144.	B. FELOCIAN-ANDREI, 9 ani, Jud. SATU MARE<br/>\n145.	B. MELISA-MARIA, 12  ani, Jud. SATU MARE<br/>\n146.	B. IBOLYA-TALIA, 8 ani, Jud. SATU MARE<br/>\n147.	P. ELENA, 10 ani, Jud. SATU MARE<br/>\n148.	B. LARISA-VERONICA, 11 ani, Jud. SATU MARE<br/>\n149.	B.DAVID, 10 ani, Jud. SATU MARE<br/>\n150.	B. IBOLYA-ANNAMARIA, 11 ani, Jud. SATU MARE<br/>\n151.	C. ADRIAN, 9 ani, Jud. SATU MARE<br/>\n152.	C. ANCA-ERICA, 11 ani, Jud. SATU MARE<br/>\n153.	H.ELENA, 10 ani, Jud. SATU MARE<br/>\n154.	C. MELINDA, 9 ani   , Jud. SATU MARE<br/>\n155.	D. ALEXANDRU, 10 ani, Jud. SATU MARE<br/>\n156.	D. RICARDO -STEFAN, 11 ani, Jud. SATU MARE<br/>\n157.	R.ROXANA, 10 ani, Jud. SATU MARE<br/>\n158.	E. MARCOS, 12 ani, Jud. SATU MARE<br/>\n159.	E. PATRIK , 11 ani, Jud. SATU MARE<br/>\n160.	E. ROLAND, 13 ani, Jud. SATU MARE<br/>\n161.	E. MATYAS, 10 ani, Jud. SATU MARE<br/>\n162.	F. VIORICA, 10 ani, Jud. SATU MARE<br/>\n163.	F. DAVID, 8 ani, Jud. SATU MARE<br/>\n164.	G. ANTONIO-MIHAI, 9 ani, Jud. SATU MARE<br/>\n165.	G. FLORIN-BOBI, 11 ani,Jud. SATU MARE<br/>\n166.	G. MONIKA-NATALIA, 11 ani, Jud. SATU MARE<br/>\n167.	G.RAUL, 9 ani, Jud. SATU MARE<br/>\n168.	G. LAURA-ANDREA, 15 ani, Jud. SATU MARE<br/>\n169.	G. SZAMANTA CYNTIA, 14 ani, Jud. SATU MARE<br/>\n170.	H. ALEXANDRU-MISEL, 12 ani, Jud. SATU MARE<br/>\n171.	H. BENJAMIN, 9 ani, Jud. SATU MARE<br/>\n172.	H. CSILA-aniKO, 11 ani, Jud. SATU MARE<br/>\n173.	H.GAVRIL CSABA, 12 ani, Jud. SATU MARE<br/>\n174.	H. KAROLY, 9 ani, Jud. SATU MARE<br/>\n175.	H. KEVIN-CRISTOFER, 8 ani, Jud. SATU MARE<br/>\n176.	H. TAMAS, 11 ani, Jud. SATU MARE<br/>\n177.	I. CINTIA-GYONGYI, 11 ani, Jud. SATU MARE<br/>\n178.	I. ESMERALDA-GRASERIETA, 15 ani, Jud. SATU MARE<br/>\n179.	I. MONICA-ISABEL, 9 ani, Jud. SATU MARE<br/>\n180.	K. ISTVAN-ALEX, 12 ani, Jud. SATU MARE<br/>\n181.	L. ANAMARIA, 14 ani, Jud. SATU MARE<br/>\n182.	L. ISTVAN, 12 ani, Jud. SATU MARE<br/>\n183.	L. MARK-LASZLO, 15 ani, Jud. SATU MARE<br/>\n184.	L. FLORIN, 12 ani, Jud. SATU MARE<br/>\n185.	L. CRISTINA-MARIA, 10 ani, Jud. SATU MARE<br/>\n186.	M. KINGA-BETINA, 11 ani, Jud. SATU MARE<br/>\n187.	M. TIMEA-IZABELA, 13 ani, Jud. SATU MARE<br/>\n188.	N.  ALEXANDRU-SEBASTIAN, 13 ani, Jud. SATU MARE<br/>\n189.	N. ARPAD-GABRIEL, 9 ani, Jud. SATU MARE<br/>\n190.	N. CSABA-ARPAD, 11 ani, Jud. SATU MARE<br/>\n191.	N. LORENZO-CRISTIAN, 8 ani, Jud. SATU MARE<br/>\n192.	N. MONICA-MELINDA, 12 ani, Jud. SATU MARE<br/>\n193.	N. RAUL-VIOREL-CASIAN, 11 ani, Jud. SATU MARE<br/>\n194.	N. RAZVAN-STEFAN-MARIAN, 10 ani, Jud. SATU MARE<br/>\n195.	P.  ZOLTAN-ALEX, 12 ani, Jud. SATU MARE<br/>\n196.	P. ZOLTAN-CRISTIAN, 11 ani, Jud. SATU MARE<br/>\n197.	P. ANDREA -LARISA, 15 ani, Jud. SATU MARE<br/>\n198.	P. MINOLA-MARIA, 11 ani, Jud. SATU MARE<br/>\n199.	S. ALEX-SORIN, 9 ani , Jud. SATU MARE<br/>\n200.	T. VANESA-RITA, 12 ani, Jud. SATU MARE<br/>\n201.	T. DENIS-VASILE, 9 ani, Jud. SATU MARE<br/>\n202.	V. MARK-LEVENTE, 10 ani, Jud. SATU MARE<br/>\n203.	V. PAUL STEFAN, 9 ani, Jud. BRASOV<br/>\n204.	A. ADINA, 9 ani, Jud. BRASOV<br/>\n205.	A. SIMONA, 13 ani, Jud. BRASOV<br/>\n206.	A. GABRIEL, 10 ani, Jud. BRASOV<br/>\n207.	A. OANA, 16 ani, Jud. BRASOV<br/>\n208.	A. ILDIZ NAZAR (F), 7 ani, Jud. BRASOV<br/>\n209.	A. LAURENTIU, 5 ani, Jud. BRASOV<br/>\n210.	B. GABRIEL, 10 ani, Jud. BRASOV<br/>\n211.	B. ANDREI, 9 ani, Jud. BRASOV<br/>\n212.	B. MIHAITA, 16 ani, Jud. BRASOV<br/>\n213.	B.. TONI, 9 ani, Jud. BRASOV<br/>\n214.	C. NICUSOR,  10 ani, Jud. BRASOV<br/>\n215.	C. CLAUDIU,  9 ani, Jud. BRASOV<br/>\n216.	C. MARIAN,  3 ani, Jud. BRASOV<br/>\n217.	C. MIHAIL,  12 ani, Jud. BRASOV<br/>\n218.	D. ANDREEA, 18 ani, Jud. BRASOV<br/>\n219.	D. COSMINA, 11 ani, Jud. BRASOV<br/>\n220.	F. IONUT, 16 ani, Jud. BRASOV<br/>\n221.	H. ADRIAN, 2 ani, Jud. BRASOV<br/>\n222.	I. KARLA RUTH, 6 ani, Jud. BRASOV<br/>\n223.	I. ADRIAN, 15 ani, Jud. BRASOV<br/>\n224.	I. MIRUNA, 10 ani, Jud. BRASOV<br/>\n225.	I. ANA MARIA, 16 ani, Jud. BRASOV<br/>\n226.	I. ALEXANDRU, 9 ani, Jud. BRASOV<br/>\n227.	I. FLORICA, 11 ani, Jud. BRASOV<br/>\n228.	L. MADALINA,  8 ani, Jud. BRASOV<br/>\n229.	M. RAZVAN, 8 ani, Jud. BRASOV<br/>\n230.	M. DANIEL, 18 ani, Jud. BRASOV<br/>\n231.	M. MARIA, 9 ani, Jud. BRASOV<br/>\n232.	M. DANIEL, 10 ani, Jud. BRASOV<br/>\n233.	N. DANIEL, 14 ani, Jud. BRASOV<br/>\n234.	P. ANDREI, 8 ani, Jud. BRASOV<br/>\n235.	P. VALENTIN, 8 ani, Jud. BRASOV<br/>\n236.	R. SARA, 2 ani, Jud. BRASOV<br/>\n237.	S. VLAD, 17 ani, Jud. BRASOV<br/>\n238.	S. ALEXANDRA, 10 ani, Jud. BRASOV<br/>\n239.	S. AUREL, 12 ani, Jud. BRASOV<br/>\n240.	S. ALEXANDRA, 6 ani, Jud. BRASOV<br/>\n241.	C. ELENA GABRIELA, 15 ani, Jud. BRASOV<br/>\n242.	K. SIBELA (F),  12 ani, Jud. BRASOV<br/>\n243.	B. ROBERT,  9 ani, Jud. BRASOV<br/>\n244.	L. MONICA,  10 ani, Jud. BRASOV<br/>\n245.	R. ROBERT,  10 ani, Jud. BRASOV<br/>\n246.	A. ADEL (M),  8 ani, Jud. BRASOV<br/>\n247.	A. SIBIH IASMINA (F),  9 ani, Jud. BRASOV<br/>\n248.	A. LAURENTIU, 9 ani, Jud. BRASOV<br/>\n249.	B. COSTIN, 6 ani, Jud. BRASOV<br/>\n250.	C. PAUL, 12 ani, Jud. BRASOV<br/>\n251.	D. LUCA, 4 ani, Jud. BRASOV<br/>\n252.	F. GEORGIANA, 15 ani, Jud. BRASOV<br/>\n253.	F. STEFANIA, 8 ani, Jud. BRASOV<br/>\n254.	L. ANDREEA, 7 ani, Jud. BRASOV<br/>\n255.	L. DARIUS, 11 ani, Jud. BRASOV<br/>\n256.	L. MADALIN, 7 ani, Jud. BRASOV<br/>\n257.	I. ALINA, 8 ani, Jud. BRASOV<br/>\n258.	I. MARIA, 7 ani, Jud. BRASOV<br/>\n259.	G. ROXANA , 13 ani, Jud. BRASOV<br/>\n260.	G. BENIAMIN , 10 ani, Jud. BRASOV<br/>\n261.	G. ALEXANDRU, 8 ani, Jud. BRASOV<br/>\n262.	M. TAGHI (F), 6 ani, Jud. BRASOV<br/>\n263.	M. MARIO ANDREI , 10 ani, Jud. BRASOV<br/>\n264.	M. TONI ALEXANDRU, 17 ani, Jud. BRASOV<br/>\n265.	M. EDMOND GABRIEL, 4 ani, Jud. BRASOV<br/>\n266.	C. ANDREI, 10 ani, Jud. BRASOV<br/>\n267.	G. ANA, 12 ani, Jud. BRASOV<br/>\n268.	G. ANDREI, 15 ani, Jud. BRASOV<br/>\n269.	G. RADU, 12 ani, Jud. BRASOV<br/>\n270.	H. ANDREEA, 11 ani, Jud. BRASOV<br/>\n271.	H. ANDREI, 8 ani, Jud. BRASOV<br/>\n272.	N. LIVIU, 8 ani, Jud. BRASOV<br/>\n273.	N. ELENA, 18 ani, Jud. BRASOV<br/>\n274.	O.ANDREEA, 11 ani, Jud. BRASOV<br/>\n275.	O. PETRUTA, 16 ani, Jud. BRASOV<br/>\n276.	P. ALEXANDRA, 10 ani, Jud. BRASOV<br/>\n277.	P. GEORGIANA, 7 ani, Jud. BRASOV<br/>\n278.	S. RUXANDRA, 11 ani, Jud. BRASOV<br/>\n279.	T. GELU,  13 ani, Jud. BRASOV<br/>\n280.	T. DIANA, 12 ani, Jud. BRASOV<br/>\n281.	T. ELENA, 13 ani, Jud. BRASOV<br/>\n282.	T. NICOLAE, 11 ani, Jud. BRASOV<br/>\n283.	C. ELENA GABRIELA,  17 ani, Jud. BRASOV<br/>\n284.	M. DENIS, 17 ani, Jud. BRASOV<br/>\n285.	M. ALIN, 7 ani, Jud. BRASOV<br/>\n286.	M. IONUT, 15 ani, Jud. BRASOV<br/>\n287.	B. DENISA, 7 ani, Jud. BRASOV<br/>\n288.	M. ALEXANDRU, 7 ani, Jud. BRASOV<br/>\n289.	D. DARIUS, 13 ani, Jud. BRASOV<br/>\n290.	D. SERGIU, 10 ani, Jud. BRASOV<br/>\n291.	S. LORIN, 12 ani, Jud. BRASOV<br/>\n292.	L. CRISTIAN, 12 ani, Jud. BRASOV<br/>\n293.	L. MADALIN, 10 ani, Jud. BRASOV<br/>\n294.	D. IONUT, 12 ani, Jud. BRASOV<br/>\n295.	M. NARCISA, 13 ani, Jud. BRASOV<br/>\n296.	M. ANDREEA, 7 ani, Jud. BRASOV<br/>\n297.	A. LAURA, 7 ani, Jud. BRASOV<br/>\n298.	L. IONUT, 14 ani, Jud. BRASOV<br/>\n299.	Z. MELISA, 8 ani, Jud. BRASOV<br/>\n300.	Z. MARIANA, 8 ani, Jud. BRASOV<br/>\n301.	Z. MADALINA, 7 ani, Jud. BRASOV<br/>\n302.	Z. ALEXANDRA, 7 ani, Jud. BRASOV<br/>\n303.	Z. IONELA, 9 ani, Jud. BRASOV<br/>\n304.	P. LUCIAN, 11 ani, Jud. BRASOV<br/>\n305.	T. VALENTIN, 14 ani, Jud. BRASOV<br/>\n306.	T. ALEXANDRU, 11 ani, Jud. BRASOV\n<br/><br/>\n*pentru detalii suplimentare despre situatia fiecarui copil va rugam sa ne contactati la office@stophunger.ro. <br/><br/>Din motive de confidentialitate nu am trecut satul/comuna/localitatea din care provin copiii. Toti copii inclusi in program traiesc in conditii de saracie: fie sunt orfani institutionalizati in centre rezidentiale, fie provin din familii monoparentale cu multi copiii, fie sunt incredintati altor persoane in plasament/tutela. \n\n\n\n\n\n', 0, 'poster STOP Hunger rechizite - header.jpg', 'poze rezerva/RA_0405_diversite.jpg', 'poze rezerva/EDU_066_AA053432.jpg', '2014-08-29 09:26:45'),
(3, 'Donatii in alimente in sectiile de pediatrie din Spitalul Budimex & Institutul Oncologic (2013) ', 'donatii-in-alimente', 'Alaturi de Hospice Casa Sperantei, Asociatia Stop Hunger a oferit alimente, in perioada octombrie – decembrie 2013, acelor mame si copii diagnosticati cu cancer, prea mici pentru a fi internati singuri in spital, si care provin din familii ce traiesc in conditii de saracie.  <br/><br/>\nPeste 250 de angajati ai companiilor Sodexo, Alcatel-Lucent, Wipro, Deltatel, DGRFP, Raiffeisen, S&T Romania, ING Romania, PricewaterhouseCoopers, Huawei, D&B David and Baias, RBS, LeasePlan, Metro Romania, Calpol, Porsche Romania, Sodexo, Railoc and Property Management au ales sa contribuie cu donatii pentru aceasta cauza. <br/><br/>\n', 0, 'DONATII IN ALIMENTE IN SECTIILE DE PEDIATRIE DIN SPITALUL BUDIMEX & INSTITUTUL ONCOLOGIC (2013)/Donatii sectii de pediatrie (1).jpg', 'poze rezerva/163_STH_GirlApple.jpg', 'poze rezerva/EDU_P_DI_2674.JPG', '2014-07-31 10:18:18'),
(4, 'Sprijin pentru victimele inundatiilor din Galati (2013) ', 'victimele-inundatiilor-din-galati', 'Asociatia Stop Hunger si  Crucea Rosie Galati, cu sprijinul  Sodexo si  Novo Park, au implementat, in perioada septembrie - octombrie 2013, o companie de strangere de fonduri in beneficiul victimelor inundatiilor din Galati. <br/><br/>\n\nLa aceasta campanie au contribuit cu donatii angajati ai companiilor: Ringier, Mondelez, Hp- Geboc, P&G, Luxoft, Infineon, Garanti Bank, Yokogawa, Sodexo,  Iiruc Service, Wfmc, Fan Courier si Unicredit.   Compania de curierat Fan Courier a fost partener al proiectului. <br/><br/>\n<img src=''/assets/images/uploads/projectPhotos/SPRIJIN PENTRU VICTIMELE INUNDATIILOR DIN GALATI (2013)/Scrisoare de multumire Crucea Rosie Galati.jpg'' width="100%">\n\n', 0, 'mama cu copil in brate la inundatii.JPG', 'SPRIJIN PENTRU VICTIMELE INUNDATIILOR DIN GALATI (2013)/DSC00413.JPG', 'SPRIJIN PENTRU VICTIMELE INUNDATIILOR DIN GALATI (2013)/caldire Garanti.jpg', '2014-07-31 10:19:09'),
(5, 'Campania "Daruieste din inima!" (2010-2011)', 'daruieste-din-inima', 'Sprijinirea victimelor inundatiilor din Moldova din iulie 2010  a fost scopul campaniei de colectare de fonduri din perioada iulie 2010 – martie 2011 sustinuta de Asociatia Stop Hunger, Sodexo Romania si Crucea Rosie Romana.  <br/><br/>\nCu sumele colectate a fost cumparata hrana pentru cele 170  de familii aflate in dificultate , care atunci locuiau in adaposturi in Dorohoi (Judetul Botosani) si Margineni (Judetul Bacau). <br/><br/>\nAlimentele au fost trimise familiilor din taberele de sinistrati in septembrie, octombrie, decembrie 2010 si martie 2011. <br/><br/>\nIn cadrul acestei campanii,  s-au implicat in calitate de donatori 4.468 de angajati provenind din 415 companii. <br/><br/>\n', 0, 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (1).JPG', 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (2).JPG', 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (4).JPG', '2014-07-31 10:19:09'),
(6, 'Campania Servathon - Sprijin pentru pacientii suferinzi de boli in stadiu terminal in Oradea (2009-2010) ', 'servathon', 'Cu scopul de a creste gradul de constientizare  asupra situatiei pacientilor din judetul Bihor care sufera de boli in stadiu terminal si traiesc in conditii de saracie si strangerea de fonduri in beneficiul acestora, am desfasurat o campanie in 2009 si 2010. <br/><br/>\n\nFondurile colectate in acest proiect au fost utilizate pentru a cumpara alimente si produse de igiena destinate pacientilor. Angajatii Sodexo au contribuit la aceasta campanie pentru a facilita strangerea de fonduri organizand evenimente de impact, precum  donare de sange, campionat de fotbal, atelier de creativitate in Oraselul Copiilor, participare la Targul ONG. <br/><br/>\n<a href="/assets/images/uploads/projectPhotos/CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Scrisoare_multumire_ASH.pdf" download>Scrisoare de multumire</a>\n\n', 0, 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (1).jpg', 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (2).jpg', 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (3).jpg', '2014-07-31 10:19:33'),
(8, 'Campania Servathon pentru sprijinirea satelor defavorizate (2008)', 'servathon-sprijinirea-satelor-defavorizate', 'In campania Servathon 2008, Asociatia Stop Hunger cu sprijinul companiei Sodexo a sprijinit 3 comunitati foarte sarace din Romania: Alma Vii (Sibiu), Almasel (Hunedoara) si Bolda (Satu Mare)  prin strangerea de fonduri si produse in valoare de  32, 972 Euro. Comunitatile au primit alimente si medicamente necesare pentru a trece peste iarna, dat fiind ca aceste comunitati erau in 2008 izolate (fara drum de acces, fara utilitati). In Almasel si  Alma Vii ca urmare a acestei campanii  autoritatile locale au inceput propriile programe de sprijin. In Bolda, Asociatia Stop Hunger cu sprijinul companiei Sodexo  continua sa trimita paine in fiecare saptamana si sa sprijine cei 4 copii din comunitate sa mearga la scoala, sa plateasca un medic si un asistent social care sa viziteze comunitatea. <br/><br/>', 0, 'batrana cu painea.JPG', 'CAMPANIA SERVATHON 2008 sate defavorizate/DSC01788.JPG', 'CAMPANIA SERVATHON 2008 sate defavorizate/DSC02488.JPG', '2014-07-31 10:20:36'),
(9, 'Ghidul de nutritie pentru copii " Sa crestem sanatosi" (2008)', 'sa-crestem-sanatosi', 'In 2008, cu scopul de a promova un stil de viata sanatos, sub egida programului  Nutrika & Grow program,  Asociatia Stop Hunger si Sodexo Romania au lansat ghidul de nutritie adresat copiilor intre 11 si14 ani. <br/><br/>\nCu o prezentare  si scris intr-un limbaj usor de inteles de catre copii, ghidul a fost donat cu sprijinul financiar al companiei Sodexo catre toate scolile, bibliotecile publice, autoritatile publice si centrele medicale din Romania. <br/><br/>\nProiectul a fost realizat in parteneriat cu Medicover si Institutul de Nutritie si Boli Metabolice Prof. Dr. N. Paulescu. <br/><br/>\n\n<a href="/assets/images/uploads/projectPhotos/ghid_nutritie_august_2014.pdf" download>Ghid de nutritie</a>\n<br/><br/>\n', 0, 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/ghid nutritie cover.jpg', 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/Ghid de nutritie Piramida alimentelor.JPG', 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/Ghid de nutritie Piramida miscarii.JPG', '2014-07-31 10:20:36'),
(10, 'Sprijin pentru familiile monoparentale care au in ingrijire copii (2003-2009)', 'sprijin-pentru-familiile-monoparentale', 'Este unul dintre programele etalon ale Asociatiei Stop Hunger, initiat de Sodexo in anul 2003 si continuat de Asociatia Stop Hunger incepand cu anul 2008. In cadrul acestui  proiect, 300 de familii au primit lunar pachete cu alimente de stricta necesitate. <br/><br/>\nProgramul a fost sprijinit de compania Sodexo, care a facilitat o cantitate impresionata de alimente: 8.000 de pachete cu alimente de stricta necesitate (pentru a acoperi nevoile unei familii pentru o luna): peste  8 tone de zahar,  peste 8 tone de ulei,  peste 8 tone de faina,  peste 8 tone de fasole,  peste 8.500 de conserve de mazare,  peste 8.000 de conserve de fasole verde,  peste 7,5 tone de orez,  peste 8 tone de malai,  peste 45.000 de conserve de carne,  peste 300.000 de iaurturi donate centrului de zi al Fundatiei Sf. Dimitrie alaturi de alte alimente si medicamente. <br/><br/>\n', 0, 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (1).jpg', 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (2).jpg', 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (4).jpg', '2014-07-31 10:21:09'),
(12, 'Indeplineste o dorinta', 'o-dorinta-de-craciun', 'Peste 400 de copii care traiesc in conditii de saracie au primit cu ocazia Craciunului 2013 si a Pastelui 2014 ce si-au dorit, in cadrul unei actiuni organizate de Asociatia Stop Hunger cu sprijinul mai multor companii  si mai ales al angajatilor acestora. <br/><br/>\nIn cadrul proiectului au fost inclusi si copii care sufera de boli incurabile,  a caror bucurie cand deschideau cadourile  ne-a convins ca a meritat tot efortul logistic pe care l-a implicat actiunea. <br/><br/>  \nIn aceast proiect s-au implicat angajatii companiilor Sodexo, Novo Park, Garanti Bank, Walter Services si Fan Curier. <br/><br/>\nIn cadrul proiectelor desfasurate  acordam o atentie deosebita protejarii imaginii copiilor si familiilor asistate. De aceea nu postam fotografii. Daca sunteti donator in cadrul acestui proiect va rugam sa ne contactati la office@stophunger.ro pentru a primi dovezile privind modul in care donatia dvs a for utilizata. <br/><br/>\n', 0, 'Indeplineste o dorinta/Indeplineste o dorinta (1).JPG', 'Indeplineste o dorinta/Indeplineste o dorinta (2).JPG', 'Indeplineste o dorinta/Indeplineste o dorinta (7).JPG', '2014-07-31 10:17:38'),
(15, 'Titlu updated...', 'test', '<p>Peste 400 de copii care traiesc in conditii de saracie au primit cu ocazia Craciunului 2013 si a Pastelui 2014 ce si-au dorit, in cadrul unei actiuni organizate de Asociatia Stop Hunger cu sprijinul mai multor companii si mai ales al angajatilor acestora.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In cadrul proiectului au fost inclusi si copii care sufera de boli incurabile, a caror bucurie cand deschideau cadourile ne-a convins ca a meritat tot efortul logistic pe care l-a implicat actiunea. In aceast proiect s-au implicat angajatii companiilor Sodexo, Novo Park, Garanti Bank, Walter Services si Fan Curier.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In cadrul proiectelor desfasurate acordam o atentie deosebita protejarii imaginii copiilor si familiilor asistate. De aceea nu postam fotografii. Daca sunteti donator in cadrul acestui proiect va rugam sa ne contactati la office@stophunger.ro pentru a primi dovezile privind modul in care donatia dvs a for utilizata.</p>\r\n', 0, 'Indeplineste o dorinta/Indeplineste o dorinta (1).JPG', 'Indeplineste o dorinta/Indeplineste o dorinta (2).JPG', 'Indeplineste o dorinta/Indeplineste o dorinta (7).JPG', '2014-07-31 10:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `real_password` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `level` smallint(6) NOT NULL DEFAULT '1',
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `real_password`, `email`, `firstname`, `lastname`, `level`, `insertdate`, `last_login`) VALUES
(1, 'admin', 'waf7+qQbaHtQ6tPHmAqHM9+LnMBIMWZU26kehogUx0O1Z3BRkqCgTKZn/KCWhY/yzoe7jdGswW5kbxPG0dPPTw==', 'password', 'ianq_cornel@yahoo.com', 'Mainiac', 'Adminus', 1, '2014-07-25 13:17:42', '2014-09-01 12:46:58'),
(3, 'username', 'ILFXvq6dth5Wc+RZ6CkqxMvSo2AeL58S7O1cdCMw13FJKv4mXqpmyU7FkLZkE711kU2ABbKSoT29n07VASTJxw==', 'password', 'email@yahoo.com', 'nume', 'prenume', 2, '2014-07-25 13:17:42', '2014-08-18 14:15:25'),
(10, 'sponsor', 'wgZADuTidmlUK46Co5qUb/f+X/Av3AKsFp55+1sohIpnEmFF4QXFK8bp6I6Rgj35g0ADH+S16aFFMk1y0DxTQQ==', 'password', 'sponsor@yahoo.com', 'nume', 'prenume', 3, '2014-07-29 05:30:47', '2014-08-29 10:07:41');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
