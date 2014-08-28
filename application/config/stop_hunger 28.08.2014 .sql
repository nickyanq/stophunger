-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Gazda: localhost
-- Timp de generare: 28 Aug 2014 la 13:07
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Salvarea datelor din tabel `cases`
--

INSERT INTO `cases` (`id`, `firstname`, `lastname`, `display_name`, `age`, `city`, `description`, `more_details`, `profile`, `partener`, `insertdate`) VALUES
(20, 'Nume nou', 'Ipsum', NULL, 17, 'Bucuresti', 'Nevoie', 'Detalii', '7b2f5653347c802962dc0ddbb1f6030a.jpg', 'Partener123', '2014-08-10 21:00:00'),
(21, 'Nume test', 'Prenume', NULL, 14, 'Ploiesti', 'test test ', 'test test ', 'Penguins.jpg', 'parteneri', '2014-08-17 21:00:00');

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
  `intro` text CHARACTER SET utf8,
  `description` text CHARACTER SET utf8,
  `date` varchar(255) DEFAULT NULL,
  `crateddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Salvarea datelor din tabel `news`
--

INSERT INTO `news` (`id`, `title`, `coverphoto`, `intro`, `description`, `date`, `crateddate`) VALUES
(1, 'Daruieste un inceput de scoala fericit!', 'copii.jpg', 'Ne-am propus sa sprijinim in aceasta toamna 300 de copii sa fie pregatiti pentru scoala . Ii poti ajuta si tu.', 'Asociatia Stop Hunger va desfasura in perioada august - octombrie proiectul „Daruieste un inceput de scoala fericit!”. Alaturi de tine le vom darui celor 300 de copii inclusi in proiect cate un ghiozdan echipat pentru inceperea noului an scolar, cu caiete, creioane, pixuri si alte categorii de rechizite. <br/><br/>\nAm demarat acest proiect ca urmare a feedbackului primit in mod direct, in urma interactiunilor cu familii modeste , ca inceputul scolii este un moment dificil si nu unul de bucurie, in conditiile in care  familiile nu isi permit sa le ofere copiilor ghizdane, carti si rechizite. <br/><br/>\n\nAceasta campanie este desfasurata de catre Asociatia Stop Hunger in parteneriat cu Sodexo si Novo Park. Campania este sustinuta si de mai multe organizații neguvernamentale, care au desfășurat anchetele sociale pentru a identifica copiii: <br/><br/>\n\n• Fundația Sf. Dimitrie (București)<br/><br/>\n• Fundația Metropolis (București) <br/><br/>\n• Organizația Caritas Satu Mare<br/><br/>\n• Fundația Hospice Emanuel Oradea<br/><br/>\n• Fundația Casa Speranței Brasov & București<br/><br/>\n• Fundația pentru Voi Timișoara<br/><br/>\n• Fundația Star of Hope Iași<br/><br/>\n• Fundația Serviciilor Sociale Bethany<br/><br/>\nImpreuna putem darui multa bucurie. Daca vrei sa daruiesti un ghiozdan, te rugam, scrie-ne la <b>office@stophunger.ro</b> si mentioneaza carui copil alege  doresti sa ii faci aceasta bucurie. Vom decide impreuna cum ii vom trimite ghiozdanul . <br/>\nLasa-ne adresa de email pentru a-ti trimite procesul verbal de predare –primire.\n', 'August 2014', '2014-07-31 12:25:13'),
(2, 'Implica-te si tu alaturi de noi! ', 'implicate.jpg', 'Doneaza si tu 2% Asociatiei Stop Hunger pentru a reusi impreuna sa schimbam in bine viata a cat mai multi copii! ', 'In 2014 toate donatiile primite din 2% de catre Asociatia Stop Hunger sunt utilizate pentru a sprijini copiii care traiesc in conditii de saracie si au risc sa abandoneze scoala in cadrul proiectului „Adopta o Familie” . Sustinuti si indrumati acesti copii pot reusi sa  aiba o viata mai buna. <br/><br/>\nCopii sunt selectati in urma unor anchete sociale si  primesc lunar o bursa pentru hrana, rechizite, incaltaminte, imbracaminte si medicamente. In plus primesc sprijin specializat: consiliere psihologica, mentoring, participare la activitati extracurricurale care sa ii ajute sa reuseasca in viata! <br/><br/>\nProgramul este implementat in prezent in Bucuresti, Brasov, Buzau, Iasi, Constanta,  Oradea, Timisoara, Targu Mures, Satu Mare si Vaslui. <br/><br/>\nSodexo auditeaza periodic Asociatia Stop Hunger, asigurandu-se ca toate fondurile primite sunt utilizate exclusiv in  beneficiul copiilor. <br/><br/>\nDaca ai ales sa donezi 2% si vrei sa te implici, contacteaza-ne la office@stophunger.ro pentru mai multe detalii. <br/><br/>\nAnual statul iti impoziteaza veniturile cu un procent de 16%. Conform Codului Fiscal - Legea 571 / 2003, Art. 84, fiecare persoana poate directiona 2% din cele 16% catre o organizatie non-guvernamentala. Asadar, in loc sa lasi acesti bani statului alege sa marchezi pozitiv viata unui copil. <br/><br/>\nSodexo sustine, cu mandrie, Asociatia Stop Hunger, din anul 2008.\n', 'Aprilie 2014', '2014-07-31 12:26:03');

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
  `coverphoto` varchar(255) DEFAULT NULL,
  `photo_top` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo_bottom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Salvarea datelor din tabel `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `description`, `coverphoto`, `photo_top`, `photo_bottom`, `insertdate`) VALUES
(1, 'Proiectul  "Adopta o Familie"  (2011- prezent)', 'adopta-o-familie', 'In cadrul programelor de sprijin adresate categoriilor de persoane aflate in dificultate, desfasurate de Asociatia Stop Hunger,  printre problemele majore constant intalnite in randul tinerilor sunt lipsa de repere pozitive, de indrumare si de modele.  <br/><br/>\nPornind de la acesta problema reala, am gandit in 2011 proiectul  „Adopta o Familie”,  o initiativa foarte curajoasa,  care s-a materializat  gratie entuziasmului companiilor partenere si al echipei de voluntari Sodexo. <br/><br/>\nObiectivul acestui proiect este crearea  unei retele de sprijin pentru copii care traiesc in conditii de saracie si prezinta un risc ridicat de abandon scolar. Mecanismul prin care copiii sunt sprijiniti este simplu si la indemana. Astfel, fiecare copil selectat in proiect este „adoptat” de o companie care accepta sa il acompanieze pe durata studiilor, oferindu-i o bursa lunara si mai ales mentoring. <br/><br/>\nDincolo de contributia financiara extrem de importanta pentru oricare dintre acesti copii, mentoringul este cel care va avea cu adevarat un impact pe termen lung.   <br/><br/>\nMecanismul proiectului ii sustine pe copii sa devina mai responsabili pentru dezvoltarea lor si le incurajeaza familiile sa utilizeze bursele lunare exclusiv pentru nevoile copiilor.  Copii implicati in proiect sunt indrumati si primesc gratuit consiliere, iar legatura cu sponsorii ii ajuta sa aiba o perspectiva pozitiva asupra vietii.  <br/><br/>\nRezultatele programului sunt usor de cuantificat observand progresul si reusitele copiilor. Fiecare admitere la liceu si reusita la examenul de bacalaureat , fiecare admitere la facultate reprezinta pentru toti cei implicati in program incununarea unei colaborari de succes. Pentru companii, acesta este momentul in care inteleg cat de valoros este minimum lor aport, in timp ce pentru copiii si familiile acestora, reprezinta schimbarea unui destin. <br/><br/>\nProiectul a fost initiat in anul 2011 si este implementat de Asociatia Stop Hunger, cu indrumarea si sprijinul companiei Sodexo. Programul este implementat in prezent in Bucuresti, Brasov, Constanta, Iasi, Oradea, Timisoara si Satu Mare. <br/><br/>\nPentru mai multe detalii despre cazurile sprijinite este nevoie sa aveti acces la sectiunea restrictionata creeata special pentru a proteja imaginea copiilor ajutati in cadrul acestui proiect. <br/><br/> Click <a href="http://work.opti.ro/corneliu/stophunger/">aici</a> pentru cont la sectiunea restrictionata.\n\n<br/><br/>\n', 'Adopta o Familie/Proiect Adopta o Familie (1).jpg', 'Adopta o Familie/Proiect Adopta o Familie (4).jpg', 'Adopta o Familie/Proiect Adopta o Familie (5).jpg', '2014-07-31 10:17:09'),
(2, 'Indeplineste o dorinta', 'o-dorinta-de-craciun', 'Peste 400 de copii care traiesc in conditii de saracie au primit cu ocazia Craciunului 2013 si a Pastelui 2014 ce si-au dorit, in cadrul unei actiuni organizate de Asociatia Stop Hunger cu sprijinul mai multor companii  si mai ales al angajatilor acestora. <br/><br/>\nIn cadrul proiectului au fost inclusi si copii care sufera de boli incurabile,  a caror bucurie cand deschideau cadourile  ne-a convins ca a meritat tot efortul logistic pe care l-a implicat actiunea. <br/><br/>  \nIn aceast proiect s-au implicat angajatii companiilor Sodexo, Novo Park, Garanti Bank, Walter Services si Fan Curier. <br/><br/>\nIn cadrul proiectelor desfasurate  acordam o atentie deosebita protejarii imaginii copiilor si familiilor asistate. De aceea nu postam fotografii. Daca sunteti donator in cadrul acestui proiect va rugam sa ne contactati la office@stophunger.ro pentru a primi dovezile privind modul in care donatia dvs a for utilizata. <br/><br/>\n', 'Indeplineste o dorinta/Indeplineste o dorinta (1).JPG', 'Indeplineste o dorinta/Indeplineste o dorinta (2).JPG', 'Indeplineste o dorinta/Indeplineste o dorinta (7).JPG', '2014-07-31 10:17:38'),
(3, 'Donatii in alimente in sectiile de pediatrie din Spitalul Budimex & Institutul Oncologic (2013) ', 'donatii-in-alimente', 'Alaturi de Hospice Casa Sperantei, Asociatia Stop Hunger a oferit alimente, in perioada octombrie – decembrie 2013, acelor mame si copii diagnosticati cu cancer, prea mici pentru a fi internati singuri in spital, si care provin din familii ce traiesc in conditii de saracie.  <br/><br/>\nPeste 250 de angajati ai companiilor Sodexo, Alcatel-Lucent, Wipro, Deltatel, DGRFP, Raiffeisen, S&T Romania, ING Romania, PricewaterhouseCoopers, Huawei, D&B David and Baias, RBS, LeasePlan, Metro Romania, Calpol, Porsche Romania, Sodexo, Railoc and Property Management au ales sa contribuie cu donatii pentru aceasta cauza. <br/><br/>\n', 'DONATII IN ALIMENTE IN SECTIILE DE PEDIATRIE DIN SPITALUL BUDIMEX & INSTITUTUL ONCOLOGIC (2013)/Donatii sectii de pediatrie (1).jpg', 'poze rezerva/163_STH_GirlApple.jpg', 'poze rezerva/EDU_P_DI_2674.JPG', '2014-07-31 10:18:18'),
(4, 'Sprijin pentru victimele inundatiilor din Galati (2013) ', 'victimele-inundatiilor-din-galati', 'Asociatia Stop Hunger si  Crucea Rosie Galati, cu sprijinul  Sodexo si  Novo Park, au implementat, in perioada septembrie - octombrie 2013, o companie de strangere de fonduri in beneficiul victimelor inundatiilor din Galati. <br/><br/>\n\nLa aceasta campanie au contribuit cu donatii angajati ai companiilor: Ringier, Mondelez, Hp- Geboc, P&G, Luxoft, Infineon, Garanti Bank, Yokogawa, Sodexo,  Iiruc Service, Wfmc, Fan Courier si Unicredit.   Compania de curierat Fan Courier a fost partener al proiectului. <br/><br/>\n', 'mama cu copil in brate la inundatii.JPG', 'SPRIJIN PENTRU VICTIMELE INUNDATIILOR DIN GALATI (2013)/DSC00413.JPG', 'SPRIJIN PENTRU VICTIMELE INUNDATIILOR DIN GALATI (2013)/caldire Garanti.jpg', '2014-07-31 10:19:09'),
(5, 'Campania "Daruieste din inima!" (2010-2011)', 'daruieste-din-inima', 'Sprijinirea victimelor inundatiilor din Moldova din iulie 2010  a fost scopul campaniei de colectare de fonduri din perioada iulie 2010 – martie 2011 sustinuta de Asociatia Stop Hunger, Sodexo Romania si Crucea Rosie Romana.  <br/><br/>\nCu sumele colectate a fost cumparata hrana pentru cele 170  de familii aflate in dificultate , care atunci locuiau in adaposturi in Dorohoi (Judetul Botosani) si Margineni (Judetul Bacau). <br/><br/>\nAlimentele au fost trimise familiilor din taberele de sinistrati in septembrie, octombrie, decembrie 2010 si martie 2011. <br/><br/>\nIn cadrul acestei campanii,  s-au implicat in calitate de donatori 4.468 de angajati provenind din 415 companii. <br/><br/>\n', 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (1).JPG', 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (2).JPG', 'CAMPANIA DARUIESTE DIN INIMA/Daruieste din inima (4).JPG', '2014-07-31 10:19:09'),
(6, 'Campania Servathon - Sprijin pentru pacientii suferinzi de boli in stadiu terminal in Oradea (2009-2010) ', 'servathon', 'Cu scopul de a creste gradul de constientizare  asupra situatiei pacientilor din judetul Bihor care sufera de boli in stadiu terminal si traiesc in conditii de saracie si strangerea de fonduri in beneficiul acestora, am desfasurat o campanie in 2009 si 2010. <br/><br/>\n\nFondurile colectate in acest proiect au fost utilizate pentru a cumpara alimente si produse de igiena destinate pacientilor. Angajatii Sodexo au contribuit la aceasta campanie pentru a facilita strangerea de fonduri organizand evenimente de impact, precum  donare de sange, campionat de fotbal, atelier de creativitate in Oraselul Copiilor, participare la Targul ONG. <br/><br/>\n', 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (1).jpg', 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (2).jpg', 'CAMPANIA SERVATHON - SPRIJIN PENTRU PACIENTII SUFERINZI DE BOLI IN STADIU TERMINAL IN ORADEA/Servathon boli incurabile Oradea (3).jpg', '2014-07-31 10:19:33'),
(8, 'Campania Servathon pentru sprijinirea satelor defavorizate (2008)', 'servathon-sprijinirea-satelor-defavorizate', 'In campania Servathon 2008, Asociatia Stop Hunger cu sprijinul companiei Sodexo a sprijinit 3 comunitati foarte sarace din Romania: Alma Vii (Sibiu), Almasel (Hunedoara) si Bolda (Satu Mare)  prin strangerea de fonduri si produse in valoare de  32, 972 Euro. Comunitatile au primit alimente si medicamente necesare pentru a trece peste iarna, dat fiind ca aceste comunitati erau in 2008 izolate (fara drum de acces, fara utilitati). In Almasel si  Alma Vii ca urmare a acestei campanii  autoritatile locale au inceput propriile programe de sprijin. In Bolda, Asociatia Stop Hunger cu sprijinul companiei Sodexo  continua sa trimita paine in fiecare saptamana si sa sprijine cei 4 copii din comunitate sa mearga la scoala, sa plateasca un medic si un asistent social care sa viziteze comunitatea. <br/><br/>', 'batrana cu painea.JPG', 'CAMPANIA SERVATHON 2008 sate defavorizate/DSC01788.JPG', 'CAMPANIA SERVATHON 2008 sate defavorizate/DSC02488.JPG', '2014-07-31 10:20:36'),
(9, 'Ghidul de nutritie pentru copii " Sa crestem sanatosi" (2008)', 'sa-crestem-sanatosi', 'In 2008, cu scopul de a promova un stil de viata sanatos, sub egida programului  Nutrika & Grow program,  Asociatia Stop Hunger si Sodexo Romania au lansat ghidul de nutritie adresat copiilor intre 11 si14 ani. <br/><br/>\nCu o prezentare  si scris intr-un limbaj usor de inteles de catre copii, ghidul a fost donat cu sprijinul financiar al companiei Sodexo catre toate scolile, bibliotecile publice, autoritatile publice si centrele medicale din Romania. <br/><br/>\nProiectul a fost realizat in parteneriat cu Medicover si Institutul de Nutritie si Boli Metabolice Prof. Dr. N. Paulescu. <br/><br/>\n', 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/ghid nutritie cover.jpg', 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/Ghid de nutritie Piramida alimentelor.JPG', 'GHIDUL DE NUTRITIE PENTRU COPII  SA CRESTEM SANATOSI/Ghid de nutritie Piramida miscarii.JPG', '2014-07-31 10:20:36'),
(10, 'Sprijin pentru familiile monoparentale care au in ingrijire copii (2003-2009)', 'sprijin-pentru-familiile-monoparentale', 'Este unul dintre programele etalon ale Asociatiei Stop Hunger, initiat de Sodexo in anul 2003 si continuat de Asociatia Stop Hunger incepand cu anul 2008. In cadrul acestui  proiect, 300 de familii au primit lunar pachete cu alimente de stricta necesitate. <br/><br/>\nProgramul a fost sprijinit de compania Sodexo, care a facilitat o cantitate impresionata de alimente: 8.000 de pachete cu alimente de stricta necesitate (pentru a acoperi nevoile unei familii pentru o luna): peste  8 tone de zahar,  peste 8 tone de ulei,  peste 8 tone de faina,  peste 8 tone de fasole,  peste 8.500 de conserve de mazare,  peste 8.000 de conserve de fasole verde,  peste 7,5 tone de orez,  peste 8 tone de malai,  peste 45.000 de conserve de carne,  peste 300.000 de iaurturi donate centrului de zi al Fundatiei Sf. Dimitrie alaturi de alte alimente si medicamente. <br/><br/>\n', 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (1).jpg', 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (2).jpg', 'Sprijin pentru familiile monoparentale care au copii/Sprijin familii monoparentale (4).jpg', '2014-07-31 10:21:09');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Salvarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `real_password`, `email`, `firstname`, `lastname`, `level`, `insertdate`, `last_login`) VALUES
(1, 'admin', 'waf7+qQbaHtQ6tPHmAqHM9+LnMBIMWZU26kehogUx0O1Z3BRkqCgTKZn/KCWhY/yzoe7jdGswW5kbxPG0dPPTw==', 'password', 'ianq_cornel@yahoo.com', 'Mainiac', 'Adminus', 1, '2014-07-25 13:17:42', '2014-08-22 09:51:34'),
(3, 'username', 'ILFXvq6dth5Wc+RZ6CkqxMvSo2AeL58S7O1cdCMw13FJKv4mXqpmyU7FkLZkE711kU2ABbKSoT29n07VASTJxw==', 'password', 'email@yahoo.com', 'nume', 'prenume', 2, '0000-00-00 00:00:00', '2014-08-18 14:15:25'),
(10, 'sponsor', 'wgZADuTidmlUK46Co5qUb/f+X/Av3AKsFp55+1sohIpnEmFF4QXFK8bp6I6Rgj35g0ADH+S16aFFMk1y0DxTQQ==', 'password', 'sponsor@yahoo.com', 'nume', 'prenume', 3, '2014-07-29 05:30:47', '2014-08-20 10:34:20'),
(11, 'testuser', 'otqWsgEyPKgcYAPUpbgV6d+saknNXjU7VtyTtE2oYQK+5b08GA2gEv6rYuxsAyYyFMh3EhfTzeNWKp4YcXl9Ug==', 'parola2', 'email', 'Ionescu', 'Popescu', 3, '2014-08-18 14:14:32', '2014-08-18 14:16:34');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
