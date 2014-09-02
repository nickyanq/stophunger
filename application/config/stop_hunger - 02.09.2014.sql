-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Gazda: localhost
-- Timp de generare: 02 Sep 2014 la 14:40
-- Versiune server: 5.6.12-log
-- Versiune PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Bază de date: `stop_hunger`
--
CREATE DATABASE IF NOT EXISTS `stop_hunger` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `stop_hunger`;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `cases`
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
-- Structura de tabel pentru tabelul `files`
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
-- Salvarea datelor din tabel `files`
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
-- Structura de tabel pentru tabelul `news`
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
-- Salvarea datelor din tabel `news`
--

INSERT INTO `news` (`id`, `title`, `coverphoto`, `photo_bottom`, `intro`, `description`, `date`, `crateddate`) VALUES
(1, 'Daruieste un inceput de scoala fericit!', 'copii.jpg', NULL, 'Ne-am propus sa sprijinim in aceasta toamna 300 de copii sa fie pregatiti pentru scoala . Ii poti ajuta si tu.', 'Asociatia Stop Hunger va desfasura in perioada august - octombrie proiectul „Daruieste un inceput de scoala fericit!”. Alaturi de tine le vom darui celor 300 de copii inclusi in proiect cate un ghiozdan echipat pentru inceperea noului an scolar, cu caiete, creioane, pixuri si alte categorii de rechizite. <br/><br/>\nAm demarat acest proiect ca urmare a feedbackului primit in mod direct, in urma interactiunilor cu familii modeste , ca inceputul scolii este un moment dificil si nu unul de bucurie, in conditiile in care  familiile nu isi permit sa le ofere copiilor ghizdane, carti si rechizite. <br/><br/>\n\nAceasta campanie este desfasurata de catre Asociatia Stop Hunger in parteneriat cu Sodexo si Novo Park. Campania este sustinuta si de mai multe organizații neguvernamentale, care au desfășurat anchetele sociale pentru a identifica copiii: <br/><br/>\n\n• Fundația Sf. Dimitrie (București)<br/><br/>\n• Fundația Metropolis (București) <br/><br/>\n• Organizația Caritas Satu Mare<br/><br/>\n• Fundația Hospice Emanuel Oradea<br/><br/>\n• Fundația Casa Speranței Brasov & București<br/><br/>\n• Fundația pentru Voi Timișoara<br/><br/>\n• Fundația Star of Hope Iași<br/><br/>\n• Fundația Serviciilor Sociale Bethany<br/><br/>\nImpreuna putem darui multa bucurie. Daca vrei sa daruiesti un ghiozdan, te rugam, scrie-ne la <b>office@stophunger.ro</b> si mentioneaza carui copil alege  doresti sa ii faci aceasta bucurie. Vom decide impreuna cum ii vom trimite ghiozdanul . <br/>\nLasa-ne adresa de email pentru a-ti trimite procesul verbal de predare –primire.\n', 'August 2014', '2014-07-31 12:25:13'),
(2, 'Implica-te si tu alaturi de noi! ', 'implicate.jpg', 'sodexo sprijina cu mandrie stop hunger.jpg', 'Doneaza si tu 2% Asociatiei Stop Hunger pentru a reusi impreuna sa schimbam in bine viata a cat mai multi copii! ', 'In 2014 toate donatiile primite din 2% de catre Asociatia Stop Hunger sunt utilizate pentru a sprijini copiii care traiesc in conditii de saracie si au risc sa abandoneze scoala in cadrul proiectului „Adopta o Familie” . Sustinuti si indrumati acesti copii pot reusi sa  aiba o viata mai buna. <br/><br/>\nCopii sunt selectati in urma unor anchete sociale si  primesc lunar o bursa pentru hrana, rechizite, incaltaminte, imbracaminte si medicamente. In plus primesc sprijin specializat: consiliere psihologica, mentoring, participare la activitati extracurricurale care sa ii ajute sa reuseasca in viata! <br/><br/>\nProgramul este implementat in prezent in Bucuresti, Brasov, Buzau, Iasi, Constanta,  Oradea, Timisoara, Targu Mures, Satu Mare si Vaslui. <br/><br/>\nSodexo auditeaza periodic Asociatia Stop Hunger, asigurandu-se ca toate fondurile primite sunt utilizate exclusiv in  beneficiul copiilor. <br/><br/>\nDaca ai ales sa donezi 2% si vrei sa te implici, contacteaza-ne la office@stophunger.ro pentru mai multe detalii. <br/><br/>\nAnual statul iti impoziteaza veniturile cu un procent de 16%. Conform Codului Fiscal - Legea 571 / 2003, Art. 84, fiecare persoana poate directiona 2% din cele 16% catre o organizatie non-guvernamentala. Asadar, in loc sa lasi acesti bani statului alege sa marchezi pozitiv viata unui copil. <br/><br/>\n', 'Aprilie 2014', '2014-07-31 12:26:03');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) CHARACTER SET utf8 NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Salvarea datelor din tabel `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `active`, `insertdate`) VALUES
(1, 'corneliu@yahoo.com', 1, '2014-08-22 10:17:34'),
(2, 'fucktard@yahooo', 1, '2014-08-22 10:32:13'),
(3, 'asd@yaa', 1, '2014-08-22 10:36:48'),
(4, 'ionescu.popescu@yahoo.com', 1, '2014-08-22 10:36:59');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `projects`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Salvarea datelor din tabel `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `description`, `show_all_projects`, `coverphoto`, `photo_top`, `photo_bottom`, `insertdate`) VALUES
(1, 'Proiectul  "Adopta o Familie"  (2011- prezent)', 'adopta-o-familie', 'In cadrul programelor de sprijin adresate categoriilor de persoane aflate in dificultate, desfasurate de Asociatia Stop Hunger,  printre problemele majore constant intalnite in randul tinerilor sunt lipsa de repere pozitive, de indrumare si de modele.  <br/><br/>\nPornind de la acesta problema reala, am gandit in 2011 proiectul  „Adopta o Familie”,  o initiativa foarte curajoasa,  care s-a materializat  gratie entuziasmului companiilor partenere si al echipei de voluntari Sodexo. <br/><br/>\nObiectivul acestui proiect este crearea  unei retele de sprijin pentru copii care traiesc in conditii de saracie si prezinta un risc ridicat de abandon scolar. Mecanismul prin care copiii sunt sprijiniti este simplu si la indemana. Astfel, fiecare copil selectat in proiect este „adoptat” de o companie care accepta sa il acompanieze pe durata studiilor, oferindu-i o bursa lunara si mai ales mentoring. <br/><br/>\nDincolo de contributia financiara extrem de importanta pentru oricare dintre acesti copii, mentoringul este cel care va avea cu adevarat un impact pe termen lung.   <br/><br/>\nMecanismul proiectului ii sustine pe copii sa devina mai responsabili pentru dezvoltarea lor si le incurajeaza familiile sa utilizeze bursele lunare exclusiv pentru nevoile copiilor.  Copii implicati in proiect sunt indrumati si primesc gratuit consiliere, iar legatura cu sponsorii ii ajuta sa aiba o perspectiva pozitiva asupra vietii.  <br/><br/>\nRezultatele programului sunt usor de cuantificat observand progresul si reusitele copiilor. Fiecare admitere la liceu si reusita la examenul de bacalaureat , fiecare admitere la facultate reprezinta pentru toti cei implicati in program incununarea unei colaborari de succes. Pentru companii, acesta este momentul in care inteleg cat de valoros este minimum lor aport, in timp ce pentru copiii si familiile acestora, reprezinta schimbarea unui destin. <br/><br/>\nProiectul a fost initiat in anul 2011 si este implementat de Asociatia Stop Hunger, cu indrumarea si sprijinul companiei Sodexo. Programul este implementat in prezent in Bucuresti, Brasov, Constanta, Iasi, Oradea, Timisoara si Satu Mare. <br/><br/>\nPentru mai multe detalii despre cazurile sprijinite este nevoie sa aveti acces la sectiunea restrictionata creeata special pentru a proteja imaginea copiilor ajutati in cadrul acestui proiect. <br/><br/> Click <a href="/adopta-o-familie">aici</a> pentru cont la sectiunea restrictionata.\n\n<br/><br/>\n', 1, 'Adopta o Familie/Proiect Adopta o Familie (1).jpg', 'Adopta o Familie/Proiect Adopta o Familie (4).jpg', 'Adopta o Familie/Proiect Adopta o Familie (5).jpg', '2014-07-31 10:17:09'),
(2, 'Daruieste un inceput de scoala fericit!', 'un-inceput-de-scoala-fericit', '<p><strong>In aceasta toamna, ne-am propus sa sprijinim &nbsp;&nbsp;300 de copii sa fie pregatiti pentru scoala . Ii poti ajuta si tu.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Asociatia Stop Hunger desfasoara in perioada august - octombrie proiectul &bdquo;Daruieste un inceput de scoala fericit!&rdquo;. Alaturi de tine le vom darui celor 300 de copii inclusi in proiect cate un ghiozdan echipat pentru inceperea noului an scolar, cu caiete, creioane, pixuri si alte categorii de rechizite.&nbsp;<br />\r\n<br />\r\nAm demarat acest proiect ca urmare a feedbackului primit in mod direct, in urma interactiunilor cu familii modeste, ca inceputul scolii este un moment dificil si nu unul de bucurie, in conditiile in care familiile nu isi permit sa le ofere copiilor ghizdane, carti si rechizite.&nbsp;<br />\r\n<br />\r\nAceasta campanie este desfasurata de catre Asociatia Stop Hunger in parteneriat cu Sodexo si Novo Park. Campania este sustinuta si de mai multe organiza&#539;ii neguvernamentale, care au desf&#259;&#537;urat anchetele sociale pentru a identifica copiii:&nbsp;<br />\r\n<br />\r\n&bull; Funda&#539;ia Sf. Dimitrie (Bucure&#537;ti)<br />\r\n<br />\r\n&bull; Funda&#539;ia Metropolis (Bucure&#537;ti)&nbsp;<br />\r\n<br />\r\n&bull; Organiza&#539;ia Caritas Satu Mare<br />\r\n<br />\r\n&bull; Funda&#539;ia Hospice Emanuel Oradea<br />\r\n<br />\r\n&bull; Funda&#539;ia Casa Speran&#539;ei Brasov &amp; Bucure&#537;ti<br />\r\n<br />\r\n&bull; Funda&#539;ia pentru Voi Timi&#537;oara<br />\r\n<br />\r\n&bull; Funda&#539;ia Star of Hope Ia&#537;i<br />\r\n<br />\r\n&bull; Funda&#539;ia Serviciilor Sociale Bethany<br />\r\n<br />\r\nImpreuna putem darui multa bucurie. Daca vrei sa daruiesti un ghiozdan, te rugam, scrie-ne la&nbsp;<strong><a href="mailto:office@stophunger.ro">office@stophunger.ro</a></strong>&nbsp;si mentioneaza carui copil alege doresti sa ii faci aceasta bucurie. Vom decide impreuna cum ii vom trimite ghiozdanul .&nbsp;<br />\r\nLasa-ne adresa de email pentru a-ti trimite procesul verbal de predare &ndash;primire.</p>\r\n\r\n<p>LISTA COPIILOR INCLUSI IN PROIECT:<br />\r\n<br />\r\n1. M. ALEXANDRA, 15 ani, jud. Jud. BRASOV<br />\r\n2. T. VLAD, 19 ani, jud. Jud. BRASOV<br />\r\n3. C. ANDREEA C. , 17 ani, jud. Jud. BRASOV<br />\r\n4. M.I IONUT, 11 ani, Jud. BRASOV<br />\r\n5. R. FLAVIA ALEXANDRA, 16 ani, Jud. BRASOV<br />\r\n6. I. ANDREI, 16 ani , Jud. BRASOV<br />\r\n7. S. GEORGE, 14 ani, Jud. BRASOV<br />\r\n8. C. ERIC , 8 ani , Jud. BRASOV<br />\r\n9. M., ALEXANDRU 14 ani, BUCURESTI<br />\r\n10. N. RAMONA, 8 ani, BUCURESTI<br />\r\n11. B. GABRIEL, 9 ani, BUCURESTI<br />\r\n12. S. LORIN, 10 ani, BUCURESTI<br />\r\n13. D. IULIAN MADALIN , 14 ani, CRAIOVA<br />\r\n14. S. SARA, 13 ani, CRAIOVA<br />\r\n15. O. ANDREI, 8 ani , TIMIS<br />\r\n16. C. CORINA , 11 ani, TIMIS<br />\r\n17. N. CAMELIA , 13 ani, TIMIS<br />\r\n18. I. ELISABETA, 10 ani, TIMIS<br />\r\n19. I. LEONARDO, 9 ani, TIMIS<br />\r\n20. D. MELISA, 16 ani, Jud. SATU MARE<br />\r\n21. C. ANDREEA-MADALINA, 14 ani, Jud. IASI, COM. LITENI<br />\r\n22. C. CATALINA, 12 ani , Jud. IASI<br />\r\n23. B. CONSTATIN COSMIN, 13 ani, Jud. IASI<br />\r\n24. O. MARTA DUMITRITA , 13 ani, Jud. IASI<br />\r\n25. C. PETRONELA , 13 an , Jud. IASI<br />\r\n26. A. V. ANDREI , 14 ani , BUCURESTI<br />\r\n27. A. ANDREI, 9 ani, BUCURESTI<br />\r\n28. B. ANDREEA, 12 ani , BUCURESTI<br />\r\n29. B. LARISA, 14 ani, BUCURESTI<br />\r\n30. B. PETRE, 13 ani, BUCURESTI<br />\r\n31. B. FLORIN, 11 ani , BUCURESTI<br />\r\n32. C. GABRIEL, 14 ani , BUCURESTI<br />\r\n33. C.MIHAI, 14 ani, BUCURESTI<br />\r\n34. A. NICOLAE, 11 ani, BUCURESTI<br />\r\n35. C. NICOLAE, 14 ani , BUCURESTI<br />\r\n36. D. DANIEL , 18 ani, BUCURESTI<br />\r\n37. G. ADRIAN, 12 ani , BUCURESTI<br />\r\n38. G. NICOLAE, 15 ani ,<br />\r\n39. G. GIULIA, 13 ani , BUCURESTI<br />\r\n40. G. CLAUDIU , 13 ani, BUCURESTI<br />\r\n41. G. IONUT, 12 ani, BUCURESTI<br />\r\n42. I. ANDREEA, 14 ani , BUCURESTI<br />\r\n43. L. IZABELA , 7 ani, BUCURESTI<br />\r\n44. M. BIANCA, 13 ani, BUCURESTI<br />\r\n45. N. ALIN, 9 ani, BUCURESTI<br />\r\n46. N. SILVIU , 11 ani, BUCURESTI<br />\r\n47. N. EMANUEL, 15 ani, BUCURESTI<br />\r\n48. P. DAVID, 11 ani, BUCURESTI<br />\r\n49. S. ALEXANDRU, 13 ani, BUCURESTI<br />\r\n50. S. COSTEL, 13 ani, BUCURESTI<br />\r\n51. T. VALENTIN, 14 ani, BUCURESTI<br />\r\n52. V. GABRIEL, 11 ani, BUCURESTI<br />\r\n53. S. MONICA, 8 ani, BUCURESTI<br />\r\n54. N. ANA, 11ani, BUCURESTI<br />\r\n55. N. NICUSOR, 8 ani, BUCURESTI<br />\r\n56. B. ANDREI, 13 ani, BUCURESTI<br />\r\n57. B. ANA, 14 ani, BUCURESTI<br />\r\n58. S. GABRIELA, 13 ani, BUCURESTI<br />\r\n59. S. NICOLAE, 15 ani, BUCURESTI<br />\r\n60. I. MARIA, 12 ani, BUCURESTI<br />\r\n61. S. DANUT, 12 ani, BUCURESTI<br />\r\n62. M. FLORIN, 13 ani, BUCURESTI<br />\r\n63. M. CRISTI, 12 ani, BUCURESTI<br />\r\n64. M. RALUCA, 12ani, BUCURESTI<br />\r\n65. B. SARA, 12 ani, BUCURESTI<br />\r\n66. D. NICOLAS, 12 ani, BUCURESTI<br />\r\n67. A. STEFAN, 14 ani, BUCURESTI<br />\r\n68. A. IONUT, 13 ani, BUCURESTI<br />\r\n69. A. GEORGIANA, 14 ani, BUCURESTI<br />\r\n70. P. SOFIAN, 11 ani, BUCURESTI<br />\r\n71. M. ANA MARIA, 10 ani, BUCURESTI<br />\r\n72. L. MARIA, 9 ani, BUCURESTI<br />\r\n73. M. AURELIAN, 9 ani, BUCURESTI<br />\r\n74. B. FLORENTINA, 10 ani, BUCURESTI<br />\r\n75. M. ALIN , 12 ani, BUCURESTI<br />\r\n76. A. VIOREL, 13 ani, BUCURESTI<br />\r\n77. R. FLORIN, 12 ani, BUCURESTI<br />\r\n78. T. ANDREI, 11 ani, BUCURESTI<br />\r\n79. T. STEFAN, 10 ani, BUCURESTI<br />\r\n80. N. ADRIAN, 10 ani, BUCURESTI<br />\r\n81. G. DENYS, 11 ani, BUCURESTI<br />\r\n82. I. PETRU, 6 ani, BUCURESTI<br />\r\n83. C. ROBERT, 6 ani, BUCURESTI<br />\r\n84. C. MARINA, 12 ani, BUCURESTI<br />\r\n85. M. FLORIAN, 14 ani, BUCURESTI<br />\r\n86. M. SARA, 6 ani, BUCURESTI<br />\r\n87. D. STEFANIA, 17 ani, BUCURESTI<br />\r\n88. L. MIHAI, 16 ani, BUCURESTI<br />\r\n89. D. GABRIELA, 16 ani, BUCURESTI<br />\r\n90. G. AGATA, 16 ani, BUCURESTI<br />\r\n91. A. ROBERT, 10 ani, BUCURESTI<br />\r\n92. P. MIHAELA, 18 ani, BUCURESTI<br />\r\n93. A. ANDREEA, 15 ani, BUCURESTI<br />\r\n94. S. STEFaniA, 13 ani, BUCURESTI<br />\r\n95. S. MARIA, 10 ani, BUCURESTI<br />\r\n96. S.DIMITRIE, 6 ani, BUCURESTI<br />\r\n97. S. ANTONIE, 12 ani, BUCURESTI<br />\r\n98. C. GABRIELA, 15 ani, BUCURESTI<br />\r\n99. P. ANDREEA, 15 ani, BUCURESTI<br />\r\n100. L. ELISABETA, 11 ani, BUCURESTI<br />\r\n101. G. LAURA, 15 ani, BUCURESTI<br />\r\n102. N. GABRIEL, 10 ani, BUCURESTI<br />\r\n103. N. GEORGIANA, 11 ani, BUCURESTI<br />\r\n104. N. RAMONA, 10 ani, BUCURESTI<br />\r\n105. P. IRINA, 16 ani, BUCURESTI<br />\r\n106. H.ALEXANDRA, 9 ani, Jud. BIHOR<br />\r\n107. B. FABIAN , 11 ani, Jud. BIHOR<br />\r\n108. B. IONUT, 14ani, Jud. BIHOR<br />\r\n109. B. GIaniN, 11 ani, Jud. BIHOR<br />\r\n110. F. HADASA, 9 ani, Jud. BIHOR<br />\r\n111. T. GETA, 16 ani, Jud. BIHOR<br />\r\n112. T. CATALIN, 15 ani, Jud. BIHOR<br />\r\n113. G. MARCO, 16 ani, Jud. BIHOR<br />\r\n114. G. MARIA, 12 ani, Jud. BIHOR<br />\r\n115. G. GABRIEL, 11 ani, Jud. BIHOR<br />\r\n116. C. ELA, 14 ani, Jud. BIHOR<br />\r\n117. A. PAUL, 11 ani, Jud. IASI<br />\r\n118. O..ANDRADA IOANA, 9 ani, Jud. IASI<br />\r\n119. R. ANTONIO , 10 ani, Jud. IASI<br />\r\n120. S. TEODORA, 10 ani, Jud. IASI<br />\r\n121. B STEFAN, 11 ani, Jud. IASI<br />\r\n122. B. SILVIU PETRONEL, 7 ani, Jud. IASI<br />\r\n123. B. ALEX PETRONEL, 9 ani, Jud. IASI<br />\r\n124. G. VLAD, 11 ani, Jud. IASI<br />\r\n125. A. EMILIA ELENA, 8 ani, Jud. IASI<br />\r\n126. B. ANDREEA, 12 ani, Jud. IASI<br />\r\n127. C. PAULA, 14 ani, Jud. IASI<br />\r\n128. B. GIANINA, 14 ani, Jud. IASI<br />\r\n129. U. EMILIAN, 14 ani, Jud. IASI<br />\r\n130. A. OANA, 14 ani, Jud. IASI<br />\r\n131. P. NICUSOR, 14 ani, Jud. IASI<br />\r\n132. H. DIANA, 14 ani, Jud. IASI<br />\r\n133. D. NICOLETA, 14 ani, Jud. IASI<br />\r\n134. B. ELENA, 14 ani, Jud. IASI<br />\r\n135. M. LARISA, 14 ani, Jud. IASI<br />\r\n136. B. RALUCA, 13 ani, Jud. IASI<br />\r\n137. M.FLORINA, 13 ani, Jud. IASI<br />\r\n138. C. ANDREEA, 14 ani, Jud. IASI<br />\r\n139. C. CATALINA, 12 ani, Jud. IASI<br />\r\n140. B. COSMIN, 13 ani, Jud. IASI<br />\r\n141. O. MARTA, 13 ani, Jud. IASI<br />\r\n142. C. PETRONELA, 13 ani, Jud. IASI<br />\r\n143. S. PETRONELA, 13 ani, Jud. IASI<br />\r\n144. B. FELOCIAN-ANDREI, 9 ani, Jud. SATU MARE<br />\r\n145. B. MELISA-MARIA, 12 ani, Jud. SATU MARE<br />\r\n146. B. IBOLYA-TALIA, 8 ani, Jud. SATU MARE<br />\r\n147. P. ELENA, 10 ani, Jud. SATU MARE<br />\r\n148. B. LARISA-VERONICA, 11 ani, Jud. SATU MARE<br />\r\n149. B.DAVID, 10 ani, Jud. SATU MARE<br />\r\n150. B. IBOLYA-ANNAMARIA, 11 ani, Jud. SATU MARE<br />\r\n151. C. ADRIAN, 9 ani, Jud. SATU MARE<br />\r\n152. C. ANCA-ERICA, 11 ani, Jud. SATU MARE<br />\r\n153. H.ELENA, 10 ani, Jud. SATU MARE<br />\r\n154. C. MELINDA, 9 ani , Jud. SATU MARE<br />\r\n155. D. ALEXANDRU, 10 ani, Jud. SATU MARE<br />\r\n156. D. RICARDO -STEFAN, 11 ani, Jud. SATU MARE<br />\r\n157. R.ROXANA, 10 ani, Jud. SATU MARE<br />\r\n158. E. MARCOS, 12 ani, Jud. SATU MARE<br />\r\n159. E. PATRIK , 11 ani, Jud. SATU MARE<br />\r\n160. E. ROLAND, 13 ani, Jud. SATU MARE<br />\r\n161. E. MATYAS, 10 ani, Jud. SATU MARE<br />\r\n162. F. VIORICA, 10 ani, Jud. SATU MARE<br />\r\n163. F. DAVID, 8 ani, Jud. SATU MARE<br />\r\n164. G. ANTONIO-MIHAI, 9 ani, Jud. SATU MARE<br />\r\n165. G. FLORIN-BOBI, 11 ani,Jud. SATU MARE<br />\r\n166. G. MONIKA-NATALIA, 11 ani, Jud. SATU MARE<br />\r\n167. G.RAUL, 9 ani, Jud. SATU MARE<br />\r\n168. G. LAURA-ANDREA, 15 ani, Jud. SATU MARE<br />\r\n169. G. SZAMANTA CYNTIA, 14 ani, Jud. SATU MARE<br />\r\n170. H. ALEXANDRU-MISEL, 12 ani, Jud. SATU MARE<br />\r\n171. H. BENJAMIN, 9 ani, Jud. SATU MARE<br />\r\n172. H. CSILA-aniKO, 11 ani, Jud. SATU MARE<br />\r\n173. H.GAVRIL CSABA, 12 ani, Jud. SATU MARE<br />\r\n174. H. KAROLY, 9 ani, Jud. SATU MARE<br />\r\n175. H. KEVIN-CRISTOFER, 8 ani, Jud. SATU MARE<br />\r\n176. H. TAMAS, 11 ani, Jud. SATU MARE<br />\r\n177. I. CINTIA-GYONGYI, 11 ani, Jud. SATU MARE<br />\r\n178. I. ESMERALDA-GRASERIETA, 15 ani, Jud. SATU MARE<br />\r\n179. I. MONICA-ISABEL, 9 ani, Jud. SATU MARE<br />\r\n180. K. ISTVAN-ALEX, 12 ani, Jud. SATU MARE<br />\r\n181. L. ANAMARIA, 14 ani, Jud. SATU MARE<br />\r\n182. L. ISTVAN, 12 ani, Jud. SATU MARE<br />\r\n183. L. MARK-LASZLO, 15 ani, Jud. SATU MARE<br />\r\n184. L. FLORIN, 12 ani, Jud. SATU MARE<br />\r\n185. L. CRISTINA-MARIA, 10 ani, Jud. SATU MARE<br />\r\n186. M. KINGA-BETINA, 11 ani, Jud. SATU MARE<br />\r\n187. M. TIMEA-IZABELA, 13 ani, Jud. SATU MARE<br />\r\n188. N. ALEXANDRU-SEBASTIAN, 13 ani, Jud. SATU MARE<br />\r\n189. N. ARPAD-GABRIEL, 9 ani, Jud. SATU MARE<br />\r\n190. N. CSABA-ARPAD, 11 ani, Jud. SATU MARE<br />\r\n191. N. LORENZO-CRISTIAN, 8 ani, Jud. SATU MARE<br />\r\n192. N. MONICA-MELINDA, 12 ani, Jud. SATU MARE<br />\r\n193. N. RAUL-VIOREL-CASIAN, 11 ani, Jud. SATU MARE<br />\r\n194. N. RAZVAN-STEFAN-MARIAN, 10 ani, Jud. SATU MARE<br />\r\n195. P. ZOLTAN-ALEX, 12 ani, Jud. SATU MARE<br />\r\n196. P. ZOLTAN-CRISTIAN, 11 ani, Jud. SATU MARE<br />\r\n197. P. ANDREA -LARISA, 15 ani, Jud. SATU MARE<br />\r\n198. P. MINOLA-MARIA, 11 ani, Jud. SATU MARE<br />\r\n199. S. ALEX-SORIN, 9 ani , Jud. SATU MARE<br />\r\n200. T. VANESA-RITA, 12 ani, Jud. SATU MARE<br />\r\n201. T. DENIS-VASILE, 9 ani, Jud. SATU MARE<br />\r\n202. V. MARK-LEVENTE, 10 ani, Jud. SATU MARE<br />\r\n203. V. PAUL STEFAN, 9 ani, Jud. BRASOV<br />\r\n204. A. ADINA, 9 ani, Jud. BRASOV<br />\r\n205. A. SIMONA, 13 ani, Jud. BRASOV<br />\r\n206. A. GABRIEL, 10 ani, Jud. BRASOV<br />\r\n207. A. OANA, 16 ani, Jud. BRASOV<br />\r\n208. A. ILDIZ NAZAR (F), 7 ani, Jud. BRASOV<br />\r\n209. A. LAURENTIU, 5 ani, Jud. BRASOV<br />\r\n210. B. GABRIEL, 10 ani, Jud. BRASOV<br />\r\n211. B. ANDREI, 9 ani, Jud. BRASOV<br />\r\n212. B. MIHAITA, 16 ani, Jud. BRASOV<br />\r\n213. B.. TONI, 9 ani, Jud. BRASOV<br />\r\n214. C. NICUSOR, 10 ani, Jud. BRASOV<br />\r\n215. C. CLAUDIU, 9 ani, Jud. BRASOV<br />\r\n216. C. MARIAN, 3 ani, Jud. BRASOV<br />\r\n217. C. MIHAIL, 12 ani, Jud. BRASOV<br />\r\n218. D. ANDREEA, 18 ani, Jud. BRASOV<br />\r\n219. D. COSMINA, 11 ani, Jud. BRASOV<br />\r\n220. F. IONUT, 16 ani, Jud. BRASOV<br />\r\n221. H. ADRIAN, 2 ani, Jud. BRASOV<br />\r\n222. I. KARLA RUTH, 6 ani, Jud. BRASOV<br />\r\n223. I. ADRIAN, 15 ani, Jud. BRASOV<br />\r\n224. I. MIRUNA, 10 ani, Jud. BRASOV<br />\r\n225. I. ANA MARIA, 16 ani, Jud. BRASOV<br />\r\n226. I. ALEXANDRU, 9 ani, Jud. BRASOV<br />\r\n227. I. FLORICA, 11 ani, Jud. BRASOV<br />\r\n228. L. MADALINA, 8 ani, Jud. BRASOV<br />\r\n229. M. RAZVAN, 8 ani, Jud. BRASOV<br />\r\n230. M. DANIEL, 18 ani, Jud. BRASOV<br />\r\n231. M. MARIA, 9 ani, Jud. BRASOV<br />\r\n232. M. DANIEL, 10 ani, Jud. BRASOV<br />\r\n233. N. DANIEL, 14 ani, Jud. BRASOV<br />\r\n234. P. ANDREI, 8 ani, Jud. BRASOV<br />\r\n235. P. VALENTIN, 8 ani, Jud. BRASOV<br />\r\n236. R. SARA, 2 ani, Jud. BRASOV<br />\r\n237. S. VLAD, 17 ani, Jud. BRASOV<br />\r\n238. S. ALEXANDRA, 10 ani, Jud. BRASOV<br />\r\n239. S. AUREL, 12 ani, Jud. BRASOV<br />\r\n240. S. ALEXANDRA, 6 ani, Jud. BRASOV<br />\r\n241. C. ELENA GABRIELA, 15 ani, Jud. BRASOV<br />\r\n242. K. SIBELA (F), 12 ani, Jud. BRASOV<br />\r\n243. B. ROBERT, 9 ani, Jud. BRASOV<br />\r\n244. L. MONICA, 10 ani, Jud. BRASOV<br />\r\n245. R. ROBERT, 10 ani, Jud. BRASOV<br />\r\n246. A. ADEL (M), 8 ani, Jud. BRASOV<br />\r\n247. A. SIBIH IASMINA (F), 9 ani, Jud. BRASOV<br />\r\n248. A. LAURENTIU, 9 ani, Jud. BRASOV<br />\r\n249. B. COSTIN, 6 ani, Jud. BRASOV<br />\r\n250. C. PAUL, 12 ani, Jud. BRASOV<br />\r\n251. D. LUCA, 4 ani, Jud. BRASOV<br />\r\n252. F. GEORGIANA, 15 ani, Jud. BRASOV<br />\r\n253. F. STEFANIA, 8 ani, Jud. BRASOV<br />\r\n254. L. ANDREEA, 7 ani, Jud. BRASOV<br />\r\n255. L. DARIUS, 11 ani, Jud. BRASOV<br />\r\n256. L. MADALIN, 7 ani, Jud. BRASOV<br />\r\n257. I. ALINA, 8 ani, Jud. BRASOV<br />\r\n258. I. MARIA, 7 ani, Jud. BRASOV<br />\r\n259. G. ROXANA , 13 ani, Jud. BRASOV<br />\r\n260. G. BENIAMIN , 10 ani, Jud. BRASOV<br />\r\n261. G. ALEXANDRU, 8 ani, Jud. BRASOV<br />\r\n262. M. TAGHI (F), 6 ani, Jud. BRASOV<br />\r\n263. M. MARIO ANDREI , 10 ani, Jud. BRASOV<br />\r\n264. M. TONI ALEXANDRU, 17 ani, Jud. BRASOV<br />\r\n265. M. EDMOND GABRIEL, 4 ani, Jud. BRASOV<br />\r\n266. C. ANDREI, 10 ani, Jud. BRASOV<br />\r\n267. G. ANA, 12 ani, Jud. BRASOV<br />\r\n268. G. ANDREI, 15 ani, Jud. BRASOV<br />\r\n269. G. RADU, 12 ani, Jud. BRASOV<br />\r\n270. H. ANDREEA, 11 ani, Jud. BRASOV<br />\r\n271. H. ANDREI, 8 ani, Jud. BRASOV<br />\r\n272. N. LIVIU, 8 ani, Jud. BRASOV<br />\r\n273. N. ELENA, 18 ani, Jud. BRASOV<br />\r\n274. O.ANDREEA, 11 ani, Jud. BRASOV<br />\r\n275. O. PETRUTA, 16 ani, Jud. BRASOV<br />\r\n276. P. ALEXANDRA, 10 ani, Jud. BRASOV<br />\r\n277. P. GEORGIANA, 7 ani, Jud. BRASOV<br />\r\n278. S. RUXANDRA, 11 ani, Jud. BRASOV<br />\r\n279. T. GELU, 13 ani, Jud. BRASOV<br />\r\n280. T. DIANA, 12 ani, Jud. BRASOV<br />\r\n281. T. ELENA, 13 ani, Jud. BRASOV<br />\r\n282. T. NICOLAE, 11 ani, Jud. BRASOV<br />\r\n283. C. ELENA GABRIELA, 17 ani, Jud. BRASOV<br />\r\n284. M. DENIS, 17 ani, Jud. BRASOV<br />\r\n285. M. ALIN, 7 ani, Jud. BRASOV<br />\r\n286. M. IONUT, 15 ani, Jud. BRASOV<br />\r\n287. B. DENISA, 7 ani, Jud. BRASOV<br />\r\n288. M. ALEXANDRU, 7 ani, Jud. BRASOV<br />\r\n289. D. DARIUS, 13 ani, Jud. BRASOV<br />\r\n290. D. SERGIU, 10 ani, Jud. BRASOV<br />\r\n291. S. LORIN, 12 ani, Jud. BRASOV<br />\r\n292. L. CRISTIAN, 12 ani, Jud. BRASOV<br />\r\n293. L. MADALIN, 10 ani, Jud. BRASOV<br />\r\n294. D. IONUT, 12 ani, Jud. BRASOV<br />\r\n295. M. NARCISA, 13 ani, Jud. BRASOV<br />\r\n296. M. ANDREEA, 7 ani, Jud. BRASOV<br />\r\n297. A. LAURA, 7 ani, Jud. BRASOV<br />\r\n298. L. IONUT, 14 ani, Jud. BRASOV<br />\r\n299. Z. MELISA, 8 ani, Jud. BRASOV<br />\r\n300. Z. MARIANA, 8 ani, Jud. BRASOV<br />\r\n301. Z. MADALINA, 7 ani, Jud. BRASOV<br />\r\n302. Z. ALEXANDRA, 7 ani, Jud. BRASOV<br />\r\n303. Z. IONELA, 9 ani, Jud. BRASOV<br />\r\n304. P. LUCIAN, 11 ani, Jud. BRASOV<br />\r\n305. T. VALENTIN, 14 ani, Jud. BRASOV<br />\r\n306. T. ALEXANDRU, 11 ani, Jud. BRASOV<br />\r\n<br />\r\n*pentru detalii suplimentare despre situatia fiecarui copil va rugam sa ne contactati la office@stophunger.ro.<br />\r\n<br />\r\nDin motive de confidentialitate nu am trecut satul/comuna/localitatea din care provin copiii. Toti copii inclusi in program traiesc in conditii de saracie: fie sunt orfani institutionalizati in centre rezidentiale, fie provin din familii monoparentale cu multi copiii, fie sunt incredintati altor persoane in plasament/tutela.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'poster STOP Hunger rechizite - header.jpg', 'poze rezerva/RA_0405_diversite.jpg', 'poze rezerva/EDU_066_AA053432.jpg', '2014-08-29 09:26:45'),
(3, 'Donatii in alimente in sectiile de pediatrie din Spitalul Budimex & Institutul Oncologic (2013) ', 'donatii-in-alimente', 'Alaturi de Hospice Casa Sperantei, Asociatia Stop Hunger a oferit alimente, in perioada octombrie – decembrie 2013, acelor mame si copii diagnosticati cu cancer, prea mici pentru a fi internati singuri in spital, si care provin din familii ce traiesc in conditii de saracie.  <br/><br/>\nPeste 250 de angajati ai companiilor Sodexo, Alcatel-Lucent, Wipro, Deltatel, DGRFP, Raiffeisen, S&T Romania, ING Romania, PricewaterhouseCoopers, Huawei, D&B David and Baias, RBS, LeasePlan, Metro Romania, Calpol, Porsche Romania, Sodexo, Railoc and Property Management au ales sa contribuie cu donatii pentru aceasta cauza. <br/><br/>\n', 0, 'DONATII IN ALIMENTE IN SECTIILE DE PEDIATRIE DIN SPITALUL BUDIMEX & INSTITUTUL ONCOLOGIC (2013)/Donatii sectii de pediatrie (1).jpg', 'poze rezerva/163_STH_GirlApple.jpg', 'poze rezerva/EDU_P_DI_2674.JPG', '2014-07-31 10:18:18'),
(4, 'Sprijin pentru victimele inundatiilor din Galati (2013) ', 'victimele-inundatiilor-din-galati', 'Asociatia Stop Hunger si  Crucea Rosie Galati, cu sprijinul  Sodexo si  Novo Park, au implementat, in perioada septembrie - octombrie 2013, o companie de strangere de fonduri in beneficiul victimelor inundatiilor din Galati. <br/><br/>\n\nLa aceasta campanie au contribuit cu donatii angajati ai companiilor: Ringier, Mondelez, Hp- Geboc, P&G, Luxoft, Infineon, Garanti Bank, Yokogawa, Sodexo,  Iiruc Service, Wfmc, Fan Courier si Unicredit.   Compania de curierat Fan Courier a fost partener al proiectului. <br/><br/>\n<img src=''/assets/images/uploads/projectPhotos/SPRIJIN PENTRU VICTIMELE INUNDATIILOR DIN GALATI (2013)/Scrisoare de multumire Crucea Rosie Galati.jpg'' width="100%">\n\n', 0, 'mama cu copil in brate la inundatii.JPG', 'SPRIJIN PENTRU VICTIMELE INUNDATIILOR DIN GALATI (2013)/DSC00413.JPG', 'SPRIJIN PENTRU VICTIMELE INUNDATIILOR DIN GALATI (2013)/caldire Garanti.jpg', '2014-07-31 10:19:09'),
(5, 'Campania "Daruieste din inima!" (2010-2011)', 'daruieste-din-inima', 'Sprijinirea victimelor inundatiilor din Moldova din iulie 2010  a fost scopul campaniei de colectare de fonduri din perioada iulie 2010 – martie 2011 sustinuta de Asociatia Stop Hunger, Sodexo Romania si Crucea Rosie Romana.  <br/><br/>\nCu sumele colectate a fost cumparata hrana pentru cele 170  de familii aflate in dificultate , care atunci locuiau in adaposturi in Dorohoi (Judetul Botosani) si Margineni (Judetul Bacau). <br/><br/>\nAlimentele au fost trimise familiilor din taberele de sinistrati in septembrie, octombrie, decembrie 2010 si martie 2011. <br/><br/>\nIn cadrul acestei campanii,  s-au implicat in calitate de donatori 4.468 de angajati provenind din 415 companii. <br/><br/>\n', 0, 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (1).JPG', 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (2).JPG', 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (4).JPG', '2014-07-31 10:19:09'),
(6, 'Campania Servathon - Sprijin pentru pacientii suferinzi de boli in stadiu terminal in Oradea (2009-2010) ', 'servathon', 'Cu scopul de a creste gradul de constientizare  asupra situatiei pacientilor din judetul Bihor care sufera de boli in stadiu terminal si traiesc in conditii de saracie si strangerea de fonduri in beneficiul acestora, am desfasurat o campanie in 2009 si 2010. <br/><br/>\n\nFondurile colectate in acest proiect au fost utilizate pentru a cumpara alimente si produse de igiena destinate pacientilor. Angajatii Sodexo au contribuit la aceasta campanie pentru a facilita strangerea de fonduri organizand evenimente de impact, precum  donare de sange, campionat de fotbal, atelier de creativitate in Oraselul Copiilor, participare la Targul ONG. <br/><br/>\n<a href="/assets/images/uploads/projectPhotos/CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Scrisoare_multumire_ASH.pdf" download>Scrisoare de multumire</a>\n\n', 0, 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (1).jpg', 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (2).jpg', 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (3).jpg', '2014-07-31 10:19:33'),
(8, 'Campania Servathon pentru sprijinirea satelor defavorizate (2008)', 'servathon-sprijinirea-satelor-defavorizate', 'In campania Servathon 2008, Asociatia Stop Hunger cu sprijinul companiei Sodexo a sprijinit 3 comunitati foarte sarace din Romania: Alma Vii (Sibiu), Almasel (Hunedoara) si Bolda (Satu Mare)  prin strangerea de fonduri si produse in valoare de  32, 972 Euro. Comunitatile au primit alimente si medicamente necesare pentru a trece peste iarna, dat fiind ca aceste comunitati erau in 2008 izolate (fara drum de acces, fara utilitati). In Almasel si  Alma Vii ca urmare a acestei campanii  autoritatile locale au inceput propriile programe de sprijin. In Bolda, Asociatia Stop Hunger cu sprijinul companiei Sodexo  continua sa trimita paine in fiecare saptamana si sa sprijine cei 4 copii din comunitate sa mearga la scoala, sa plateasca un medic si un asistent social care sa viziteze comunitatea. <br/><br/>', 0, 'batrana cu painea.JPG', 'CAMPANIA SERVATHON 2008 sate defavorizate/DSC01788.JPG', 'CAMPANIA SERVATHON 2008 sate defavorizate/DSC02488.JPG', '2014-07-31 10:20:36'),
(9, 'Ghidul de nutritie pentru copii " Sa crestem sanatosi" (2008)', 'sa-crestem-sanatosi', 'In 2008, cu scopul de a promova un stil de viata sanatos, sub egida programului  Nutrika & Grow program,  Asociatia Stop Hunger si Sodexo Romania au lansat ghidul de nutritie adresat copiilor intre 11 si14 ani. <br/><br/>\nCu o prezentare  si scris intr-un limbaj usor de inteles de catre copii, ghidul a fost donat cu sprijinul financiar al companiei Sodexo catre toate scolile, bibliotecile publice, autoritatile publice si centrele medicale din Romania. <br/><br/>\nProiectul a fost realizat in parteneriat cu Medicover si Institutul de Nutritie si Boli Metabolice Prof. Dr. N. Paulescu. <br/><br/>\n\n<a href="/assets/images/uploads/projectPhotos/ghid_nutritie_august_2014.pdf" download>Ghid de nutritie</a>\n<br/><br/>\n', 0, 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/ghid nutritie cover.jpg', 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/Ghid de nutritie Piramida alimentelor.JPG', 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/Ghid de nutritie Piramida miscarii.JPG', '2014-07-31 10:20:36'),
(10, 'Sprijin pentru familiile monoparentale care au in ingrijire copii (2003-2009)', 'sprijin-pentru-familiile-monoparentale', 'Este unul dintre programele etalon ale Asociatiei Stop Hunger, initiat de Sodexo in anul 2003 si continuat de Asociatia Stop Hunger incepand cu anul 2008. In cadrul acestui  proiect, 300 de familii au primit lunar pachete cu alimente de stricta necesitate. <br/><br/>\nProgramul a fost sprijinit de compania Sodexo, care a facilitat o cantitate impresionata de alimente: 8.000 de pachete cu alimente de stricta necesitate (pentru a acoperi nevoile unei familii pentru o luna): peste  8 tone de zahar,  peste 8 tone de ulei,  peste 8 tone de faina,  peste 8 tone de fasole,  peste 8.500 de conserve de mazare,  peste 8.000 de conserve de fasole verde,  peste 7,5 tone de orez,  peste 8 tone de malai,  peste 45.000 de conserve de carne,  peste 300.000 de iaurturi donate centrului de zi al Fundatiei Sf. Dimitrie alaturi de alte alimente si medicamente. <br/><br/>\n', 0, 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (1).jpg', 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (2).jpg', 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (4).jpg', '2014-07-31 10:21:09'),
(12, 'Indeplineste o dorinta', 'o-dorinta-de-craciun', 'Peste 400 de copii care traiesc in conditii de saracie au primit cu ocazia Craciunului 2013 si a Pastelui 2014 ce si-au dorit, in cadrul unei actiuni organizate de Asociatia Stop Hunger cu sprijinul mai multor companii  si mai ales al angajatilor acestora. <br/><br/>\nIn cadrul proiectului au fost inclusi si copii care sufera de boli incurabile,  a caror bucurie cand deschideau cadourile  ne-a convins ca a meritat tot efortul logistic pe care l-a implicat actiunea. <br/><br/>  \nIn aceast proiect s-au implicat angajatii companiilor Sodexo, Novo Park, Garanti Bank, Walter Services si Fan Curier. <br/><br/>\nIn cadrul proiectelor desfasurate  acordam o atentie deosebita protejarii imaginii copiilor si familiilor asistate. De aceea nu postam fotografii. Daca sunteti donator in cadrul acestui proiect va rugam sa ne contactati la office@stophunger.ro pentru a primi dovezile privind modul in care donatia dvs a for utilizata. <br/><br/>\n', 0, 'Indeplineste o dorinta/Indeplineste o dorinta (1).JPG', 'Indeplineste o dorinta/Indeplineste o dorinta (2).JPG', 'Indeplineste o dorinta/Indeplineste o dorinta (7).JPG', '2014-07-31 10:17:38'),
(20, 'Test dosar #FeK92suA1xlsP', 'testing', '<p><strong>Bla bla bla</strong></p>\r\n\r\n<p>Buia</p>\r\n\r\n<p>something</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>aaaaaa</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'admin_uploads/5405d25dbb6e90.76772100_1409667677_.jpg', 'admin_uploads/5405d248414e30.26749100_1409667656_.jpg', 'admin_uploads/5405d24f147a90.08388100_1409667663_.jpg', '2014-09-02 14:07:03');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `testimonials`
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
-- Structura de tabel pentru tabelul `users`
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
-- Salvarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `real_password`, `email`, `firstname`, `lastname`, `level`, `insertdate`, `last_login`) VALUES
(1, 'admin', 'waf7+qQbaHtQ6tPHmAqHM9+LnMBIMWZU26kehogUx0O1Z3BRkqCgTKZn/KCWhY/yzoe7jdGswW5kbxPG0dPPTw==', 'password', 'ianq_cornel@yahoo.com', 'Mainiac', 'Adminus', 1, '2014-07-25 13:17:42', '2014-09-02 10:09:56'),
(3, 'username', 'ILFXvq6dth5Wc+RZ6CkqxMvSo2AeL58S7O1cdCMw13FJKv4mXqpmyU7FkLZkE711kU2ABbKSoT29n07VASTJxw==', 'password', 'email@yahoo.com', 'nume', 'prenume', 2, '2014-07-25 13:17:42', '2014-08-18 14:15:25'),
(10, 'sponsor', 'wgZADuTidmlUK46Co5qUb/f+X/Av3AKsFp55+1sohIpnEmFF4QXFK8bp6I6Rgj35g0ADH+S16aFFMk1y0DxTQQ==', 'password', 'sponsor@yahoo.com', 'nume', 'prenume', 3, '2014-07-29 05:30:47', '2014-08-29 10:07:41');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
