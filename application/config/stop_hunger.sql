-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Gazda: localhost
-- Timp de generare: 31 Iul 2014 la 13:42
-- Versiune server: 5.6.12-log
-- Versiune PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Bază de date: `stophunger`
--
CREATE DATABASE IF NOT EXISTS `stophunger` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stophunger`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Salvarea datelor din tabel `cases`
--

INSERT INTO `cases` (`id`, `firstname`, `lastname`, `display_name`, `age`, `city`, `description`, `more_details`, `profile`, `partener`, `insertdate`) VALUES
(11, 'Alexandraa', 'Munteanuuu', NULL, 16, 'Brasovv', 'Consult oftalmologic', 'bla bla bla', 'Chrysanthemum.jpg', 'Puya', '2014-07-29 21:00:00'),
(12, 'Vlad', 'Truta', NULL, 19, 'Brasov', 'Imbracaminte\r\nAlimente\r\nRechizite \r\nPlata abonamentului\r\nAjutor financiar pentru plata chiriei\r\nProduse de igiena', '######', 'Penguins1.jpg', 'Nu avea', '2014-07-29 21:00:00'),
(13, 'Andreea', 'C.', NULL, 17, 'Brasov', 'Ajutor financiar\r\nImbracaminte\r\nRechizite\r\nAlimente\r\nProduse de igiena\r\n', '####', 'Hydrangeas.jpg', 'Fundatia Hospice Casa Speranteii', '2014-07-29 21:00:00'),
(14, 'test', 'test', NULL, 12, 'test', 'test', 'test', 'Penguins2.jpg', 'test', '2014-07-29 21:00:00'),
(15, 'test', 'test', NULL, 12, 'ploiesti', 'test', 'test', 'Koala.jpg', 'test', '2014-07-30 21:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

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
(11, 11, 'Nume fisier', '2256e3ea1fe5a1ccbd5926ede6e5ff92.jpg', '2014-07-30 09:05:28'),
(12, 13, 'Koala', '7b2f5653347c802962dc0ddbb1f6030a.jpg', '2014-07-30 09:53:24');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Salvarea datelor din tabel `news`
--

INSERT INTO `news` (`id`, `title`, `coverphoto`, `intro`, `description`, `date`, `crateddate`) VALUES
(1, 'Daruieste un inceput de scoala fericit!', 'copii.jpg', 'Anul acesta aducem aproape de inimile voastre 300 de copii pe care dorim să îi ajutam să fie pregătiți pentru școală. Afla mai multe detalii! ', ' Asociatia Stop Hunger va desfasura in perioada august -octombrie proiectul "Daruieste un inceput de scoala fericit!". Stim din interactiunile cu familiile care traiesc in conditii de saracie ca inceputul scolii este un moment dificil deoarece copiii nu au ghizdane, carți și rechizite\n\nAlege sa dăruiești un ghiozdan pentru școală cu tot ce trebuie în el: caiete, creioane, pixuri și alte categorii de rechizite. Lasă-ne adresa de email să îți trimitem procesul verbal de predare –primire. \n\nAnul acesta aducem aproape de inimile voastre 300 de copii pe care dorim să îi ajutam să fie pregătiți pentru școală.\n\nAceasta campanie este desfașurată de către Asociația Stop Hunger în parteneriat cu Sodexo și Novo Park. Campania este susținută de către urmatoarele organizații neguvernamentale care au desfășurat anchetele sociale pentru a identifica copiii:\n• Fundația Sf. Dimitrie (București)\n• Fundația Metropolis (București)\n• Organizația Caritas Satu Mare\n• Fundația Hospice Emanuel Oradea\n• Fundația Casa Speranței Brasov & București\n• Fundația pentru Voi Timișoara\n• Fundația Star of Hope Iași\n• Fundația Serviciilor Sociale Bethany', 'August 2014', '2014-07-31 12:25:13'),
(2, 'Implica-te si tu alaturi de noi! ', 'implicate.jpg', 'Doneaza si tu 2% Asociatiei Stop Hunger pentru a reusi impreuna sa schimbam in bine viata a cat mai multi copii! ', 'In 2014 toate donatiile primite din 2% de catre Asociatia Stop Hunger sunt utilizate pentru a sprijini copiii care traiesc in conditii de saracie si au risc sa abandoneze scoala in cadrul proiectului “Adopta o Familie” . Sustinuti si indrumați acesti copii pot reusi sa  aiba o viata mai buna. Alege sa schimbi o viata!\r\nCopii sunt selectati in urma unor anchete sociale si  primesc lunar o bursa pentru hrana, rechizite, incaltaminte, imbracaminte si medicamente. In plus primesc sprijin specializat: consiliere psihologica, mentoring, participare la activitati extracurricurale care sa ii ajute sa reuseasca in viata! \r\nProgramul este implementat in prezent in Bucuresti, Brasov, Buzau, Iasi, Constanta,  Oradea, Timisoara, Targu Mures, Satu Mare si Vaslui. \r\nSodexo auditeaza periodic Asociatia Stop Hunger, asigurandu-se ca toate fondurile primite sunt utilizate exclusiv in  beneficiul copiilor. \r\nDaca ai ales sa donezi 2% si vrei sa te implici mai mult contacteaza-ne la office@stophunger.ro. \r\n\r\nAnual statul iti impoziteaza veniturile cu un procent de 16%. Conform Codului Fiscal - Legea 571 / 2003, Art. 84, fiecare persoana poate directiona 2% din cele 16% catre o organizatie non-guvernamentala. Asadar, in loc sa lasi acesti bani statului alege sa marchezi pozitiv viata unui copil.\r\nSodexo sustine cu mandrie Asociatia Stop Hunger din anul 2008! \r\n', 'Aprilie 2014', '2014-07-31 12:26:03');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Salvarea datelor din tabel `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `active`, `insertdate`) VALUES
(1, 'em@em.com', 1, '2014-07-31 09:20:17'),
(2, 'em@em.com', 1, '2014-07-31 09:20:29'),
(3, 'em@em.com', 1, '2014-07-31 09:20:32'),
(4, 'em@em.com', 1, '2014-07-31 09:21:01'),
(5, 'em@em.com', 1, '2014-07-31 09:21:28'),
(6, 'em@em.com', 1, '2014-07-31 09:21:30'),
(7, 'em@em.com', 1, '2014-07-31 09:21:36'),
(8, 'em@em.com', 1, '2014-07-31 09:21:40'),
(9, 'em@em.com', 1, '2014-07-31 09:21:42'),
(10, 'em@em.com', 1, '2014-07-31 09:21:58'),
(11, 'othermail@yahoo.com', 1, '2014-07-31 09:22:09'),
(12, 'nla blal blabla', 1, '2014-07-31 11:11:03');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Salvarea datelor din tabel `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `description`, `coverphoto`, `photo_top`, `photo_bottom`, `insertdate`) VALUES
(1, 'Proiectul  "Adopta o Familie"  (2011- prezent)', 'adopta-o-familie', 'In cadrul programelor de sprijin adresate categoriilor de persoane aflate in dificultate, desfasurate de catre Asociatia Stop Hunger,  printre problemele majore constant intalnite in randul tinerilor sunt:  lipsa de repere pozitive, de indrumare si de modele.  \r\n\r\nProiectul " Adopta o Familie"  este o initiativa foarte curajoasa a asociatiei noastre care nu ar fi putut deveni realitate fara entuziasmul echipei de voluntari ai companiei Sodexo. Proiectul a fost initiat in anul 2011 si este desfasurat de Asociatia Stop Hunger cu indrumarea si sprijinul companiei Sodexo. \r\n\r\nProiectul are drept obiectiv sa creeze o retea de sprijin pentru copii care traiesc in conditii de saracie si au risc sa abandoneze scoala. In cadrul proiectului pentru fiecare copil selectat in proiect este gasita o companie care accepta sa il acompanieze pe durata studiilor, oferindu-i o bursa lunara si mentoring. \r\n\r\nProgramul este implementat in prezent in Bucuresti, Brasov, Constanta, Iasi, Oradea, Timisoara si Satu Mare si impactul asupra dezvoltarii copiilor este uimitor. Mecanismul proiectului incurajeaza copiii sa devina mai responsabili pentru dezvoltarea lor si incurajeaza familiile sa utilizeze bursele exclusiv pentru nevoile copiilor.  Copii sunt indrumati si primesc consiliere, iar legatura cu sponsorii ii ajuta sa aiba o alta perspectiva asupra vietii.  Ne bucuram in fiecare zi sa vedem progresul copiilor si reusitele lor au devenit cele mai importante momente pentru noi: fiecare intrare la liceu, fiecare examen de bacalaureat luat, fiecare intrare la facultate reprezinta momente in care ne dam seama cat de mult bine puteam crea impreuna si cat de valoasa este implicarea mediului de afaceri. \r\n', 'fetita.jpg', NULL, NULL, '2014-07-31 10:17:09'),
(2, 'Indeplineste o dorinta de Craciun (2013) ', 'o-dorinta-de-craciun', 'Obiectivul proiectului a fost acela de a oferi cadouri de Craciun copiilor care traiesc in conditii de saracie si care rar primesc cadouri.  Peste 400 de copii care traiesc in conditii de saracie au primit exact ce si-au dorit de Craciun in cadrul unei actiuni organizata de Asociatia Stop Hunger cu sprijinul mai multor companii  si angajatilor acestora care au dat dovada de o incredibila implicare.\r\n\r\nIn cadrul proiectului au fost inclusi copii care sufera de boli incurabile si care prin bunavointa unor oameni deosebiti au primit exact ce si-au dorit. Reactia acestor copii cand au deschis cadourile a fost impresionanta si ne-a convins ca a meritat tot efortul logistic pe care l-a implicat aceasta actiune.  \r\n\r\nMultumim in mod deosebit pentru implicarea in aceasta actiune angajatilor de la Sodexo, Novo Park, Garanti Bank, Walter Services si Fan Curier. De asemenea, multumim voluntarilor care de sarbatori au ales sa duca cadouri copiilor. \r\n\r\nIn cadrul proiectelor desfasurate  acordam o atentie deosebita protejarii imaginii copiilor si familiilor asistate. De aceea nu postam fotografii. Daca sunteti donator in cadrul acestui proiect va rugam sa ne contactati la office@stophunger.ro pentru a primi dovezile privind modul in care donatia dvs a for utilizata.', 'tanara si bunic.JPG', NULL, NULL, '2014-07-31 10:17:38'),
(3, 'Donatii in alimente in sectiile de pediatrie din Spitalul Budimex & Institutul Oncologic (2013) ', 'donatii-in-alimente', 'In perioada Octombrie –Decembrie 2013, Asociatia Stop Hunger  & Hospice Casa Sperantei au decis crearea unei initiatie prin intermediul careia sa fie sprijinite mamele care cu sprijinul companiei Sodexo au dezvoltat acest proiect avand drept scop sprijinirea mamelor care provin din familii care traiesc in conditii de saracie si sunt stau in spital cu copii lor care sufera de cancer deoarece sunt prea mici pentru a fi lasati singuri (0-3 ani).  In cadrul acestui proiect donatiile primite au fost \r\n\r\n 250 de angajati ai companiilor Expert Petroleum, Alcatel-Lucent, Wipro, Deltatel, DGRFP, Raiffeisen, S&T Romania, ING Romania, PricewaterhouseCoopers, Huawei, D&B David and Baias, RBS, LeasePlan, Metro Romania, Calpol, Porsche Romania, Sodexo, Railoc and Property Management au ales sa contribuie cu donatii pentru aceasta cauza. Momentele cele mai emotionante au fost acelea in care mamele au oferit mancarea copiilor lor.', 'scaun cu rotile.JPG', NULL, NULL, '2014-07-31 10:18:18'),
(4, 'Sprijin pentru victimele inundatiilor din Galati (2013) ', 'victimele-inundatiilor-din-galati', 'Asociatia Stop Hunger & Crucea Rosie Galati cu sprijinul  Sodexo & Novo Park a dezvoltat in perioada septembrie - octombrie 2013 o companie de strangere de fonduri in beneficiul victimelor inundatiilor din Galati. La aceasta campanie au contribuit cu donatii angajati ai companiilor: RINGIER, MONDELEZ, HP- GEBOC, P&G, LUXOFT, INFINEON, GARANTI BANK, YOKOGAWA, SODEXO,  IIRUC SERVICE, WFMC, FAN COURIER si UNICREDIT.   Multumim companiei de curierat Fan Courier pentru transportul gratuit al donatiilor.', 'mama cu copil in brate la inundatii.JPG', NULL, NULL, '2014-07-31 10:19:09'),
(5, 'Campania "Daruieste din inima!" (2010-2011)', 'daruieste-din-inima', 'Campania a fost dezvoltata in perioada iulie 2010- martie 2011 de catre Asociatia Stop Hunger, Sodexo Romania si Crucea Rosie Romana pentru a strange fonduri in beneficiul victimelor inundatiilor care au avut loc in luna iulie 2010 in Moldova.  Donatiile primite au fost utilizate pentru a cumpara hrana celor 170  de familii aflate in dificultate deoarece casele lor au fost luate de ape si in locuiau in adaposturi in Dorohoi (Judetul Botosani) siMargineni (Judetul Bacau). Donatiile au fost trimise victimelor din taberele de sinistrati in septembrie, octombrie, decembrie 2010 si martie 2011. In cadrul acestei campanii au primite donatii din partea a 4468 de angajati provenind din 415 companii. Multumim acelora care s-au implicat in aceasta campanie si tuturor voluntarilor care in ciuda conditiilor  meteo nefavorabile au reusit sa ajunga in tabara de sinistrati cu donatiile de alimente!  ', 'copii cu pepene.JPG', NULL, NULL, '2014-07-31 10:19:09'),
(6, 'Campania Servathon - Sprijin pentru pacientii suferinzi de boli in stadiu terminal in Oradea (2009-2010) ', 'servathon', 'Campania a fost desfasurata in 2009 & 2010, si a avut drept scop cresterea gradului de constientizare  asupra situatiei pacientilor din judetul Bihor care sufera de boli in stadiu terminal si traiesc in conditii de saracie si strangerea de fonduri in beneficiul acestora. Fondurile stranse au fost utilizate pentru a cumpara alimente si produse de igiena. Angajatii Sodexo au contribuit la aceasta campanie pentru a facilita strangerea de fonduri organizand evenimente de impact:  donare de sange, campionat de fotbal, atelier de creativitate in Oraselul Copiilor, participare la Targul ONG, etc.', 'vopsitor.JPG', NULL, NULL, '2014-07-31 10:19:33'),
(7, 'Ghidul de nutritie pentru copii " Sa crestem sanatosi" (2008)', 'sa-crestem-sanatosi', 'In 2008, cu scopul de a promova un stil de viata sanatos, sub egida programului  Nutrika & Grow program,  Asociatia Stop Hunger si Sodexo Romania au lansat ghidul de nutritie adresat copiilor intre 11-14 ani. Ghidul a fost creat intr-o mod de prezentare  si intr-un limbaj usor de inteles de catre copii. Ghidul a fost donat cu sprijinul financiar al companiei Sodexo catre toate scolile, bibliotecile publice, autoritatile publice si centrele medicale din Romania. Proiectul a fost realizat in parteneriat cu Medicover si Institutul de Nutritie si Boli Metabolice Prof. Dr. N. Paulescu. ', 'copii.JPG', NULL, NULL, '2014-07-31 10:20:36'),
(8, 'Campania Servathon pentru sprijinirea satelor defavorizate (2008)', 'servathon-sprijinirea-satelor-defavorizate', 'In campania Servathon 2008, Asociatia Stop Hunger cu sprijinul companiei Sodexo a sprijinit 3 comunitati foarte sarace din Romania: Alma Vii (Sibiu), Almasel (Hunedoara) si Bolda (Satu Mare)  prin strangerea de fonduri si produse in valoare de  32, 972 Euro. Comunitatile au primit alimente si medicamente necesare pentru a trece peste iarna, dat fiind ca aceste comunitati erau in 2008 izolate (fara drum de acces, fara utilitati). In Almasel si  Alma Vii ca urmare a acestei campanii  autoritatile locale au inceput propriile programe de sprijin. In Bolda, Asociatia Stop Hunger cu sprijinul companiei Sodexo  continua sa trimita paine in fiecare saptamana si sa sprijine cei 4 copii din comunitate sa mearga la scoala, sa plateasca un medic si un asistent social care sa viziteze comunitatea. ', 'batrana cu painea.JPG', NULL, NULL, '2014-07-31 10:20:36'),
(10, 'Sprijin pentru familiile monoparentale care au in ingrijire copii (2003-2009)', 'sprijin-pentru-familiile-monoparentale', 'Programul a fost initiat de Sodexo in anul 2003 si continuat de Asociatia Stop Hunger incepand cu anul 2008. In cadrul acestui  proiect 300 de familii au primit lunar pachete cu alimente de stricta necesitate. Proiectul a avut drept scop Programul a fost sprijinit de compania Sodexo care a facilitat o cantitate impresionata de alimente: 8,000 de pachete cu alimente de stricta necesitate (pentru a acoperi nevoile unei familii pentru o luna): peste  8 tone de zahar,  peste 8 tone de ulei,  peste 8 tone de faina,  peste 8 tone de fasole,  peste 8500 de conserve de mazare,  peste 8000 de conserve de fasole verde,  peste 7.5 tone de orez,  peste 8 tone de malai,  peste 45 000 de conserve de carne,  peste 300 000 de iaurturi donate centrului de zi al Fundatiei Sf. Dimitrie alaturi de alte alimente si medicamente.', 'scaun cu rotile.JPG', NULL, NULL, '2014-07-31 10:21:09');

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
  `insertdate` datetime DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Salvarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `real_password`, `email`, `firstname`, `lastname`, `level`, `insertdate`, `last_login`) VALUES
(1, 'admin', 'fu1qwCWmNki87oWv0XthCYscoRnJV1qEVZiIoODA6ByDLKkg1A53PlqovlcSksZd/qhwePH6mZHLjHwSPDUkZQ==', 'password', '', 'Main', 'Admin', 1, '2014-07-25 13:17:42', '2014-07-25 13:17:42'),
(3, 'username', 'ILFXvq6dth5Wc+RZ6CkqxMvSo2AeL58S7O1cdCMw13FJKv4mXqpmyU7FkLZkE711kU2ABbKSoT29n07VASTJxw==', 'password', 'email@yahoo.com', 'nume', 'prenume', 2, '0000-00-00 00:00:00', '2014-07-28 07:31:42'),
(10, 'sponsor', 'wgZADuTidmlUK46Co5qUb/f+X/Av3AKsFp55+1sohIpnEmFF4QXFK8bp6I6Rgj35g0ADH+S16aFFMk1y0DxTQQ==', 'password', 'sponsor@yahoo.com', 'nume', 'prenume', 3, '2014-07-29 05:30:47', '2014-07-29 08:30:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
