-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: May 16, 2021 at 08:49 PM
-- Server version: 8.0.22
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `kfz_db_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfz_db`
--

CREATE TABLE `kfz_db` (
  `id` bigint UNSIGNED NOT NULL,
  `kfz_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kfz_kreis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kfz_state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kfz_city` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kfz_db`
--

INSERT INTO `kfz_db` (`id`, `kfz_key`, `kfz_kreis`, `kfz_state`, `kfz_city`) VALUES
(1, 'A', 'Augsburg', 'Bayern', 'Augsburg'),
(2, 'AA', 'Ostalbkreis', 'Baden-Württemberg', 'Aalen'),
(3, 'AB', 'Aschaffenburg', 'Bayern', 'Aschaffenburg'),
(4, 'ABG', 'Altenburger', '	Thüringen', 'Altenburg'),
(5, 'ABI', 'Anhalt-Bitterfeld', 'Sachsen-Anhalt', '	Anhalt, BItterfeld'),
(6, 'AC', 'Aachen', '	Nordrhein-Westfalen', 'Aachen'),
(7, 'AE', 'Vogtlandkreis', '	Sachsen', 'Auerbach'),
(8, 'AH', 'Borken', '	Nordrhein-Westfalen', 'Ahaus'),
(9, 'AIB', 'München', '	Bayern', 'Aibling'),
(10, 'AIC', 'Aichach-Friedberg', '	Bayern', 'Aichach'),
(11, 'AK', 'Altenkirchen', '	Rheinland-Pfalz', 'Altenkirchen'),
(12, 'ALF', 'Hildesheim', '	Niedersachsen', 'Alfeld'),
(13, 'ALZ', 'Aschaffenburg', '	Bayern', 'Alzenau'),
(14, 'AM', 'Amberg,', '	Bayern', 'Amberg'),
(15, 'AN', 'Ansbach', '	Bayern', 'Ansbach'),
(16, 'ANA', 'Erzgebirgskreis', '	Sachsen', 'Annaberg'),
(17, 'ANG', 'Uckermark', '	Brandenburg', 'Angermünde'),
(18, 'ANK', 'Vorpommern-Greifswald', '	Mecklenburg-Vorpommern', 'Anklam'),
(19, 'AÖ', 'Altötting', '	Bayern', 'Altötting'),
(20, 'AP', 'Weimarer', '	Thüringen', 'Apolda'),
(21, 'APD', 'Weimarer', '	Thüringen', 'Apolda'),
(22, 'ARN', 'Ilm-Kreis', '	Thüringen', 'Arnstadt'),
(23, 'ART', 'Kyffhäuserkreis', '	Thüringen', 'Artern'),
(24, 'AS', 'Amberg-Sulzbach', '	Bayern', '	Amberg, Sulzbach'),
(25, 'ASL', 'Salzlandkreis', '	Sachsen-Anhalt', 'Aschersleben'),
(26, 'ASZ', 'Erzgebirgskreis', '	Sachsen', 'Aue, Schwarzenberg'),
(27, 'AT', 'Mecklenburgische', '	Mecklenburg-Vorpommern', 'Altentreptow'),
(28, 'AU', 'Erzgebirgskreis', '	Sachsen', 'Aue'),
(29, 'AUR', 'Aurich', 'Niedersachsen', 'Aurich'),
(30, 'AW', 'Ahrweiler', '	Rheinland-Pfalz', 'Ahrweiler'),
(31, 'AZ', 'Alzey-Worms', '	Rheinland-Pfalz', 'Alzey'),
(32, 'AZE', 'Anhalt-Bitterfeld', '	Sachsen-Anhalt', 'Anhalt-Zerbst'),
(33, 'B', 'Berlin', 'Berlin', 'Berlin'),
(34, 'BA', 'Bamberg', '	Bayern', 'Bamberg'),
(35, 'BAD', 'Baden-Baden', '	Baden-Württemberg', 'Baden-Baden'),
(36, 'BAR', 'Barnim', '	Brandenburg', 'Barnim'),
(37, 'BB', 'Böblingen', '	Baden-Württemberg', 'Böblingen'),
(38, 'BBG', 'Salzlandkreis', '	Sachsen-Anhalt', 'Bernburg'),
(39, 'BC', 'Biberach', '	Baden-Württemberg', 'Biberach'),
(40, 'BCH', 'Neckar-Odenwald-Kreis', '	Baden-Württemberg', 'Buchen'),
(41, 'BE', 'Warendorf', '	Nordrhein-Westfalen', 'Beckum'),
(42, 'BED', 'Mittelsachsen', '	Sachsen', 'Brand-Erbisdorf'),
(43, 'BER', 'Barnim', '	Brandenburg', 'Bernau'),
(44, 'BF', 'Steinfurt', '	Nordrhein-Westfalen', 'Burgsteinfurt'),
(45, 'BGD', 'Berchtesgadener', '	Bayern', 'Berchtesgaden'),
(46, 'BGL', 'Berchtesgadener', 'Bayern', 'Berchdesgadener Land'),
(47, 'BH', 'Ortenaukreis', '	Baden-Württemberg', 'Bühl'),
(48, 'BI', 'Bielefeld,', '	Nordrhein-Westfalen', 'Bielefeld'),
(49, 'BID', 'Marburg-Biedenkopf', '	Hessen', 'Biedenkopf'),
(50, 'BIN', 'Mainz-Bingen', '	Rheinland-Pfalz', 'Bingen'),
(51, 'BIR', 'Birkenfeld', '	Rheinland-Pfalz', 'Birkenfeld'),
(52, 'BIT', 'Eifelkreis', '	Rheinland-Pfalz', 'Bitburg'),
(53, 'BIW', 'Bautzen', '	Sachsen', 'Bischofswerda'),
(54, 'BK', 'Börde', '	Baden-Württemberg', 'Backnang'),
(55, 'BKS', 'Bernkastel-Wittlich', '	Rheinland-Pfalz', 'Bernkastel'),
(56, 'BL', 'Zollernalbkreis', '	Baden-Württemberg', 'Balingen'),
(57, 'BLB', 'Siegen-Wittgenstein', '	Nordrhein-Westfalen', 'Berleburg'),
(58, 'BLK', 'Burgenlandkreis', '	Sachsen-Anhalt', 'Burgenlandkreis'),
(59, 'BM', 'Rhein-Erft-Kreis', '	Nordrhein-Westfalen', 'Bergheim'),
(60, 'BN', 'Bonn,', '	Nordrhein-Westfalen', 'Bonn'),
(61, 'BNA', 'Leipzig', '	Sachsen', 'Borna'),
(62, 'BO', 'Bochum', '	Nordrhein-Westfalen', 'Bochum'),
(63, 'BÖ', 'Börde', '	Sachsen-Anhalt', 'Börde'),
(64, 'BOG', 'Straubing-Bogen', '	Bayern', 'Bogen'),
(65, 'BOH', 'Borken', '	Nordrhein-Westfalen', 'Bocholt'),
(66, 'BOR', 'Borken', 'Nordrhein-Westfalen', 'Borken'),
(67, 'BOT', 'Bottrop,', 'Nordrhein-Westfalen', 'Bottrop'),
(68, 'BRA', 'Wesermarsch', '	Niedersachsen', 'Brake'),
(69, 'BRB', 'Brandenburg', '	Brandenburg', '	Brandenburg'),
(70, 'BRG', 'Jerichower', 'Sachsen-Anhalt', 'Burg'),
(71, 'BRK', 'Bad', '	Bayern', 'Brückenau'),
(72, 'BRL', 'Goslar', '	Niedersachsen', 'Braunlage'),
(73, 'BRV', 'Rotenburg', '	Niedersachsen', 'Bremervörde'),
(74, 'BS', 'Braunschweig', '	Niedersachsen', 'Braunschweig'),
(75, 'BSB', 'Osnabrück', '	Niedersachsen', 'Bersenbrück'),
(76, 'BSK', 'Oder-Spree', '	Brandenburg', 'Beeskow'),
(77, 'BT', 'Bayreuth', '	Bayern', 'Bayreuth'),
(78, 'BTF', 'Anhalt-Bitterfeld', '	Sachsen-Anhalt', 'Bitterfeld'),
(79, 'BÜD', 'Wetteraukreis', '	Hessen', 'Büdingen'),
(80, 'BÜR', 'Paderborn', '	Nordrhein-Westfalen', 'Büren'),
(81, 'BUL', 'Amberg-Sulzbach', '	Bayern', 'Burglengenfeld'),
(82, 'BÜS', 'Konstanz,', 'Baden-Württemberg', 'Büsingen'),
(83, 'BÜZ', 'Rostock,', '	Mecklenburg-Vorpommern', 'Bützow'),
(84, 'BZ', 'Bautzen', '	Sachsen', 'Bautzen'),
(85, 'C', 'Chemnitz,', '	Sachsen', 'Chemnitz'),
(86, 'CA', 'Oberspreewald-Lausitz', '	Brandenburg', 'Calau'),
(87, 'CAS', 'Recklinghausen', '	Nordrhein-Westfalen', 'Castrop'),
(88, 'CB', 'Cottbus', '	Brandenburg', 'Cottbus'),
(89, 'CE', 'Celle', '	Niedersachsen', 'Celle'),
(90, 'CHA', 'Cham', '	Bayern', 'Cham'),
(91, 'CLP', 'Cloppenburg', 'Niedersachsen', 'Cloppenburg'),
(92, 'CLZ', 'Goslar', '	Niedersachsen', 'Clausthal-Zellerfeld'),
(93, 'CO', 'Zulassungsstelle', 'Bayern', 'Coburg'),
(94, 'COC', 'Cochem-Zell', '	Rheinland-Pfalz', 'Cochem'),
(95, 'COE', 'Coesfeld', '	Nordrhein-Westfalen', 'Coesfeld'),
(96, 'CR', 'Schwäbisch', '	Baden-Württemberg', 'Crailsheim'),
(97, 'CUX', 'Cuxhaven', '	Niedersachsen', 'Cuxhaven'),
(98, 'CW', 'Calw', '	Baden-Württemberg', 'Calw'),
(99, 'D', 'Düsseldorf,', '	Nordrhein-Westfalen', 'Düsseldorf'),
(100, 'DA', 'Darmstadt', '	Hessen', 'Darmstadt'),
(101, 'DAH', 'Dachau', '	Bayern', 'Dachau'),
(102, 'DAN', 'Lüchow-Dannenberg', '	Niedersachsen', 'Dannenberg'),
(103, 'DAU', 'Vulkaneifel', '	Rheinland-Pfalz', 'Daun'),
(104, 'DBR', 'Rostock,', '	Mecklenburg-Vorpommern', 'Doberan'),
(105, 'DD', 'Dresden,', '	Sachsen', 'Dresden'),
(106, 'DE', 'Dessau-Roßlau,', '	Sachsen-Anhalt', 'Dessau'),
(107, 'DEG', 'Deggendorf', 'Bayern', 'Deggendorf'),
(108, 'DEL', 'Delmenhorst,', '	Niedersachsen', 'Delmenhorst'),
(109, 'DGF', 'Dingolfing-Landau', '	Bayern', 'Dingolfing'),
(110, 'DH', 'Diepholz', '	Niedersachsen', 'Diepholz'),
(111, 'DI', 'Darmstadt-Dieburg', '	Hessen', 'Dieburg'),
(112, 'DIL', 'Lahn-Dill-Kreis', '	Hessen', 'Dillenburg'),
(113, 'DIN', 'Wesel', '	Nordrhein-Westfalen', 'Dinslaken'),
(114, 'DIZ', 'Rhein-Lahn-Kreis', '	Rheinland-Pfalz', 'Diez'),
(115, 'DKB', 'Ansbach', '	Bayern', 'Dinkelsbühl'),
(116, 'DL', 'Mittelsachsen', 'Sachsen', 'Döbeln'),
(117, 'DLG', 'Dillingen', '	Bayern', 'Dillingen'),
(118, 'DM', 'Mecklenburgische', '	Mecklenburg-Vorpommern', 'Demmin'),
(119, 'DN', 'Düren', '	Nordrhein-Westfalen', 'Düren'),
(120, 'DO', 'Dortmund,', '	Nordrhein-Westfalen', 'Dortmund'),
(121, 'DON', 'Donau-Ries', '	Bayern', 'Donauwörth'),
(122, 'DU', 'Duisburg,', '	Nordrhein-Westfalen', 'Duisburg'),
(123, 'DUD', 'Göttingen', '	Niedersachsen', 'Duderstadt'),
(124, 'DÜW', 'Bad Dürkheim', 'Rheinland-Pfalz', 'Dürkheim an der Weinstraße'),
(125, 'DW', 'Sächsische Schweiz-Osterzgebirge', '	Sachsen', 'Dippoldiswalde'),
(126, 'DZ', 'Nordsachsen', '	Sachsen', 'Delitzsch'),
(127, 'E', 'Essen,', '	Nordrhein-Westfalen', 'Essen'),
(128, 'EA', 'Eisenach,', '	Thüringen', 'Eisenach'),
(129, 'EB', 'Nordsachsen', '	Sachsen', 'Eilenburg'),
(130, 'EBE', 'Ebersberg', '	Bayern', 'Ebersberg'),
(131, 'EBN', 'Haßberge', '	Bayern', 'Ebern'),
(132, 'EBS', 'Bayreuth', '	Bayern', 'Ebermannstadt'),
(133, 'ECK', 'Rendsburg-Eckernförde', '	Schleswig-Holstein', 'Eckernförde'),
(134, 'ED', 'Erding', '	Bayern', 'Erding'),
(135, 'EE', 'Elbe-Elster', '	Brandenburg', 'Elbe, Elster'),
(136, 'EF', 'Erfurt,', '	Thüringen', 'Erfurt'),
(137, 'EG', 'Rottal-Inn', '	Bayern', 'Eggenfelden'),
(138, 'EH', 'Oder-Spree', '	Brandenburg', 'Eisenhüttenstadt'),
(139, 'EI', 'Eichstätt', '	Bayern', 'Elchstätt'),
(140, 'EIC', 'Eichsfeld', '	Thüringen', 'Eichsfeld'),
(141, 'EIL', 'Mansfeld-Südharz', '	Sachsen-Anhalt', 'Elsleben'),
(142, 'EIN', 'Northeim', '	Niedersachsen', 'Einbeck'),
(143, 'EIS', 'Saale-Holzland-Kreis', '	Thüringen', 'Eisenberg'),
(144, 'EL', 'Emsland', '	Niedersachsen', 'Emsland'),
(145, 'EM', 'Emmendingen', '	Baden-Württemberg', 'Emmendingen'),
(146, 'EMD', 'Emden,', '	Niedersachsen', 'Emden'),
(147, 'EMS', 'Rhein-Lahn-Kreis', '	Rheinland-Pfalz', 'Ems'),
(148, 'EN', 'Ennepe-Ruhr-Kreis', '	Nordrhein-Westfalen', 'Ennepe'),
(149, 'ER', 'Erlangen,', '	Bayern', 'Erlangen'),
(150, 'ERB', 'Odenwaldkreis', '	Hessen', 'Erbach'),
(151, 'ERH', 'Erlangen-Höchstadt', '	Bayern', 'Erlangen, Höchstadt'),
(152, 'ERK', 'Heinsberg', '	Nordrhein-Westfalen', 'Erkelenz'),
(153, 'ERZ', 'Erzgebirgskreis', '	Sachsen', 'Erzgebirge'),
(154, 'ES', 'Esslingen', '	Baden-Württemberg', 'Esslingen'),
(155, 'ESB', 'Amberg-Sulzbach', 'Bayern', 'Eschenbach'),
(156, 'ESW', 'Werra-Meißner-Kreis', '	Hessen', 'Eschwege'),
(157, 'EU', 'Euskirchen', '	Nordrhein-Westfalen', 'Euskirchen'),
(158, 'EW', 'Barnim', 'Brandenburg', 'Eberswalde'),
(159, 'F', 'Frankfurt/Main,', '	Hessen', 'Frankfurt'),
(160, 'FB', 'Wetteraukreis', '	Hessen', 'Friedberg'),
(161, 'FD', 'Fulda', '	Hessen', 'Fulda'),
(162, 'FDB', 'Aichach-Friedberg', 'Bayern', 'Friedberg'),
(163, 'FDS', 'Freudenstadt', '	Baden-Württemberg', 'Freudenstadt'),
(164, 'FEU', 'Ansbach', '	Bayern', 'Feuchtwangen'),
(165, 'FF', 'Frankfurt', '	Brandenburg', 'Frankfurt'),
(166, 'FFB', 'Fürstenfeldbruck', 'Bayern', 'Fürstenfeldbruck'),
(167, 'FG', 'Mittelsachsen', '	Sachsen', 'Freiberg'),
(168, 'FI', 'Elbe-Elster', '	Brandenburg', 'Finsterwalde'),
(169, 'FKB', 'Waldeck-Frankenberg', '	Hessen', 'Frankenberg'),
(170, 'FL', 'Flensburg', 'Schleswig-Holstein', 'Flensburg'),
(171, 'FLÖ', 'Mittelsachsen', '	Sachsen', 'Flöha'),
(172, 'FN', 'Bodenseekreis', '	Baden-Württemberg', 'Friedrichshafen'),
(173, 'FO', 'Forchheim', 'Bayern', 'Forchheim'),
(174, 'FOR', 'Spree-Neiße', 'Brandenburg', 'Forst'),
(175, 'FR', 'Freiburg', 'Baden-Württemberg', 'Freiburg'),
(176, 'FRG', 'Freyung-Grafenau', '	Bayern', 'Freyung, Grafenau'),
(177, 'FRI', 'Friesland', 'Niedersachsen', 'Friesland'),
(178, 'FRW', 'Märkisch-Oderland', '	Brandenburg', 'Freienwalde'),
(179, 'FS', 'Freising', '	Bayern', 'Freising'),
(180, 'FT', 'Frankenthal', 'Rheinland-Pfalz', 'Frankenthal'),
(181, 'FTL', 'Sächsische', 'Sachsen', 'Freital'),
(182, 'FÜ', 'Fürth', 'Bayern', 'Fürth'),
(183, 'FÜS', 'Ostallgäu', 'Bayern', 'Füssen'),
(184, 'FW', 'Oder-Spree', '	Brandenburg', 'Fürstenwalde'),
(185, 'FZ', 'Schwalm-Eder-Kreis', 'Hessen', 'Fritzlar'),
(186, 'G', 'Gera,', 'Thüringen', 'Gera'),
(187, 'GA', 'Altmarkkreis', 'Sachsen-Anhalt', 'Gardelegen'),
(188, 'GAN', 'Northeim', '	Niedersachsen', 'Gandersheim'),
(189, 'GAP', 'Garmisch-Partenkirchen', '	Bayern', '	Garmisch-Partenkirchen'),
(190, 'GC', 'Zwickau', 'Sachsen', 'Glauchau'),
(191, 'GD', 'Ostalbkreis', '	Baden-Württemberg', 'Gmünd'),
(192, 'GDB', 'Nordwestmecklenburg', '	Mecklenburg-Vorpommern', 'Gadebusch'),
(193, 'GE', 'Gelsenkirchen,', '	Nordrhein-Westfalen', 'Gelsenkirchen'),
(194, 'GEL', 'Kleve', 'Nordrhein-Westfalen', 'Geldern'),
(195, 'GEO', 'Haßberge', '	Bayern', 'Gerolzhofen'),
(196, 'GER', 'Germersheim', '	Rheinland-Pfalz', 'Germersheim'),
(197, 'GF', 'Gifhorn', '	Niedersachsen', 'Gifhorn'),
(198, 'GG', 'Groß-Gerau', 'Hessen', 'Groß-Gerau'),
(199, 'GHA', 'Leipzig', 'Sachsen', 'Geithain'),
(200, 'GHC', 'Wittenberg', '	Sachsen-Anhalt', 'Gräfenhainichen'),
(201, 'GI', 'Gießen', '	Hessen', 'Gießen'),
(202, 'GK', 'Heinsberg', '	Nordrhein-Westfalen', 'Geilenkirchen'),
(203, 'GL', 'Rheinisch-Bergischer', 'Nordrhein-Westfalen', 'Gladbach'),
(204, 'GLA', 'Recklinghausen', '	Nordrhein-Westfalen', 'Gladbeck'),
(205, 'GM', 'Oberbergischer', 'Nordrhein-Westfalen', 'Gummersbach'),
(206, 'GMN', 'Vorpommern-Rügen', 'Mecklenburg-Vorpommern', 'Grimmen'),
(207, 'GN', 'Main-Kinzig-Kreis', 'Gelnhausen', 'Hessen'),
(208, 'GNT', 'Jerichower', 'Sachsen-Anhalt', 'Genthin'),
(209, 'GÖ', 'Göttingen', '	Niedersachsen', 'Göttingen'),
(210, 'GOA', 'Rhein-Hunsrück-Kreis', '	Rheinland-Pfalz', 'Goar'),
(211, 'GOH', 'Rhein-Lahn-Kreis', '	Rheinland-Pfalz', 'Goarshausen'),
(212, 'GP', 'Göppingen', '	Baden-Württemberg', 'Göppingen'),
(213, 'GR', 'Görlitz', '	Sachsen', 'Görlitz'),
(214, 'GRA', 'Freyung-Grafenau', '	Bayern', 'Grafenau'),
(215, 'GRH', 'Meißen', 'Sachsen', 'Großenhain'),
(216, 'GRI', 'Rottal-Inn', 'Bayern', 'Grießbach'),
(217, 'GRM', 'Leipzig', '	Sachsen', 'Grimma'),
(218, 'GRZ', 'Greiz', 'Thüringen', 'Greiz'),
(219, 'GS', 'Goslar', 'Niedersachsen', 'Goslar'),
(220, 'GT', 'Gütersloh', 'Nordrhein-Westfalen', 'Gütersloh'),
(221, 'GTH', 'Gotha', '	Thüringen', 'Gotha'),
(222, 'GUB', 'Spree-Neiße', 'Brandenburg', 'Guben'),
(223, 'GÜ', 'Landkreis', 'Mecklenburg-Vorpommern', 'Güstrow'),
(224, 'GUN', 'Weißenburg-Gunzenhausen', 'Bayern', 'Gunzenhausen'),
(225, 'GV', 'Rhein-Kreis', 'Nordrhein-Westfalen', 'Grevenbroich'),
(226, 'GVM', 'Nordwestmecklenburg', 'Mecklenburg-Vorpommern', 'Grevesmühlen'),
(227, 'GW', 'Vorpommern-Greifswald', 'Mecklenburg-Vorpommern', 'Greifswald'),
(228, 'GZ', 'Günzburg', 'Bayern', 'Günzburg'),
(229, 'H', 'Hannover', 'Niedersachsen', 'Hannover'),
(230, 'HA', 'Hagen,', '	Nordrhein-Westfalen', 'Hagen'),
(231, 'HAB', 'Bad', '	Bayern', 'Hammelburg'),
(232, 'HAL', 'Halle,', '	Sachsen-Anhalt', 'Halle'),
(233, 'HAM', 'Hamm,', '	Nordrhein-Westfalen', 'Hamm'),
(234, 'HAS', 'Haßberge', '	Bayern', 'Hassfurt'),
(235, 'HB', 'Freie', 'Bremen', 'Hansestadt Bremen'),
(236, 'HBN', 'Hildburghausen', 'Thüringen', 'Hildburghausen'),
(237, 'HBS', 'Harz', 'Sachsen-Anhalt', 'Halberstadt'),
(238, 'HC', 'Mittelsachsen', '	Sachsen', 'Hainichen'),
(239, 'HCH', 'Freudenstadt', 'Baden-Württemberg', 'Hechingen'),
(240, 'HD', 'Heidelberg,', 'Baden-Württemberg', 'Heidelberg'),
(241, 'HDH', 'Heidenheim', '	Baden-Württemberg', 'Heidenheim'),
(242, 'HDL', 'Börde', '	Sachsen-Anhalt', 'Haldensleben'),
(243, 'HE', 'Helmstedt', 'Niedersachsen', 'Helmstedt'),
(244, 'HEB', 'Nürnberger', 'Bayern', 'Hersbruck'),
(245, 'HEF', 'Hersfeld-Rotenburg', 'Hessen', 'Hersfeld'),
(246, 'HEI', 'Dithmarschen', 'Schleswig-Holstein', 'Heide'),
(247, 'HER', 'Herne,', 'Nordrhein-Westfalen', 'Herne'),
(248, 'HET', 'Mansfeld-Südharz', '	Sachsen-Anhalt', 'Hettstedt'),
(249, 'HF', 'Herford', 'Nordrhein-Westfalen', 'Herford'),
(250, 'HG', 'Hochtaunuskreis', 'Hessen', 'Homburg'),
(251, 'HGN', 'Ludwigslust-Parchim', 'Mecklenburg-Vorpommern', 'Hagenow'),
(252, 'HGW', 'Hansestadt', 'Mecklenburg-Vorpommern', 'Hansestadt Greifswald'),
(253, 'HH', 'Freie', 'Hamburg', 'Hansestadt Hamburg'),
(254, 'HHM', 'Burgenlandkreis', 'Sachsen-Anhalt', 'Hohenmölsen'),
(255, 'HI', 'Hildesheim', 'Niedersachsen', 'Hildesheim'),
(256, 'HIG', 'Eichsfeld', 'Thüringen', 'Heiligenstadt'),
(257, 'HIP', 'Roth', '	Bayern', 'Hilpoltsheim'),
(258, 'HK', 'Heidekreis', '	Niedersachsen', 'Heidekreis'),
(259, 'HL', 'Hansestadt', 'Schleswig-Holstein', 'Hansestadt Lübeck'),
(260, 'HM', 'Hameln-Pyrmont', 'Niedersachsen', 'Hameln'),
(261, 'HMÜ', 'Göttingen', '	Niedersachsen', 'Hannemünden'),
(262, 'HN', 'Heilbronn', 'Baden-Württemberg', 'Heilbronn'),
(263, 'HO', 'Hof', 'Bayern', 'Hof'),
(264, 'HOG', 'Kassel', 'Hessen', 'Hofgeismar'),
(265, 'HOH', 'Haßberge', '	Bayern', 'Hofheim'),
(266, 'HOL', 'Holzminden', '	Niedersachsen', 'Holzminden'),
(267, 'HOM', 'Saarpfalz-Kreis', 'Saarland', 'Homburg'),
(268, 'HOR', 'Freudenstadt', '	Baden-Württemberg', 'Horb'),
(269, 'HÖS', 'Erlangen-Höchstadt', '	Bayern', 'Höchstadt'),
(270, 'HOT', 'Zwickau', 'Sachsen', 'Hohenstein'),
(271, 'HP', 'Bergstraße', '	Hessen', 'Heppenheim'),
(272, 'HR', 'Schwalm-Eder-Kreis', '	Hessen', 'Homberg'),
(273, 'HRO', 'Hansestadt', '	Mecklenburg-Vorpommern', 'Hansestadt Rostock'),
(274, 'HS', 'Heinsberg', 'Nordrhein-Westfalen', 'Heinsberg'),
(275, 'HSK', 'Hochsauerlandkreis', '	Nordrhein-Westfalen', 'Hochsauerlandkreis'),
(276, 'HST', 'Hansestadt', 'Mecklenburg-Vorpommern', 'Hansestadt Stralsund'),
(277, 'HU', 'Hanau', 'Hessen', 'Hanau'),
(278, 'HV', 'Stendal', '	Sachsen-Anhalt', 'Havelberg'),
(279, 'HVL', 'Havelland', '	Brandenburg', 'Havelland'),
(280, 'HWI', 'Hansestadt', 'Mecklenburg-Vorpommern', 'Hansestadt Wismar'),
(281, 'HX', 'Höxter', '	Nordrhein-Westfalen', 'Höxter'),
(282, 'HY', 'Bautzen', '	Sachsen', 'Hoyerswerda'),
(283, 'HZ', 'Harz', '	Sachsen-Anhalt', 'Harz'),
(284, 'IGB', 'St.', 'Saarland', 'Ingbert'),
(285, 'IK', 'Ilm-Kreis', '	Thüringen', 'Ilm-Kreis'),
(286, 'IL', 'Ilm-Kreis', '	Thüringen', 'Ilmenau'),
(287, 'ILL', 'Neu-Ulm', '	Bayern', 'Illertissen'),
(288, 'IN', 'Ingolstadt,', '	Bayern', 'Ingolstadt'),
(289, 'IZ', 'Steinburg', 'Schleswig-Holstein', 'Itzehoe'),
(290, 'J', 'Jena,', '	Thüringen', 'Jena'),
(291, 'JE', 'Wittenberg', '	Sachsen-Anhalt', 'Jessen'),
(292, 'JL', 'Jerichower', '	Sachsen-Anhalt', 'Jerichower Land'),
(293, 'JÜL', 'Düren', 'Nordrhein-Westfalen', 'Jülich'),
(294, 'K', 'Köln,', '	Nordrhein-Westfalen', 'Köln'),
(295, 'KA', 'Karlsruhe', 'Baden-Württemberg', 'Karlsruhe'),
(296, 'KB', 'Waldeck-Frankenberg', '	Hessen', 'Korbach'),
(297, 'KC', 'Kronach', '	Bayern', 'Kronach'),
(298, 'KE', 'Kempten', '	Bayern', 'Kempten'),
(299, 'KEH', 'Kelheim', 'Bayern', 'Kelheim'),
(300, 'KEL', 'Ortenaukreis', '	Baden-Württemberg', 'Kehl'),
(301, 'KEM', 'Bayreuth', 'Bayern', 'Kemnath'),
(302, 'KF', 'Kaufbeuren,', '	Bayern', 'Kaufbeuren'),
(303, 'KG', 'Bad Kissingen', '	Bayern', 'Kissingen'),
(304, 'KH', 'Bad Kreuznach', '	Rheinland-Pfalz', 'Kreuznach'),
(305, 'KI', 'Kiel', '	Schleswig-Holstein', 'Kiel'),
(306, 'KIB', 'Donnersbergkreis', '	Rheinland-Pfalz', 'Kirchheimbolanden'),
(307, 'KK', 'Viersen', '	Nordrhein-Westfalen', 'Kempen, Krefeld'),
(308, 'KL', 'Kaiserslautern', 'Rheinland-Pfalz', 'Kaiserslautern'),
(309, 'KLE', 'Kleve', '	Nordrhein-Westfalen', 'Kleve'),
(310, 'KLZ', 'Altmarkkreis', '	Sachsen-Anhalt', 'Klötze'),
(311, 'KM', 'Bautzen', '	Sachsen', 'Kamenz'),
(312, 'KN', 'Konstanz', 'Baden-Württemberg', 'Konstanz'),
(313, 'KO', 'Koblenz,', '	Rheinland-Pfalz', 'Koblenz'),
(314, 'KÖN', 'Rhön-Grabfeld', 'Bayern', 'Königshof'),
(315, 'KÖT', 'Anhalt-Bitterfeld', '	Sachsen-Anhalt', 'Köthen'),
(316, 'KÖZ', 'Cham', '	Bayern', 'Kötzting'),
(317, 'KR', 'Krefeld,', '	Nordrhein-Westfalen', 'Krefeld'),
(318, 'KRU', 'Günzburg', '	Bayern', 'Krumbach'),
(319, 'KS', 'Kassel', 'Hessen', 'Kassel'),
(320, 'KT', 'Kitzingen', '	Bayern', 'Kitzingen'),
(321, 'KU', 'Kulmbach', 'Bayern', 'Kulmbach'),
(322, 'KÜN', 'Hohenlohekreis', '	Baden-Württemberg', 'Künzelsau'),
(323, 'KUS', 'Kusel', '	Rheinland-Pfalz', 'Kusel'),
(324, 'KW', 'Dahme-Spreewald', '	Brandenburg', 'Königs Wusterhausen'),
(325, 'KY', 'Ostprignitz-Ruppin', '	Brandenburg', 'Kyritz'),
(326, 'KYF', 'Kyffhäuserkreis', '	Thüringen', 'Kyffhäuser'),
(327, 'L', 'Leipzig', 'Sachsen', 'Leipzig'),
(328, 'LA', 'Landshut', 'Bayern', 'Landshut'),
(329, 'LAN', 'Dingolfing-Landau', 'Bayern', 'Landau'),
(330, 'LAU', 'Nürnberger', '	Bayern', 'Lauf'),
(331, 'LB', 'Ludwigsburg', '	Baden-Württemberg', 'Ludwigsburg'),
(332, 'LBS', 'Saale-Orla-Kreis', '	Thüringen', 'Lobenstein'),
(333, 'LBZ', 'Ludwigslust-Parchim', '	Mecklenburg-Vorpommern', 'Lübz'),
(334, 'LC', 'Dahme-Spreewald', 'Brandenburg', 'Luckau'),
(335, 'LD', 'Landau', '	Rheinland-Pfalz', 'Landau'),
(336, 'LDK', 'Lahn-Dill-Kreis', 'Hessen', 'Lahn-Dill-Kreis'),
(337, 'LDS', 'Dahme-Spreewald', 'Brandenburg', 'Dahme-Spreewald'),
(338, 'LEO', 'Böblingen', 'Baden-Württemberg', 'Leonberg'),
(339, 'LER', 'Leer', 'Niedersachsen', 'Leer'),
(340, 'LEV', 'Leverkusen,', '	Nordrhein-Westfalen', 'Leverkusen'),
(341, 'LF', 'Altötting', 'Bayern', 'Laufen'),
(342, 'LG', 'Lüneburg', 'Niedersachsen', 'Lüneburg'),
(343, 'LH', 'Coesfeld,', '	Nordrhein-Westfalen', 'Lüdinghausen'),
(344, 'LI', 'Lindau', 'Bayern', 'Lindau'),
(345, 'LIB', 'Elbe-Elster', '	Brandenburg', 'Liebenwerda'),
(346, 'LIF', 'Lichtenfels', '	Bayern', 'Lichtenfels'),
(347, 'LIP', 'Lippe', '	Nordrhein-Westfalen', 'Lippe'),
(348, 'LL', 'Landsberg', 'Bayern', 'Landsberg am Lech'),
(349, 'LM', 'Limburg-Weilburg', 'Hessen', 'Limburg'),
(350, 'LN', 'Dahme-Spreewald', '	Brandenburg', 'Lübben'),
(351, 'LÖ', 'Lörrach', 'Baden-Württemberg', 'Lörrach'),
(352, 'LÖB', 'Görlitz', '	Sachsen', 'Löbau'),
(353, 'LOS', 'Oder-Spree', '	Brandenburg', '	 Oder-Spre'),
(354, 'LP', 'Soest', '	Nordrhein-Westfalen', 'Lippstadt'),
(355, 'LR', 'Ortenaukreis', '	Baden-Württemberg', 'Lahr'),
(356, 'LRO', 'Rostock,', '	Mecklenburg-Vorpommern', 'Rostock'),
(357, 'LSZ', 'Unstrut-Hainich-Kreis', '	Thüringen', 'Langensalza'),
(358, 'LU', 'Ludwigshafen', '	Rheinland-Pfalz', 'Ludwigshafen'),
(359, 'LÜN', 'Unna', '	Nordrhein-Westfalen', 'Lünen'),
(360, 'LUP', 'Ludwigslust-Parchim', '	Mecklenburg-Vorpommern', '	Ludwigslust, Parchim'),
(361, 'LWL', 'Ludwigslust-Parchim', '	Mecklenburg-Vorpommern', 'Ludwigslust'),
(362, 'M', 'München', 'Bayern', 'München'),
(363, 'MA', 'Mannheim,', '	Baden-Württemberg', 'Mannheim'),
(364, 'MAB', 'Erzgebirgskreis', '	Sachsen', 'Marienberg'),
(365, 'MAI', 'Kelheim,', 'Bayern', 'Mainburg'),
(366, 'MAK', 'Wunsiedel', '	Bayern', 'Marktrewitz'),
(367, 'MAL', 'Landshut', 'Bayern', 'Mallersdorf'),
(368, 'MB', 'Miesbach', '	Bayern', 'Miesbach'),
(369, 'MC', 'Mecklenburgische', 'Mecklenburg-Vorpommern', 'Malchin'),
(370, 'MD', 'Magdeburg,', '	Sachsen-Anhalt', 'Magdeburg'),
(371, 'ME', 'Mettmann', '	Nordrhein-Westfalen', 'Mettmann'),
(372, 'MED', 'Dithmarschen', '	Schleswig-Holstein', 'Meldorf'),
(373, 'MEG', 'Schwalm-Eder-Kreis', '	Hessen', 'Melsungen'),
(374, 'MEI', 'Meißen', '	Sachsen', 'Meißen'),
(375, 'MEK', 'Erzgebirgskreis', '	Sachsen', 'Mittlerer Erzgebirgekreis'),
(376, 'MEL', 'Osnabrück', '	Niedersachsen', 'Melle'),
(377, 'MER', 'Saalekreis', '	Sachsen-Anhalt', 'Merseburg'),
(378, 'MET', 'Rhön-Grabfeld', '	Bayern', 'Mellrichstadt'),
(379, 'MG', 'Mönchengladbach,', '	Nordrhein-Westfalen', 'Mönchengladbach'),
(380, 'MGH', 'Main-Tauber-Kreis', '	Baden-Württemberg', 'Mergentheim'),
(381, 'MGN', 'Schmalkalden-Meiningen', '	Thüringen', 'Meiningen'),
(382, 'MH', 'Mülheim', '	Nordrhein-Westfalen', 'Mülheim'),
(383, 'MHL', 'Unstrut-Hainich-Kreis', '	Thüringen', 'Mühlhausen'),
(384, 'MI', 'Minden-Lübbecke', '	Nordrhein-Westfalen', 'Minden'),
(385, 'MIL', 'Miltenberg', 'Bayern', 'Miltenberg'),
(386, 'MK', 'Märkischer', '	Nordrhein-Westfalen', 'Märkischer Kreis'),
(387, 'MKK', 'Main-Kinzig-Kreis', '	Hessen', 'Main-Kinzig-Kreis'),
(388, 'ML', 'Mansfeld-Südharz', '	Sachsen-Anhalt', 'Mansfelder Land'),
(389, 'MM', 'Memmingen,', '	Bayern', 'Memmingen'),
(390, 'MN', 'Unterallgäu', '	Bayern', 'Mindelheim'),
(391, 'MO', 'Wesel', '	Nordrhein-Westfalen', 'Moers'),
(392, 'MOD', 'Ostallgäu', 'Bayern', 'Marktoberdorf'),
(393, 'MOL', 'Märkisch-Oderland', '	Brandenburg', 'Märkisch-Oderland'),
(394, 'MON', 'Aachen,', '	Nordrhein-Westfalen', 'Monschau'),
(395, 'MOS', 'Neckar-Odenwald-Kreis', '	Baden-Württemberg', 'Monschau'),
(396, 'MQ', 'Saalekreis', '	Sachsen-Anhalt', '	Merseburg, Querfurt'),
(397, 'MR', 'Marburg-Biedenkopf', '	Hessen', 'Marburg'),
(398, 'MS', 'Münster,', 'Nordrhein-Westfalen', 'Münster'),
(399, 'MSE', 'Mecklenburgische', 'Mecklenburg-Vorpommern', 'Mecklenburgische Seenplatte'),
(400, 'MSH', 'Mansfeld-Südharz', '	Sachsen-Anhalt', 'Mansfeld, Südharz'),
(401, 'MSP', 'Main-Spessart', '	Bayern', 'Main, Spessart'),
(402, 'MST', 'Mecklenburgische', 'Mecklenburg-Vorpommern', 'Mecklenburg-Strelitz'),
(403, 'MTK', 'Main-Taunus-Kreis', '	Hessen', 'Main-Taunus-Kreis'),
(404, 'MTL', 'Leipzig', '	Sachsen', 'Muldental'),
(405, 'MÜ', 'Mühldorf', '	Bayern', 'Mühldorf'),
(406, 'MÜB', 'Bayreuth', 'Bayern', 'Münchberg'),
(407, 'MÜR', 'Mecklenburgische', 'Mecklenburg-Vorpommern', 'Müritz'),
(408, 'MW', 'Mittelsachsen', '	Sachsen', '	Mittweids'),
(409, 'MY', 'Mayen-Koblenz', '	Rheinland-Pfalz', 'Mayen'),
(410, 'MYK', 'Mayen-Koblenz', '	Rheinland-Pfalz', 'Mayen, Koblenz'),
(411, 'MZ', 'Mainz', 'Rheinland-Pfalz', 'Mainz'),
(412, 'MZG', 'Merzig-Wadern', 'Saarland', 'Merzig'),
(413, 'N', 'Nürnberg', 'Bayern', 'Nürnberg'),
(414, 'NAB', 'Amberg-Sulzbach', 'Bayern', 'Nabburg'),
(415, 'NAI', 'Hof', 'Bayern', 'Naila'),
(416, 'NAU', 'Havelland', 'Brandenburg', 'Nauen'),
(417, 'NB', 'Neubrandenburg', 'Mecklenburg-Vorpommern', 'Neubrandenburg'),
(418, 'ND', 'Neuburg-Schrobenhausen', 'Bayern', 'Neuburg an der Donau'),
(419, 'NDH', 'Nordhausen', '	Thüringen', 'Nordhausen'),
(420, 'NE', 'Rhein-Kreis', '	Nordrhein-Westfalen', 'Neuss'),
(421, 'NEA', 'Neustadt', 'Bayern', 'Neustadt an der Aisch'),
(422, 'NEB', 'Burgenlandkreis', '	Sachsen-Anhalt', 'Nebra'),
(423, 'NEC', 'Zulassungsstelle', 'Bayern', 'Neustadt bei Coburg'),
(424, 'NEN', 'Schwandorf', '	Bayern', 'Neunburg'),
(425, 'NES', 'Rhön-Grabfeld', 'Bayern', 'Neustadt an der Saale'),
(426, 'NEW', 'Neustadt', '	Bayern', 'Neustadt an der Waldnaab'),
(427, 'NF', 'Nordfriesland', 'Schleswig-Holstein', 'Nordfriesland'),
(428, 'NH', 'Sonneberg', 'Thüringen', 'Neuhaus'),
(429, 'NI', 'Nienburg', 'Niedersachsen', 'Nienburg'),
(430, 'NK', 'Neunkirchen', 'Saarland', 'Neunkirchen'),
(431, 'NM', 'Neumarkt', '	Bayern', 'Neumarkt'),
(432, 'NMB', 'Burgenlandkreis', '	Sachsen-Anhalt', 'Naumburg'),
(433, 'NMS', 'Neumünster', '	Schleswig-Holstein', 'Neumünster'),
(434, 'NÖ', 'Donau-Ries', '	Bayern', 'Nördlingen'),
(435, 'NOH', 'Grafschaft', 'Niedersachsen', 'Nordhorn'),
(436, 'NOL', 'Görlitz', 'Sachsen', '	Niederschlesische Oberausitz'),
(437, 'NOM', 'Northeim', '	Niedersachsen', 'Northeim'),
(438, 'NOR', 'Aurich', '	Niedersachsen', 'Norden'),
(439, 'NP', 'Ostprignitz-Ruppin', '	Brandenburg', 'Neuruppin'),
(440, 'NR', 'Neuwied', '	Rheinland-Pfalz', '	Neuwied am Rhein'),
(441, 'NT', 'Esslingen', '	Baden-Württemberg', 'Nürtingen'),
(442, 'NU', 'Neu-Ulm', '	Bayern', '	Neu-Ulm'),
(443, 'NVP', 'Vorpommern-Rügen', 'Mecklenburg-Vorpommern', 'Nordvorpommern'),
(444, 'NW', 'Neustadt', 'Rheinland-Pfalz', '	Neustadt an der Weinstraße'),
(445, 'NWM', 'Nordwestmecklenburg', 'Mecklenburg-Vorpommern', 'Nordwestmecklenburg'),
(446, 'NY', 'Görlitz', '	Sachsen', 'Niesky'),
(447, 'NZ', 'Mecklenburgische', 'Mecklenburg-Vorpommern', 'Neustrelitz'),
(448, 'OA', 'Oberallgäu', 'Bayern', 'Oberallgäu'),
(449, 'OAL', 'Ostallgäu', '	Bayern', 'Ostallgäu'),
(450, 'OB', 'Oberhausen,', 'Nordrhein-Westfalen', 'Oberhausen'),
(451, 'OBB', 'Miltenberg', 'Bayern', 'Obernburg'),
(452, 'OBG', 'Stendal', '	Sachsen-Anhalt', 'Osterburg'),
(453, 'OC', 'Börde', 'Sachsen-Anhalt', 'Oschersleben'),
(454, 'OCH', 'Würzburg', '	Bayern', 'Ochsenfurt'),
(455, 'OD', 'Stormarn', 'Schleswig-Holstein', 'Oldesloe'),
(456, 'OE', 'Olpe', 'Nordrhein-Westfalen', 'Olpe'),
(457, 'OF', 'Offenbach-am-Main', 'Hessen', 'Offenbach'),
(458, 'OG', 'Ortenaukreis', 'Baden-Württemberg', 'Offenburg'),
(459, 'OH', 'Ostholstein', '	Schleswig-Holstein', 'Ostholstheim'),
(460, 'OHA', 'Göttingen', 'Niedersachsen', 'Osterode am Harz'),
(461, 'ÖHR', 'Hohenlohekreis', '	Baden-Württemberg', 'Öhringen'),
(462, 'OHV', 'Oberhavel', 'Brandenburg', 'Oberhavel'),
(463, 'OHZ', 'Osterholz', 'Niedersachsen', 'Osterholz'),
(464, 'OK', 'Börde', '	Sachsen-Anhalt', 'Ohrekreis'),
(465, 'OL', 'Oldenburg(Oldenburg)', 'Niedersachsen', 'Oldenburg'),
(466, 'OP', 'Leverkusen,', 'Nordrhein-Westfalen', 'Opladen'),
(467, 'OPR', 'Ostprignitz-Ruppin', '	Brandenburg', '	Ostprignitz, Ruppin'),
(468, 'OS', 'Osnabrück', 'Niedersachsen', 'Osnabrück'),
(469, 'OSL', 'Oberspreewald-Lausitz', '	Brandenburg', '	Oberspreewald, Lausitz'),
(470, 'OVI', 'Schwandorf', 'Bayern', 'Oberviechtach'),
(471, 'OVL', 'Vogtlandkreis', '	Sachsen', 'Obervogtland'),
(472, 'OVP', 'Vorpommern-Greifswald', 'Mecklenburg-Vorpommern', 'Ostvorpommern'),
(473, 'OZ', 'Nordsachsen', '	Sachsen', 'Oschatz'),
(474, 'P', 'Potsdam', '	Brandenburg', '	Potsdam'),
(475, 'PA', 'Passau', 'Bayern', 'Passau'),
(476, 'PAF', 'Pfaffenhofen', 'Bayern', 'Pfaffenhofen'),
(477, 'PAN', 'Rottal-Inn', 'Bayern', 'Pfarrkirchen'),
(478, 'PAR', 'Kehlheim', 'Bayern', 'Parsberg'),
(479, 'PB', 'Paderborn', '	Nordrhein-Westfalen', 'Paderborn'),
(480, 'PCH', 'Ludwigslust-Parchim', '	Mecklenburg-Vorpommern', 'Parchim'),
(481, 'PE', 'Peine', '	Niedersachsen', 'Peine'),
(482, 'PEG', 'Bayreuth', 'Bayern', 'Pegnitz'),
(483, 'PF', 'Pforzheim,', 'Baden-Württemberg', 'Pforzheim,'),
(484, 'PI', 'Pinneberg', '	Schleswig-Holstein', 'Pinneberg'),
(485, 'PIR', 'Sächsische', 'Sachsen', 'Pirna'),
(486, 'PL', 'Vogtlandkreis', 'Sachsen', 'Plauen'),
(487, 'PLÖ', 'Plön', '	Schleswig-Holstein', 'Plön'),
(488, 'PM', 'Potsdam-Mittelmark', '	Brandenburg', 'Potsdam, Mittelmark'),
(489, 'PN', 'Saale-Orla-Kreis', 'Thüringen', 'Pößneck'),
(490, 'PR', 'Prignitz', '	Brandenburg', 'Prignitz'),
(491, 'PRÜ', 'Eifelkreis-Bitburg-Prüm', '	Rheinland-Pfalz', 'Prüm'),
(492, 'PS', 'Pirmasens', 'Rheinland-Pfalz', 'Pirmasens'),
(493, 'PW', 'Vorpommern-Greifswald', 'Mecklenburg-Vorpommern', 'Pasewalk'),
(494, 'PZ', 'Uckermark', '	Brandenburg', 'Prenzlau'),
(495, 'QFT', 'Saalekreis', '	Sachsen-Anhalt', 'Querfurt'),
(496, 'QLB', 'Harz', '	Sachsen-Anhalt', 'Quedlinburg'),
(497, 'R', 'Regensburg', 'Bayern', 'Regensburg'),
(498, 'RA', 'Rastatt', '	Baden-Württemberg', 'Württemberg'),
(499, 'RC', 'Vogtlandkreis', 'Sachsen', 'Reichenbach'),
(500, 'RD', 'Rendsburg-Eckernförde', '	Schleswig-Holstein', 'Rendsburg'),
(501, 'RDG', 'Vorpommern-Rügen', 'Mecklenburg-Vorpommern', '	Ribnitz-Damgarten'),
(502, 'RE', 'Recklinghausen', 'Nordrhein-Westfalen', 'Recklinghausen'),
(503, 'REG', 'Regen', 'Bayern', 'Regen'),
(504, 'REH', 'Hof', 'Bayern', 'Rehau'),
(505, 'REI', 'Berchtesgadener', '	Bayern', 'Reichenhall'),
(506, 'RG', 'Meißen', 'Sachsen', 'Riesa, Großenhain'),
(507, 'RH', 'Roth', 'Bayern', 'Roth'),
(508, 'RI', 'Schaumburg', 'Niedersachsen', 'Rinteln'),
(509, 'RID', 'Kelheim', '	Bayern', 'Riedenburg'),
(510, 'RIE', 'Meißen', 'Sachsen', 'Riesa'),
(511, 'RL', 'Mittelsachsen', 'Sachsen', 'Rochlitz'),
(512, 'RM', 'Mecklenburgische', 'Mecklenburg-Vorpommern', 'Röbel/Müritz'),
(513, 'RN', 'Havelland', 'Brandenburg', 'Rathenow'),
(514, 'RO', 'Rosenheim', 'Bayern', 'Rosenheim'),
(515, 'ROD', 'Cham', 'Bayern', 'Roding'),
(516, 'ROF', 'Hersfeld-Rotenburg', 'Hessen', '	Rotenburg an der Fulda'),
(517, 'ROK', 'Donnersbergkreis', '	Rheinland-Pfalz', 'Rockenhausen'),
(518, 'ROL', 'Kelheim', 'Bayern', '	Rottenburg an der Laaber'),
(519, 'ROS', 'Rostock,', '	Mecklenburg-Vorpommern', 'Rostock'),
(520, 'ROT', 'Ansbach', 'Bayern', 'Rothenburg ob der Tauber'),
(521, 'ROW', 'Rotenburg', 'Niedersachsen', 'Rotenburg (Wümme)'),
(522, 'RP', 'Rhein-Pfalz-Kreis', 'Rheinland-Pfalz', 'Rhein-Pfalz'),
(523, 'RS', 'Remscheid,', '	Nordrhein-Westfalen', 'Remscheid'),
(524, 'RSL', 'Dessau-Roßlau,', '	Sachsen-Anhalt', 'Rosslau'),
(525, 'RT', 'Reutlingen', 'Baden-Württemberg', 'Reutlingen'),
(526, 'RU', 'Saalfeld-Rudolstadt', 'Thüringen', 'Rudolstadt'),
(527, 'RÜD', 'Rheingau-Taunus', '	Hessen', 'Rüdesheim'),
(528, 'RÜG', 'Vorpommern-Rügen', 'Mecklenburg-Vorpommern', 'Rügen'),
(529, 'RV', 'Ravensburg', 'Baden-Württemberg', 'Ravensburg'),
(530, 'RW', 'Rottweil', '	Baden-Württemberg', 'Rottweil'),
(531, 'RZ', 'Herzogtum', '	Schleswig-Holstein', 'Ratzeburg'),
(532, 'S', 'Stuttgart,', '	Baden-Württemberg', 'Stuttgart,'),
(533, 'SAB', 'Trier-Saarburg', 'Rheinland-Pfalz', 'Saarburg'),
(534, 'SAD', 'Schwandorf', 'Bayern', 'Schwandorf'),
(535, 'SAN', 'Hof', 'Bayern', 'Stadtsteinach'),
(536, 'SAW', 'Altmarkkreis', 'Sachsen-Anhalt', 'Salzwedel'),
(537, 'SB', 'Saarbrücken', 'Saarland', 'Saarbrücken'),
(538, 'SBG', 'Vorpommern-Greifswald', '	Mecklenburg-Vorpommern', 'Strasburg'),
(539, 'SBK', 'Salzlandkreis', 'Sachsen-Anhalt', 'Schönebeck'),
(540, 'SC', 'Schwabach', 'Bayern', 'Schwabach'),
(541, 'SCZ', 'Saale-Orla-Kreis', 'Thüringen', 'Schleiz'),
(542, 'SDH', 'Kyffhäuserkreis', 'Thüringen', 'Sondershausen'),
(543, 'SDL', 'Stendal', 'Sachsen-Anhalt', 'Stendal'),
(544, 'SDT', 'Uckermark', 'Brandenburg', 'Schwedt'),
(545, 'SE', 'Segeberg', '	Schleswig-Holstein', 'Segeberg'),
(546, 'SEB', 'Sächsische Schweiz-Osterzgebirge', '	Sachsen', 'Sebnitz'),
(547, 'SEE', 'Märkisch-Oderland', 'Brandenburg', 'Seelow'),
(548, 'SEF', 'Neustadt', 'Bayern', 'Scheinfeld'),
(549, 'SEL', 'Wunsiedel', 'Bayern', 'Selb'),
(550, 'SFB', 'Oberspreewald-Lausitz', 'Brandenburg', 'Senftenburg'),
(551, 'SFT', 'Salzlandkreis', 'Sachsen-Anhalt', 'Straßfurt'),
(552, 'SG', 'Solingen,', '	Nordrhein-Westfalen', 'Solingen,'),
(553, 'SGH', 'Mansfeld-Südharz', '	Sachsen-Anhalt', 'Sangerhausen'),
(554, 'SHA', 'Schwäbisch Hall', 'Baden-Württemberg', 'Schwäbisch Hall'),
(555, 'SHG', 'Schaumburg', 'Niedersachsen', 'Stadthagen'),
(556, 'SHK', 'Saale-Holzland-Kreis', 'Thüringen', 'Saale-Holzland-Kreis'),
(557, 'SHL', 'Suhl,', '	Thüringen', 'Suhl'),
(558, 'SI', 'Siegen-Wittgenstein', '	Nordrhein-Westfalen', 'Siegen'),
(559, 'SIG', 'Sigmaringen', '	Baden-Württemberg', 'Sigmaringen'),
(560, 'SIM', 'Rhein-Hunsrück-Kreis', '	Rheinland-Pfalz', 'Simmern'),
(561, 'SK', 'Saalekreis', 'Sachsen-Anhalt', 'Saalekreis'),
(562, 'SL', 'Schleswig-Flensburg', 'Schleswig-Holstein', 'Schleswig'),
(563, 'SLE', 'Düren', 'Nordrhein-Westfalen', 'Schleiden'),
(564, 'SLF', 'Saalfeld-Rudolstadt', '	Thüringen', 'Saalfeld'),
(565, 'SLG', 'Ravensburg', 'Baden-Württemberg', 'Saulgau'),
(566, 'SLK', 'Salzlandkreis', '	Sachsen-Anhalt', 'Salzlandkreis'),
(567, 'SLN', 'Altenburger', 'Thüringen', 'Schmölln'),
(568, 'SLS', 'Saarlouis', 'Saarland', 'Saarlouis'),
(569, 'SLÜ', 'Main-Kinzig-Kreis', '	Hessen', 'Schlüchtern'),
(570, 'SLZ', 'Wartburgkreis', 'Thüringen', 'Salzungen'),
(571, 'SM', 'Schmalkalden-Meiningen', 'Thüringen', 'Schmalkalden'),
(572, 'SMÜ', 'Augsburg', '	Bayern', 'Schwabmünchen'),
(573, 'SN', 'Schwerin', 'Mecklenburg-Vorpommern', 'Schwerin'),
(574, 'SO', 'Soest', '	Nordrhein-Westfalen', 'Soest'),
(575, 'SOB', 'Neuburg-Schrobenhausen', '	Bayern', 'Schrobenhausen'),
(576, 'SOG', 'Weilheim-Schongau', 'Bayern', 'Schongau'),
(577, 'SOK', 'Saale-Orla-Kreis', 'Thüringen', '	Saale-Orla-Kreis'),
(578, 'SÖM', 'Sömmerda', '	Thüringen', 'Sömmerda'),
(579, 'SON', 'Sonneberg', '	Thüringen', 'Sonneberg'),
(580, 'SP', 'Speyer', 'Rheinland-Pfalz', 'Speyer'),
(581, 'SPB', 'Spree-Neiße', 'Brandenburg', 'Spremberg'),
(582, 'SPN', 'Spree-Neiße', '	Brandenburg', 'Spree, Neiße'),
(583, 'SR', 'Straubing', 'Bayern', 'Straubing'),
(584, 'SRB', 'Märkisch-Oderland', '	Brandenburg', 'Strausberg'),
(585, 'SRO', 'Saale-Holzland-Kreis', 'Thüringen', 'Stadtroda'),
(586, 'ST', 'Steinfurt', 'Nordrhein-Westfalen', 'Steinfurt'),
(587, 'STA', 'Starnberg', 'Bayern', 'Starnberg'),
(588, 'STB', 'Ludwigslust-Parchim', '	Mecklenburg-Vorpommern', 'Sternberg'),
(589, 'STD', 'Stade', '	Niedersachsen', 'Stade'),
(590, 'STE', 'Lichtenfels', '	Bayern', 'Staffelstein'),
(591, 'STL', 'Erzgebirgskreis', '	Sachsen', 'Stollberg'),
(592, 'STO', 'Sigmaringen', 'Baden-Württemberg', 'Sigmaringen'),
(593, 'SU', 'Rhein-Sieg-Kreis', 'Nordrhein-Westfalen', 'Siegburg'),
(594, 'SUL', 'Amberg-Sulzbach', '	Bayern', 'Sulzbach'),
(595, 'SÜW', 'Südliche Weinstraße', 'Rheinland-Pfalz', 'Südliche Weinstraße'),
(596, 'SW', 'Schweinfurt', 'Bayern', 'Schweinfurt'),
(597, 'SWA', 'Rheingau-Taunus-Kreis', '	Hessen', 'Schwalbach'),
(598, 'SY', 'Diepholz', 'Niedersachsen', 'Syke'),
(599, 'SZ', 'Salzgitter,', '	Niedersachsen', 'Salzgitter'),
(600, 'SZB', 'Erzgebirgskreis', '	Sachsen', 'Schwarzenberg'),
(601, 'TBB', 'Main-Tauber-Kreis', '	Baden-Württemberg', 'Tauberbischofsheim'),
(602, 'TDO', 'Nordsachsen', '	Sachsen', 'Torgau, Delitzsch, Oschatz'),
(603, 'TE', 'Steinfurt', '	Nordrhein-Westfalen', 'Tecklenburg'),
(604, 'TET', 'Rostock,', '	Mecklenburg-Vorpommern', 'Teterow'),
(605, 'TF', 'Teltow-Fläming', '	Brandenburg', '	Teltow, Fläming'),
(606, 'TG', 'Nordsachsen', 'Sachsen', 'Torgau'),
(607, 'TIR', 'Tirschenreuth', '	Bayern', 'Tirschenreuth'),
(608, 'TO', 'Nordsachsen', 'Sachsen', 'Torgau, Oschatz'),
(609, 'TÖL', 'Bad Tölz-Wolfratshausen', 'Bayern', 'Tölz'),
(610, 'TP', 'Uckermark', 'Brandenburg', 'Templin'),
(611, 'TR', 'Trier,', '	Rheinland-Pfalz', 'Trier,'),
(612, 'TS', 'Traunstein', 'Bayern', 'Traunstein'),
(613, 'TT', 'Bodenseekreis', 'Baden-Württemberg', 'Tettnang'),
(614, 'TÜ', 'Tübingen', '	Baden-Württemberg', 'Tübingen'),
(615, 'TUT', 'Tuttlingen', '	Baden-Württemberg', 'Tuttlingen'),
(616, 'UE', 'Uelzen', '	Niedersachsen', 'Uelzen'),
(617, 'ÜB', 'Ravensburg', '	Baden-Württemberg', 'Ravensburg'),
(618, 'UEM', 'Vorpommern-Greifswald', 'Mecklenburg-Vorpommern', 'Ueckermünde'),
(619, 'UER', 'Vorpommern-Greifswald', 'Mecklenburg-Vorpommern', 'Uecker-Randow'),
(620, 'UFF', 'Neustadt-an-der-Aisch-Bad-Windsheim', 'Bayern', 'Uffenheim'),
(621, 'UH', 'Unstrut-Hainich-Kreis', 'Thüringen', 'Unstrut, Hainich'),
(622, 'UL', 'Ulm', 'Baden-Württemberg', 'Ulm'),
(623, 'UM', 'Uckermark', 'Brandenburg', 'Uckermark'),
(624, 'UN', 'Unna', '	Nordrhein-Westfalen', 'Unna'),
(625, 'USI', 'Hochtaunuskreis', 'Hessen', 'Usingen'),
(626, 'V', 'Vogtlandkreis', '		Sachsen', '	Vogtland'),
(627, 'VAI', 'Ludwigsburg', 'Baden-Württemberg', 'Valhingen'),
(628, 'VB', 'Vogelsbergkreis', '	Hessen', 'Vogelsberg'),
(629, 'VEC', 'Vechta', '	Niedersachsen', 'Vechta'),
(630, 'VER', 'Verden', '	Niedersachsen', 'Verden'),
(631, 'VG', 'Vorpommern-Greifswald', 'Mecklenburg-Vorpommern', 'Vorpommern, Greifswald'),
(632, 'VIB', 'Landshut', 'Bayern', 'Vilsbiburg'),
(633, 'VIE', 'Viersen', '	Nordrhein-Westfalen', 'Viersen'),
(634, 'VIT', 'Regen', '	Bayern', 'Viechtach'),
(635, 'VK', 'Völklingen,', 'Saarland', 'Völklingen,'),
(636, 'VOH', 'Neustadt', 'Bayern', 'Vohenstrauß'),
(637, 'VR', 'Vorpommern-Rügen', 'Mecklenburg-Vorpommern', 'Vorpommern, Rügen'),
(638, 'VS', 'Schwarzwald-Baar-Kreis', 'Baden-Württemberg', '	Villingen-Schwenningen'),
(639, 'W', 'Wuppertal,', '	Nordrhein-Westfalen', 'Wuppertal'),
(640, 'WA', 'Waldeck-Frankenberg', 'Hessen', 'Waldeck'),
(641, 'WAF', 'Warendorf', 'Nordrhein-Westfalen', 'Warendorf'),
(642, 'WAK', 'Wartburgkreis', 'Thüringen', 'Wartburgkreis'),
(643, 'WAN', 'Herne,', 'Nordrhein-Westfalen', 'Wanne'),
(644, 'WAR', 'Höxter', 'Nordrhein-Westfalen', 'Warburg'),
(645, 'WAT', 'Bochum,', 'Nordrhein-Westfalen', 'Wattenscheid'),
(646, 'WB', 'Wittenberg', '	Sachsen-Anhalt', 'Wittenberg'),
(647, 'WBS', 'Eichsfeld', 'Thüringen', 'Worbis'),
(648, 'WDA', 'Zwickau', 'Sachsen', 'Werdau'),
(649, 'WE', 'Weimar', '	Thüringen', 'Weimar'),
(650, 'WEL', 'Limburg-Weilburg', '	Hessen', 'Weilburg'),
(651, 'WEN', 'Weiden', 'Bayern', 'Weiden'),
(652, 'WER', 'Augsburg', 'Bayern', 'Wertingen'),
(653, 'WES', 'Wesel', 'Nordrhein-Westfalen', 'Wesel'),
(654, 'WF', 'Wolfenbüttel', 'Niedersachsen', 'Wolfenbüttel'),
(655, 'WG', 'Ravensburg', '	Baden-Württemberg', 'Wangen'),
(656, 'WHV', 'Wilhelmshaven,', 'Niedersachsen', 'Wilhelmshaven'),
(657, 'WI', 'Wiesbaden', '	Hessen', 'Wiesbaden'),
(658, 'WIL', 'Bernkastel-Wittlich', 'Rheinland-Pfalz', 'Wittlich'),
(659, 'WIS', 'Nordwestmecklenburg', '	Mecklenburg-Vorpommern', 'Wismar'),
(660, 'WIT', 'Ennepe-Ruhr-Kreis', '	Nordrhein-Westfalen', 'Witten'),
(661, 'WIZ', 'Werra-Meißner-Kreis', 'Hessen', 'Witzenhausen'),
(662, 'WK', 'Ostprignitz-Ruppin', 'Brandenburg', 'Wittstock'),
(663, 'WL', 'Harburg', 'Niedersachsen', 'Winsen (Luhe)'),
(664, 'WLG', 'Vorpommern-Greifswald', '	Mecklenburg-Vorpommern', 'Wolgast'),
(665, 'WM', 'Weilheim-Schongau', 'Bayern', 'Weilheim'),
(666, 'WMS', 'Börde', 'Sachsen-Anhalt', 'Wolmirstedt'),
(667, 'WN', 'Rems-Murr-Kreis', '	Baden-Württemberg', 'Waiblingen'),
(668, 'WND', 'St.Wendel', '	Saarland', 'Wendel'),
(669, 'WO', 'Worms,', 'Rheinland-Pfalz', 'Worms,'),
(670, 'WOB', 'Wolfsburg', '	Niedersachsen', 'Wolfsburg'),
(671, 'WOH', 'Kassel', '	Hessen', 'Wolfhagen'),
(672, 'WOL', 'Freudenstadt', '	Baden-Württemberg', 'Wolfach'),
(673, 'WOR', 'Bad-Tölz-Wolfratshausen', 'Bayern', 'Wolfratshausen'),
(674, 'WOS', 'Freyung-Grafenau', '	Bayern', 'Wolfstein'),
(675, 'WR', 'Harz', '	Sachsen-Anhalt', 'Werningerode'),
(676, 'WRN', 'Mecklenburgische', 'Mecklenburg-Vorpommern', 'Waren'),
(677, 'WS', 'Mühldorf-am-Inn', 'Bayern', 'Wasserburg'),
(678, 'WSF', 'Burgenlandkreis', 'Sachsen-Anhalt', 'Weissenfels'),
(679, 'WST', 'Ammerland', 'Niedersachsen', 'Westerstede'),
(680, 'WSW', 'Görlitz', '	Sachsen', 'Weisswasser'),
(681, 'WT', 'Waldshut', 'Baden-Württemberg', 'Waldshut'),
(682, 'WTL', 'Osnabrück', '	Niedersachsen', 'Wittlage'),
(683, 'WTM', 'Wittmund', 'Niedersachsen', 'Wittmund'),
(684, 'WÜ', 'Würzburg', '	Bayern', 'Würzburg'),
(685, 'WUG', 'Weißenburg-Gunzenhausen', 'Bayern', 'Weißenburg'),
(686, 'WÜM', 'Cham', '	Bayern', 'Waldmünchen'),
(687, 'WUN', 'Wunsiedel', 'Bayern', 'Wunsiedel'),
(688, 'WUR', 'Leipzig', '	Sachsen', 'Wurzen'),
(689, 'WW', 'Westerwald', '	Rheinland-Pfalz', 'Westerwald'),
(690, 'WZ', 'Wetzlar,', '	Hessen', 'Wetzlar'),
(691, 'WZL', 'Börde', '	Sachsen-Anhalt', 'Wanzleben'),
(692, 'Z', 'Zwickau', 'Sachsen', 'Zwickau'),
(693, 'ZE', 'Anhalt-Bitterfeld', '	Sachsen-Anhalt', 'Zerbst'),
(694, 'ZEL', 'Cochem-Zell', '	Rheinland-Pfalz', 'Zell'),
(695, 'ZI', 'Görlitz', '	Sachsen', 'Zittau'),
(696, 'ZIG', 'Schwalm-Eder-Kreis', '	Hessen', 'Zlegenhain'),
(697, 'ZP', 'Erzgebirgskreis', 'Sachsen', 'Zschopau'),
(698, 'ZR', 'Greiz', 'Thüringen', 'Zeulenroda'),
(699, 'ZW', 'Zweibrücken', 'Rheinland-Pfalz', 'Zweibrücken'),
(700, 'ZZ', 'Burgenlandkreis', 'Sachsen-Anhalt', 'Zeitz');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_10_081128_create_kfz_db_table', 2),
(5, '2021_05_12_081152_add_state_and_city_to_kfz_d_b', 3),
(6, '2021_05_16_164638_create_favorites_table', 3),
(7, '2021_05_16_181458_create_notes_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `kfz_db_id` bigint UNSIGNED NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `kfz_db_id`, `note`, `created_at`, `updated_at`) VALUES
(2, 350, 'Hier Könnte ihre andere Notiz Stehen!', '2021-05-16 20:17:17', '2021-05-16 20:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_kfz_db_id_foreign` (`kfz_db_id`);

--
-- Indexes for table `kfz_db`
--
ALTER TABLE `kfz_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_kfz_db_id_foreign` (`kfz_db_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfz_db`
--
ALTER TABLE `kfz_db`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_kfz_db_id_foreign` FOREIGN KEY (`kfz_db_id`) REFERENCES `kfz_db` (`id`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_kfz_db_id_foreign` FOREIGN KEY (`kfz_db_id`) REFERENCES `kfz_db` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
