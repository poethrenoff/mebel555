-- phpMyAdmin SQL Dump
-- version 
-- http://www.phpmyadmin.net
--
-- Хост: u191495.mysql.masterhost.ru
-- Время создания: Авг 22 2012 г., 18:58
-- Версия сервера: 5.0.92
-- Версия PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u191495_5`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `admin_title` varchar(255) NOT NULL default '',
  `admin_login` varchar(255) NOT NULL default '',
  `admin_password` varchar(255) NOT NULL default '',
  `admin_email` varchar(255) NOT NULL default '',
  `admin_active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_title`, `admin_login`, `admin_password`, `admin_email`, `admin_active`) VALUES
(1, 'Главный администратор', 'admin', '4a4efb845d5853252759ece8af2566f2', 'admin@example.ru', 1),
(2, 'Контент-менеджер', 'manager', 'ff713b442c67518d26d3215c21e9cd1d', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE IF NOT EXISTS `admin_role` (
  `admin_id` int(11) NOT NULL default '0',
  `role_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_role`
--

INSERT INTO `admin_role` (`admin_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `block`
--

DROP TABLE IF EXISTS `block`;
CREATE TABLE IF NOT EXISTS `block` (
  `block_id` int(11) NOT NULL auto_increment,
  `block_page` int(11) NOT NULL default '0',
  `block_module` int(11) NOT NULL default '0',
  `block_title` varchar(255) NOT NULL default '',
  `block_area` int(11) NOT NULL default '0',
  PRIMARY KEY  (`block_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `block`
--

INSERT INTO `block` (`block_id`, `block_page`, `block_module`, `block_title`, `block_area`) VALUES
(7, 3, 1, 'О компании', 2),
(8, 3, 3, 'Главное меню', 5),
(9, 4, 1, 'Контакты', 2),
(10, 4, 3, 'Главное меню', 5),
(11, 1, 1, 'Социальные сети', 7),
(12, 3, 1, 'Социальные сети', 8),
(13, 4, 1, 'Социальные сети', 8),
(14, 1, 1, 'Контентная область', 9),
(15, 2, 1, '404 ошибка', 2),
(16, 2, 3, 'Главное меню', 5),
(17, 2, 1, 'Социальные сети', 8),
(18, 5, 4, 'Расчет стоимости мебели', 2),
(19, 5, 3, 'Главное меню', 5),
(20, 5, 1, 'Социальные сети', 8),
(21, 6, 5, 'Выбор мебели по сайту фабрики', 2),
(22, 6, 3, 'Главное меню', 5),
(23, 6, 1, 'Социальные сети', 8),
(24, 7, 6, 'Наши работы', 11),
(25, 7, 3, 'Главное меню', 12),
(26, 7, 1, 'Социальные сети', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `block_param`
--

DROP TABLE IF EXISTS `block_param`;
CREATE TABLE IF NOT EXISTS `block_param` (
  `block` int(11) NOT NULL default '0',
  `param` int(11) NOT NULL default '0',
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `block_param`
--

INSERT INTO `block_param` (`block`, `param`, `value`) VALUES
(9, 1, '4'),
(8, 5, '3'),
(8, 4, '1'),
(7, 1, '3'),
(15, 1, '2'),
(11, 1, '5'),
(10, 4, '1'),
(10, 5, '3'),
(12, 1, '5'),
(13, 1, '5'),
(14, 1, '6'),
(16, 4, '1'),
(16, 5, '3'),
(17, 1, '5'),
(22, 5, '3'),
(19, 5, '3'),
(19, 4, '1'),
(20, 1, '5'),
(22, 4, '1'),
(23, 1, '5'),
(25, 5, '3'),
(25, 4, '1'),
(26, 1, '5');

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `brand_id` int(11) NOT NULL auto_increment,
  `brand_title` varchar(255) NOT NULL default '',
  `brand_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`brand_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=153 COMMENT='InnoDB free: 4096 kB' AUTO_INCREMENT=1235 ;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_title`, `brand_url`) VALUES
(1, '4 MARIANI', 'http://www.i4mariani.it/'),
(2, 'A.BERNAZZOLI', 'http://www.armadibernazzoli.it/'),
(3, 'ABBONDINTERNI ', 'http://www.abbondinterni.it/'),
(4, 'ABC CUCINE', 'http://www.abccucine.com/'),
(5, 'ABDON Y LUCAS', 'http://www.abdonylucas.com/'),
(6, 'ABHIKA', 'http://www.abhika.it/'),
(7, 'ACERBIS', 'http://www.acerbisinternational.com/'),
(8, 'ACRILA', 'http://www.acrila.com/'),
(9, 'ADONIS PAULI', 'http://adonispauli.com/'),
(10, 'ADRENALINA', 'http://www.adrenalina.it/'),
(11, 'ADRIANA LOHMANN', 'http://www.adrianalohmann.com/'),
(12, 'AERRE CUCINE', 'http://www.aerrecucine.it/'),
(13, 'AGAPE', 'http://www.agapedesign.it/'),
(14, 'AGORA-EDONE', 'http://www.edonedesign.it/'),
(15, 'AGOSTINI', 'http://www.agostinimobili.com/'),
(16, 'AGRESTI', 'http://www.agresti.com/'),
(17, 'AKANTO', 'http://www.akanto.com/'),
(18, 'ALAIN SAIN JOANIS', 'http://www.elegance2003.com/'),
(19, 'ALBANILIGHTING', 'http://www.albanilighting.com/'),
(20, 'ALBED', 'http://www.albed.it/'),
(21, 'ALBERTA SALOTTI', 'http://www.albertasalotti.it/'),
(22, 'ALBIFLEX', 'http://www.albiflex.it/'),
(23, 'ALBUM', 'http://www.album.it/'),
(24, 'ALDO MOLETTA', 'http://www.aldomoletta.com/'),
(25, 'ALESSI', 'http://www.alessi.com/'),
(26, 'ALF', 'http://www.alf.it/'),
(27, 'ALIAS', 'http://www.aliasdesign.it/'),
(28, 'ALIVAR', 'http://www.alivar.com/'),
(29, 'ALLEDLINE', 'http://www.alledline.com/'),
(30, 'ALPE', 'http://www.alpe.it/'),
(31, 'ALPES-INOX', 'http://www.alpesinox.com/'),
(32, 'ALPUCH', 'http://www.alpuch.com/'),
(33, 'ALT LUACIALTERNATIVE', 'http://www.altlucialternative.com/'),
(34, 'ALTA CORTE', 'http://www.altacorte.it/'),
(35, 'ALTA, ARMOBIL', 'http://www.arros.it/'),
(36, 'ALTAMODA', 'http://www.altamodaitalia.it/'),
(37, 'ALTONI', 'http://altonileather.it/'),
(38, 'ALTRENOTTI', 'http://www.altrenotti.it/'),
(39, 'AMELI HOME', 'http://www.amelihome.it/'),
(40, 'AMELI SEDIE', 'http://www.amelisedie.it/'),
(41, 'ANDREA FANFANI', 'http://www.andreafanfani.it/'),
(42, 'ANDREU WORLD', 'http://www.andreuworld.com/'),
(43, 'ANDREW MARTIN', 'http://www.andrewmartin.co.uk/'),
(44, 'ANGELA BIZZARRI', 'http://www.angelabizzarri.com/'),
(45, 'ANGELO CAPPELLINI', 'http://www.angelocappellini.com/'),
(46, 'ANGELO MONZIO COMPAGNONI', 'http://www.angelomonziocompagnoni.it/'),
(47, 'ANNE GELBARD', 'http://www.annegelbard.com/'),
(48, 'ANNIDALE COLOMBO', 'http://www.annibalecolombo.com/'),
(49, 'ANTARES CUCINA', 'http://www.antarescucine.com/'),
(50, 'ANTICA BASSANO', 'http://anticabassano.com/'),
(51, 'ANTICA TAPEZZERIA DUCALE', 'http://www.tappezzeria-ducale.it/'),
(52, 'ANTICO ?', 'http://www.anticoantico.com/'),
(53, 'ANTICO BORGO', 'http://www.borgoanticocucine.it/'),
(54, 'ANTIDIVA', 'http://www.antidiva.it/'),
(55, 'ANTOINE MOTARD', 'http://www.motard-meubles.com/'),
(56, 'ANTONELLI MAORAVIO', 'http://www.alterlight.com.ua/'),
(57, 'ANTONELLOITALIA', 'http://www.antonelloitalia.it/'),
(58, 'AR ARREDAMNETIARARREDAMENTI.IT', 'http://www.ararredamenti.it/'),
(59, 'ARBI', 'http://www.arbi.it/'),
(60, 'ARCA', 'http://www.arcamobili.it/'),
(61, 'ARCARI', 'http://www.arcarimobili.it/'),
(62, 'ARCARIARREDAMENTI', 'http://www.arcariarredamenti.it/'),
(63, 'ARCHEOS', 'http://www.elitis.ru/firmdetail/115'),
(64, 'ARCTIC DESIGN', 'http://www.arctic-designs.com/'),
(65, 'ARDEMIRR', 'http://www.interiorsfromspain.com/'),
(66, 'AR-DUE', 'http://www.elitis.ru/firmdetail/81'),
(67, 'ARESLINE', 'http://www.aresline.com/'),
(68, 'ARIZZI', 'http://www.arizzi.it/'),
(69, 'ARKETIPO', 'http://www.arketipo.com/'),
(70, 'ARMANDO RHO', 'http://www.rhoarmando.com/'),
(71, 'ARMANI/DADA', 'http://www.armanidada.com/'),
(72, 'ARMENTANI MURANO GLASS', 'http://www.armentanimuranoglass.it/'),
(73, 'ARPER', 'http://www.arper.com/'),
(74, 'ARRBEN', 'http://www.arrex.it/'),
(75, 'ARREDAMENTI ABBONDI', 'http://www.abbondi.it/'),
(76, 'ARREDO LUCE', 'http://www.arredoeluce.it/'),
(77, 'ARREX', 'http://www.arrex.it/'),
(78, 'ARRITAL CUCINE SPA', 'http://www.arritalcucine.com/'),
(79, 'ART ET FLORITUDE', 'http://www.artetfloritude.fr/'),
(80, 'ARTALDA', 'http://www.elitis.ru/firmdetail/1339'),
(81, 'ARTE ANTIQUA', 'http://www.arteantiqua.it/'),
(82, 'ARTE BROTTO', 'http://www.artebrotto.com/'),
(83, 'ARTE PARQUET', 'http://www.parquetart.it/'),
(84, 'ARTE VENEZIANA', 'http://www.arteveneziana.com/'),
(85, 'ARTEA', 'http://www.artea.com/'),
(86, 'ARTEK', 'http://www.artek.fi/'),
(87, 'ARTES MOBLE', 'http://www.artesmoble.com/'),
(88, 'ARTEX', 'http://www.artexstile.it/'),
(89, 'ARTHESI', 'http://www.arthesi.it/'),
(90, 'ARTHUR BRETT', 'http://www.arthurbrett.com/'),
(91, 'ARTIFICIA', 'http://www.artificiailluminazione.it/'),
(92, 'AR-TRE', 'http://www.ar-tre.it/'),
(93, 'ARTURO ESCUDERO', 'http://www.arturoescudero.com/'),
(94, 'ARVE STYLE', 'http://www.artexstile.it/'),
(95, 'ASHLEY WILDE', 'http://www.ashleywildegroup.com/'),
(96, 'ASNAGHI', 'http://www.asnaghi.it/'),
(97, 'ASTER CUCINE', 'http://www.astercucine.it/'),
(98, 'ASTOR MOBILI', 'http://www.astor.it/'),
(99, 'ASTRA', 'http://www.elitis.ru/redirect_site/www.astra.it'),
(100, 'ATELIER DE BROU', 'http://www.atelierbrou.com/'),
(101, 'ATENA', 'http://www.atena-it.com/'),
(102, 'AUGUSTO GARAVAGLIA', 'http://www.augustogaravaglia.com/'),
(103, 'AURELIANO TOSO', 'http://aurelianotoso1938.com/'),
(104, 'AURORA', 'http://www.auroracucine.it/'),
(105, 'AV MAZEGA', 'http://www.avmazzega.com/'),
(106, 'AXIA', 'http://www.axiabath.it/'),
(107, 'AXIL', 'http://www.axil.it/'),
(108, 'AXOLIGHT', 'http://www.axolight.it/'),
(109, 'B&B ITALIA', 'http://www.bebitalia.it/'),
(110, 'B.D. BARSELONA DESIGN', 'http://www.bdbarcelona.com/'),
(111, 'BABINI', 'http://www.babini.com/'),
(112, 'BACCI STILE', 'http://www.baccistile.com/'),
(113, 'BACOS', 'http://www.bacos.it/'),
(114, 'BAGA\\PATRIZIA GURGAN', 'http://www.baga.it/'),
(115, 'BAGNO PIU', 'http://www.bagnopiu.it/'),
(116, 'BAGNO&ASSOCIATI', 'http://www.bagnoeassociati.it/'),
(117, 'BAKER', 'http://www.bakerfurniture.com/'),
(118, 'BAKOKKOGROUP', 'http://www.bakokkogroup.it/'),
(119, 'BALLANCIN', 'http://www.ballancin.it/'),
(120, 'BALZAROTTI', 'http://www.balzarotti.net/'),
(121, 'BAMAR', 'http://www.bamar.com/'),
(122, 'BAMAX', 'http://www.bamax.it/'),
(123, 'BANCI', 'http://www.banci.it/'),
(124, 'BARAUSSE', 'http://www.barausse.com/'),
(125, 'BARJ BUZZONI', 'http://www.barjbuzzoni.it/'),
(126, 'BARNEBY GATES', 'http://www.barnebygates.com/'),
(127, 'BARNINI OSEO', 'http://www.barninioseo.it/'),
(128, 'BAROVIER&TOSO', 'http://www.barovier.com/'),
(129, 'BASSI FRATELLI', 'http://www.bassiflli.it/'),
(130, 'BASTEX', 'http://www.bastex.it/'),
(131, 'BATISTELLA', 'http://www.battistella.it/'),
(132, 'BAU ANGELO E FIGLIE SNC', 'http://www.elitis.ru/firmdetail/1986'),
(133, 'BAUXT', 'http://www.bauxt.com/'),
(134, 'BBB', 'http://www.bbbemmebonacina.com/'),
(135, 'BEAUDESERT', 'http://beaudesert.co.uk/'),
(136, 'BEAUMONT & FLETCHER', 'http://www.beaumontandfletcher.com/'),
(137, 'BELCOR', 'http://www.belcor.it/'),
(138, 'BELLART', 'http://www.bellart.it/'),
(139, 'BELLIGOTTI', 'http://www.belligotti.it/'),
(140, 'BELLO SEDIE', 'http://www.bellosedie.com/'),
(141, 'BENEDETTI', 'http://www.benedettimobili.com/'),
(142, 'BERDONDINI', 'http://www.berdondini.it/'),
(143, 'BERNARD SIGUER', 'http://www.siguier.fr/'),
(144, 'BERNAZZOLI', 'http://www.bernazzoli.com/'),
(145, 'BERNINI', 'http://www.bernini.it/'),
(146, 'BERTELE MOBILI', 'http://www.bertelemobili.it/'),
(147, 'BERTOLOTTO PORTE', 'http://www.bertolottoporte.com/'),
(148, 'BESANA', 'http://www.elitis.ru/firmdetail/973'),
(149, 'BEST & LLOYD', 'http://www.bestandlloyd.com/'),
(150, 'BETAMOBILI', 'http://www.betamobili.it/'),
(151, 'BEVAN FUNNEL', 'http://www.bevan-funnell.co.uk/'),
(152, 'BI.GI.BI', 'http://www.elitis.ru/firmdetail/4083'),
(153, 'BIANCHINI', 'http://www.bianchini.it/'),
(154, 'BIANCHINI&CAPPONI', 'http://www.bianchinicapponi.it/'),
(155, 'BIBA SALOTTI', 'http://www.bibasalotti.com/'),
(156, 'BIEFBI', 'http://www.biefbi.com/'),
(157, 'BILLO E PALLINABILLOEPALLINA.IT', 'http://www.elitis.ru/firmdetail/4083'),
(158, 'BIMAX', 'http://www.bimax.biz/'),
(159, 'BIREX', 'http://www.birex.it/'),
(160, 'BISAZZABISAZZA.COM', 'http://www.bisazza.com/'),
(161, 'BITOSSI', 'http://www.bitossiluciano.it/'),
(162, 'BITOSSI LUCIANO', 'http://www.bitossiluciano.it/'),
(163, 'BIZZOTTO', 'http://www.bizzottomobili.it/'),
(164, 'BK ITALIA', 'http://www.bicappa.com/'),
(165, 'BL MOBILI', 'http://www.blmobili.it/'),
(166, 'BLANC D''IVOIR', 'http://www.blancdivoire.com/'),
(167, 'BLENDWORTH', 'http://www.blendworth.co.uk/'),
(168, 'BLER NATURE', 'http://www.bleunature.com/'),
(169, 'BLUMARINE', 'http://www.dondi.it/'),
(170, 'BM STYLE', 'http://www.bmstyle.it/'),
(171, 'BMB', 'http://www.bmb.be/'),
(172, 'BMP MOBILI', 'http://www.bmpmobili.it/'),
(173, 'BOCA DO LOBO', 'http://www.bocadolobo.com/'),
(174, 'BOCCI', 'http://bocci.ca/'),
(175, 'BODEMA', 'http://www.bodema.it/'),
(176, 'BOISERIE ITALIA ', 'http://www.boiserieitalia.com/'),
(177, 'BOLUCE', 'http://www.boluce.com/'),
(178, 'BOLZAN', 'http://www.bolzanletti.it/'),
(179, 'BOMIA', 'http://www.bomia.fr/'),
(180, 'BONALDO', 'http://www.bonaldo.it/'),
(181, 'BONTEMPI CASA', 'http://www.bontempi.it/'),
(182, 'BORDERLINE', 'http://www.borderlinefabrics.com/'),
(183, 'BORDIGNON CAMILLO', 'http://www.bordignoncamillo.it/'),
(184, 'BORDONI LEATHERS', 'http://www.bordonileathers.com/'),
(185, 'BORGHI', 'http://www.borghi.com/'),
(186, 'BOSA', 'http://www.equipe.ru/firmdetail/2983'),
(187, 'BOSAL', 'http://www.bosal.it/'),
(188, 'BOUNTY', 'http://www.neoform.it/'),
(189, 'BOVA', 'http://www.bovabypbl.it/'),
(190, 'BPA', 'http://www.bpainternational.com/'),
(191, 'BRABD VAN EGMOND', 'http://www.brandvanegmond.com/'),
(192, 'BRADLEY', 'http://www.bradleyfurniture.co.uk/'),
(193, 'BRAGA', 'http://www.braga.it/'),
(194, 'BRALCO', 'http://www.bralco.it/'),
(195, 'BRETZ', 'http://www.bretz.de/'),
(196, 'BRF', 'http://www.brfcolors.com/'),
(197, 'BRIANFORM', 'http://www.brianform.it/'),
(198, 'BRIGITTE FORESTIER', 'http://www.brigitte-forestier.fr/'),
(199, 'BRITISH TRIMMINGS', 'http://www.britishtrimmings.com/'),
(200, 'BROCANTIQUE', 'http://www.brocantique.de/'),
(201, 'BRONZES DE FRANCE', 'http://www.bronzesdefrance.com/'),
(202, 'BRUHL', 'http://www.bruehl.com/'),
(203, 'BRUMBERG', 'http://www.brumberg.com/'),
(204, 'BRUMMEL CUCINE', 'http://www.brummelcucine.ru/'),
(205, 'BRUN DE VIAN TIRAM', 'http://www.brundeviantiran.com/'),
(206, 'BRUNO PIOMBINI', 'http://www.piombini.it/'),
(207, 'BRUNO ZAMPA', 'http://www.brunozampa.it/'),
(208, 'BRUNSCHWIG & FILS', 'http://www.brunschwig.com/'),
(209, 'BRYONY ALEXANDER', 'http://www.bryonyalexander.com/'),
(210, 'BTC', 'http://www.btcinternational.it/'),
(211, 'BUCALOSSI', 'http://www.bucalossi.it/'),
(212, 'BULO', 'http://www.bulo.be/'),
(213, 'BULTHAUP', 'http://www.bulthaup.com/'),
(214, 'BUSATO', 'http://www.busattomobili.it/'),
(215, 'BUSNELLI', 'http://www.busnelli.it/'),
(216, 'BUSNELLI ADAMO', 'http://www.busnelliadamo.it/'),
(217, 'BYLAW', 'http://www.bylaw.co.uk/'),
(218, 'C&C MILANO', 'http://www.cec-milano.com/'),
(219, 'CA’D’ORO', 'http://www.cadoromobili.it/'),
(220, 'CABAS', 'http://www.cabas.it/'),
(221, 'CACCARO', 'http://www.caccaro.com/'),
(222, 'CADORE', 'http://www.cadorearredamenti.it/'),
(223, 'CA''D''ORO', 'http://www.cadoromobili.it/'),
(224, 'CAFISSI', 'http://www.cafissi.com/'),
(225, 'CAIMI BREVETTI             ', 'http://www.caimi.com/'),
(226, 'CALAMANDREI CHIANINI', 'http://www.calamandreiechianini.com/'),
(227, 'CALLESELLA', 'http://www.callesella.com/'),
(228, 'CALLIGARIS', 'http://www.calligaris.it/'),
(229, 'CALOI', 'http://www.caloi.com/'),
(230, 'CAMEL GROUP', 'http://www.camelgroup.com/'),
(231, 'CANELLA', 'http://www.mueblescanella.com/'),
(232, 'CANGINI & TUCCI', 'http://www.canginietucci.com/'),
(233, 'CANTALUPPI SRL', 'http://www.cantaluppimobili.it/'),
(234, 'CANTIERO', 'http://www.cantiero.com/'),
(235, 'CANTORI', 'http://www.cantori.it/'),
(236, 'CA''ONORAI', 'http://www.caonorai.it/'),
(237, 'CAPO D''OPERA', 'http://www.capodopera.it/'),
(238, 'CAPPELLETTI', 'http://www.cappellettisrl.com/'),
(239, 'CAPPELLINI', 'http://www.cappellini.it/'),
(240, 'CAPPELLINI INTAGLI', 'http://www.cappelliniintagli.com/'),
(241, 'CARL HANSEN & SON', 'http://www.carlhansen.com/'),
(242, 'CARLESSO', 'http://www.ceramichecarlesso.com/'),
(243, 'CARLO TRAVIGIANTI DI RICCARDO', 'http://www.equipe.ru/firmdetail/2645'),
(244, 'CARMA CUCINE', 'http://www.carmacucine.it/'),
(245, 'CAROTI', 'http://www.caroti.it/'),
(246, 'CARPANELLI', 'http://www.carpanelli.com/'),
(247, 'CARPANESI', 'http://www.carpanesehome.com/'),
(248, 'CARPANI F.LLI SNC', 'http://www.carpanisalotti.it/'),
(249, 'CARRE', 'http://www.carre.be/'),
(250, 'CARTEI', 'http://www.equipe.ru/firmdetail/1447'),
(251, 'CASA BELLA COLLECTION', 'http://www.casabella.com/'),
(252, 'CASA DESIGN', 'http://casadesigninc.com/'),
(253, 'CASA DESIGN', 'http://casadesigninc.com/'),
(254, 'CASA NOBILE', 'http://www.casanobile.it/'),
(255, 'CASA PAGODA', 'http://www.casapagoda.com/'),
(256, 'CASA ZETA', 'http://www.casazeta.it/'),
(257, 'CASAMANIA', 'http://www.casamaniabyfrezza.it/'),
(258, 'CASAMILANO', 'http://www.casamilanohome.com/'),
(259, 'CASPANI TINO GROUP', 'http://www.caspanitino.it/'),
(260, 'CASPRINI GRUPPO INDUSTRILAE', 'http://www.casprini.it/'),
(261, 'CASSINA', 'http://www.cassina.com/'),
(262, 'CASTELLAN', 'http://www.castellan.it/'),
(263, 'CASTELLO', 'http://www.castello.net/'),
(264, 'CATELLANI&SMITH', 'http://www.catellanismith.com/'),
(265, 'CATTELAN ITALIA', 'http://www.cattelanitalia.com/'),
(266, 'CAVA', 'http://www.cavadivani.it/'),
(267, 'CECCOTTI', 'http://www.ceccotticollezioni.it/'),
(268, 'CECCOTTI', 'http://www.ceccotticollezioni.it/'),
(269, 'CECIL BEATON FABRICS', 'http://www.cecilbeatonfabrics.com/'),
(270, 'CELATO RITO', 'http://www.celatorito.it/'),
(271, 'CENEDESE', 'http://www.cenedese.com/'),
(272, 'CENTURY FURNITURE', 'http://www.centuryfurniture.com/'),
(273, 'CEPPI STYLE', 'http://www.ceppistyle.it/'),
(274, 'CERAMICA GLOBO', 'http://www.ceramicaglobo.com/'),
(275, 'CERASA', 'http://www.cerasa.it/'),
(276, 'CERRUTI BALERI ITALIA', 'http://www.cerrutibaleri.com/'),
(277, 'CESAR ARREDAMENTI', 'http://www.cesar.it/'),
(278, 'CHADDER', 'http://www.chadder.com/'),
(279, 'CHARLES BURGER', 'http://www.charles-burger.fr/'),
(280, 'CHASE ERWIN', 'http://www.chase-erwin.com/'),
(281, 'CHELINI', 'http://www.chelini.com/'),
(282, 'CHELINI', 'http://www.chelini.it/'),
(283, 'CHELSOM', 'http://www.chelsom.co.uk/'),
(284, 'CHESTER', 'http://www.dicosur.com/'),
(285, 'CHEVILLOTTE', 'http://www.chevillotte.com/'),
(286, 'CHIAVEGATO', 'http://www.chiavegato.com/'),
(287, 'CHICCA ORLANDO', 'http://www.chiccaorlando.com/'),
(288, 'CHRISTINE KROENCKE', 'http://www.christinekroencke.net/'),
(289, 'CHRISTOPHER FARR', 'http://christopherfarr.com/'),
(290, 'CHRISTOPHER GUY', 'http://www.christopherguy.com/'),
(291, 'CHTIOUI MEUBLES', 'http://www.meubles-chtioui.com/'),
(292, 'CIA INTERNATIONAL', 'http://www.ciainternational.it/'),
(293, 'CIACCI', 'http://www.ciacci.com/'),
(294, 'CIERRE', 'http://www.cierreimbottiti.com/'),
(295, 'CINOVA', 'http://www.cinova.it/'),
(296, 'CIS-SALOTTI', 'http://www.cis-salotti.it/'),
(297, 'CITTERIO', 'http://www.citterio.com/'),
(298, 'CIULLI', 'http://www.ciulli.it/'),
(299, 'CL ITALIA', 'http://www.clitalia.com/'),
(300, 'CLASSICON', 'http://www.classicon.com/'),
(301, 'CLAUCAMA', 'http://www.claucama.com/'),
(302, 'CLAUDIABARBARI', 'http://www.claudiabarbari.it/'),
(303, 'CLAUDIO SAONCELLA', 'http://www.mobilisaoncella.it/'),
(304, 'CLEI', 'http://www.clei.it/'),
(305, 'CLEMENT ET LISE', 'http://www.clementetlise.com/'),
(306, 'CLETO MUNARI', 'http://www.cletomunari.com/'),
(307, 'CLEVER', 'http://www.clever.it/'),
(308, 'CODUTTI', 'http://www.codutti.it/'),
(309, 'COIM', 'http://www.coim.com/'),
(310, 'COLICO DESIGN', 'http://www.colicodesign.com/'),
(311, 'COLLECCION ALEXANDRA', 'http://www.coleccionalexandra.com/'),
(312, 'COLLECTION PIERRE', 'http://www.collectionpierre.com/'),
(313, 'COLLINET ', 'http://www.collinet-sieges.fr/'),
(314, 'COLOMBINI', 'http://www.colombinicasa.com/'),
(315, 'COLOMBO MOBILI', 'http://www.colombomobili.com/'),
(316, 'COLOMBO STILE', 'http://www.colombostile.it/'),
(317, 'COMPAB', 'http://www.gruppoatma.it/'),
(318, 'COMPOSIT', 'http://www.composit.it/'),
(319, 'COMPREX', 'http://www.comprex.it/'),
(320, 'COMPTOIR DE FAMILLE', 'http://www.comptoirdefamille.net/'),
(321, 'CONFORMA DESIGN', 'http://www.conformadesign.com/'),
(322, 'CONSORZIO CABIATE', 'http://www.cabiate.it/'),
(323, 'CONTARDI LIGHTING', 'http://www.contardi-italia.com/'),
(324, 'CONTEMPO', 'http://www.contempo.com/'),
(325, 'COPAT', 'http://www.copat.it/'),
(326, 'COPENLAMP', 'http://www.copenlamp.com/'),
(327, 'COR', 'http://www.cor.de/'),
(328, 'CORAZZIN RATTAN', 'http://www.corazzin-rattan.it/'),
(329, 'CORSO F.LLI SRL', 'http://www.equipe.ru/firmdetail/3756'),
(330, 'CORTE ZARI', 'http://www.cortezari.eu/'),
(331, 'COSTA', 'http://www.andcosta.it/'),
(332, 'COSTANTINI PIETRO', 'http://www.costantinipietro.com/'),
(333, 'COUNTRY CORNER', 'http://www.countrycorner.fr/'),
(334, 'CREANDO', 'http://www.creando.com/'),
(335, 'CREAZIONI', 'http://www.stile-creazioni.com/'),
(336, 'CROCE', 'http://www.croce.it/'),
(337, 'CTS', 'http://www.ctssalotti.com/'),
(338, 'CTS SALOTTI', 'http://www.ctssalotti.com/'),
(339, 'D.B.ARTE', 'http://www.dbarte.it/'),
(340, 'D’ANGELI', 'http://www.dangeli.it/'),
(341, 'DADA', 'http://www.dadaweb.it/'),
(342, 'DADA/ARMANI', 'http://www.armanidada.com/'),
(343, 'DAFRE''', 'http://www.alf.it/'),
(344, 'DAL CIN', 'http://www.dalcin.com/'),
(345, 'DALL''AGNESE', 'http://www.dallagnese.it/'),
(346, 'DANESE MILANO', 'http://www.danesemilano.com/'),
(347, 'DANTI', 'http://www.dantidivani.it/'),
(348, 'D''AURIA GROUP', 'http://www.dauriagroup.com/'),
(349, 'DAVID GUNDRY', 'http://www.davidgundry.com/'),
(350, 'DAVID SEYFRIED', 'http://www.davidseyfried.com/'),
(351, 'DAVIDSON LONDON', 'http://www.davidsonlondon.com/'),
(352, 'DAX SIERRA', 'http://www.dax-sierra.com/'),
(353, 'DBF', 'http://www.dbfcantu.com/'),
(354, 'DE BAGGIS', 'http://www.debaggis.it/'),
(355, 'DE BREUYN', 'http://www.debreuyn.de/'),
(356, 'DE CASTELLI', 'http://www.decastelli.it/'),
(357, 'DE FERRANTI', 'http://www.deferranti.com/'),
(358, 'DE MAJO', 'http://www.demajoilluminazione.com/'),
(359, 'DE MANICOR', 'http://www.demanincor.it/'),
(360, 'DE PADOVA', 'http://www.depadova.it/'),
(361, 'DE ROSSO                       ', 'http://www.derosso.it/'),
(362, 'DE SEDE', 'http://www.desede.ch/'),
(363, 'DEAR KIDS', 'http://www.dearkids.it/'),
(364, 'DECOBEL', 'http://www.decobel.it/'),
(365, 'DECORED', 'http://www.decored.com/'),
(366, 'DEDON', 'http://www.dedon.de/'),
(367, 'DEKO', 'http://www.deko.it/'),
(368, 'DEKORA', 'http://www.dekora.com/'),
(369, 'DELLA VALENTINA OFFICE', 'http://www.dvoffice.com/'),
(370, 'DELTA SALOTTI', 'http://www.deltasalotti.it/'),
(371, 'DERNIER & HAMLYN', 'http://www.dernier-hamlyn.com/'),
(372, 'DESIDERI LINEA BAGNO', 'http://www.lineabagni.it/'),
(373, 'DESIGN FORUM', 'http://www.designforum.it/'),
(374, 'DESIREE', 'http://www.gruppoeuromobil.com/'),
(375, 'DESSIN FOURNIR', 'http://www.rosecumming.com/'),
(376, 'DESTOMBES', 'http://www.destombes.fr/'),
(377, 'DEVINA NAIS', 'http://www.devinanais.com/'),
(378, 'DIALMA BROWN', 'http://www.dialmabrown.it/'),
(379, 'DIAMANTI & DOMENICONI', 'http://diamantinidomeniconi.it/'),
(380, 'DIE COLLECTION', 'http://www.die-collection.de/'),
(381, 'DILIDDO E PEREGO-DOMINO\\MODA''', 'http://www.diliddoeperego.it/'),
(382, 'DISVALMA', 'http://www.disvalma.com/'),
(383, 'DITRE ITALIA', 'http://www.ditreitalia.com/'),
(384, 'DL D?COR', 'http://www.dldecor.it/'),
(385, 'DMK', 'http://www.dmkdesign.it/'),
(386, 'DOCMOBILI', 'http://www.docmobili.eu/'),
(387, 'DOIMO CITY LINE', 'http://www.doimocityline.com/'),
(388, 'DOIMO CUCINE', 'http://www.doimo.it/'),
(389, 'DOIMO DESIGN', 'http://www.equipe.ru/firmdetail/3784'),
(390, 'DOIMO IDEA', 'http://www.doimoidea.it/'),
(391, 'DOIMO MATERASSI', 'http://www.doimomaterassi.it/'),
(392, 'DOIMO PASSPORT', 'http://www.doimopassport.com/'),
(393, 'DOIMO SOFAS', 'http://www.doimosofas.com/'),
(394, 'DOIMODECOR', 'http://www.doimodecor.it/'),
(395, 'DOIMOSALOTTI', 'http://www.doimosalotti.it/'),
(396, 'DOLCEFARNIENTE', 'http://www.dolcefarniente.com/'),
(397, 'DOLFI', 'http://www.dolfi.it/'),
(398, 'DOMINGO SALOTTI', 'http://www.domingo.it/'),
(399, 'DOMODINAMICA', 'http://www.domodinamica.com/'),
(400, 'DOMUS MOBILE', 'http://www.domusmobili.it/'),
(401, 'DONATI', 'http://donati.fr/'),
(402, 'DONATI ARMADI', 'http://www.donatiarmadi.it/'),
(403, 'DONATI&GASPERINI', 'http://www.donatiegasperini.com/'),
(404, 'DONGHIA', 'http://www.donghia.com/'),
(405, 'DOOR2000', 'http://www.door-2000.com/'),
(406, 'DRAENERT', 'http://www.draenert.de/'),
(407, 'DRAGONS OF WALTON STREET', 'http://www.dragonsofwaltonstreet.com/'),
(408, 'DREAM LIGHT', 'http://www.dream-light.com.ua/'),
(409, 'DRIADE', 'http://www.driade.com/'),
(410, 'DRIFTMEIER', 'http://www.driftmeier.de/'),
(411, 'DUE EFFE', 'http://www.due-effe.com/'),
(412, 'DURESTA', 'http://www.duresta.com/'),
(413, 'DUVIVIER', 'http://www.duvivier.fr/'),
(414, 'DV HOME COLLECTION', 'http://www.dvhomecollection.com/'),
(415, 'EBANART', 'http://www.ebanart.it/'),
(416, 'EBANISTERIA BACCI', 'http://www.ebanisteriabacci.com/'),
(417, 'ECHEVARRIA', 'http://www.echevarria.fr/'),
(418, 'ECO&CO', 'http://www.ecoandco.it/'),
(419, 'EDILCO', 'http://www.edilco.it/'),
(420, 'EDRA', 'http://www.edra.com/'),
(421, 'EDWARD HARPLEY', 'http://www.edwardharpley.com/'),
(422, 'EFFEITALIA', 'http://www.effeitalia.com/'),
(423, 'EFFUSIONIDILUCE', 'http://www.effusionidiluce.com/'),
(424, 'EGGERSMANN', 'http://www.eggersmann.com/'),
(425, 'EGO', 'http://www.egozeroventiquattro.it/'),
(426, 'EICHHOLTZ', 'http://www.eichholtz.com/'),
(427, 'ELAM', 'http://www.elam.com/'),
(428, 'ELE RICO'' HOME', 'http://www.elericohome.it/'),
(429, 'ELISA MOBILI SRL', 'http://www.elisamobili.it/'),
(430, 'ELITE', 'http://www.elite.it/'),
(431, 'ELITE INTERIOR', 'http://www.eliteinterior.it/'),
(432, 'ELITE INTERIOR SRL', 'http://www.eliteinterior.it/'),
(433, 'ELLE SALOTTI', 'http://www.ellesalotti.it/'),
(434, 'ELLEDUE', 'http://www.elleduearredamenti.com/'),
(435, 'ELMAR', 'http://www.elmarcucine.com/'),
(436, 'EMERGROUP', 'http://www.emergroup.it/'),
(437, 'EMILY TODHUNTER', 'http://www.todhunterearle.com/'),
(438, 'EMMEBI', 'http://www.emmebidesign.com/'),
(439, 'EMMEMOBILI', 'http://www.emmemobili.it/'),
(440, 'EMU', 'http://me.emu.it/'),
(441, 'ENCEMBLE LONDON', 'http://www.ensemblelondon.com/'),
(442, 'ENEA', 'http://www.eneadesign.com/'),
(443, 'ENNEREV', 'http://www.ennerev.it/'),
(444, 'ENRICO PELLIZZONI', 'http://www.enricopellizzoni.com/'),
(445, 'EPOCANTICA', 'http://www.epocantica.it/'),
(446, 'EPOCART', 'http://www.epocart.it/'),
(447, 'EPOQUE', 'http://www.epoquesalotti.com/'),
(448, 'EP-PORTE', 'http://www.ep-porte.it/'),
(449, 'EQUIPEOPENTRADE', 'http://www.equipeopentrade.it/'),
(450, 'ERIC CUSTER METROPOLITAN', 'http://www.erickuster.com/'),
(451, 'ERIC JOERGENSEN', 'http://www.erik-joergensen.com/'),
(452, 'ERNEST MENARD', 'http://www.ernest-menard.fr/'),
(453, 'ERNESTOMEDA', 'http://www.ernestomeda.ru/'),
(454, 'ERWAN BOULLOUD', 'http://www.erwanboulloud.com/'),
(455, 'ESSEPI IMBOTTITI', 'http://www.essepi-imbottiti.it/'),
(456, 'ESTEL HOME BY ESTEL PARTNERS', 'http://www.estel.com/'),
(457, 'ESTELLER FUSTER', 'http://www.estellerfuster.com/'),
(458, 'ETS FELIX MONGE', 'http://www.felix-monge.fr/'),
(459, 'EUROLAMPART', 'http://www.eurolampart.it/'),
(460, 'EUROLUCE', 'http://www.euroluce.com.au/'),
(461, 'EUROMOBIL', 'http://www.gruppoeuromobil.com/'),
(462, 'EUROPA DESIGN&FURNITURE', 'http://www.europadesignfurniture.com/'),
(463, 'EUROPEO', 'http://www.europeo.it/'),
(464, 'EUROPOL', 'http://www.arsmebel.ru/click.php?http://www.europolsl.com'),
(465, 'EUROSEDIA', 'http://www.eurosedia.com/'),
(466, 'EUROSTILE', 'http://www.eurostyle-kitchen.com/'),
(467, 'EXEDRA', 'http://www.exedraluxury.it/'),
(468, 'EZIO BELLOTTI', 'http://www.bellotti.it/'),
(469, 'F.B.A.I.', 'http://www.fbai.it/'),
(470, 'F.LLI BIANCHINI', 'http://www.bianchini.it/'),
(471, 'F.M. BOTTEGA D''ARTE', 'http://www.fmarte.it/'),
(472, 'FABER', 'http://www.fabermobili.com/'),
(473, 'FACONDINI', 'http://www.enzofacondini.it/'),
(474, 'FAER AMBIENTI', 'http://www.faer.it/'),
(475, 'FALA GROUP', 'http://www.fala.it/'),
(476, 'FALEGNAMERIA', 'http://www.falegnameria1946.it/'),
(477, 'FALEGNAMI', 'http://www.falegnami.it/'),
(478, 'FALMA ITALIA', 'http://www.falmaitalia.it/'),
(479, 'FANTONI', 'http://www.fantoni.it/'),
(480, 'FAOMA', 'http://www.faoma.it/'),
(481, 'FARMO CAMERETTE', 'http://www.fabermobili.com/'),
(482, 'FARROW & BALL', 'http://www.farrow-ball.com/'),
(483, 'FASEM', 'http://www.fasem.it/'),
(484, 'FAST', 'http://www.fastgarden.it/'),
(485, 'FAUSTIG', 'http://faustig.su/'),
(486, 'FBL', 'http://www.fbl.it/'),
(487, 'FEBAL', 'http://www.febal.com/'),
(488, 'FEG', 'http://www.gruppofeg.com/'),
(489, 'FELICEROSSI', 'http://www.felicerossi.it/'),
(490, 'FENDI', 'http://www.fendicasa.it/'),
(491, 'FERLEA', 'http://www.ferlea.com/'),
(492, 'FERRETTI FERRETTI', 'http://www.ferrettieferretti.it/'),
(493, 'FIAM', 'http://www.fiam.it/'),
(494, 'FIAMBERTI', 'http://www.fiamberti.it/'),
(495, 'FIMES', 'http://www.fimes.com/'),
(496, 'FINE ART', 'http://www.fineartlamps.com/'),
(497, 'FINKELDEI', 'http://www.finkeldei.ru/'),
(498, 'FIORAVAZZI', 'http://www.fioravazzi.com/'),
(499, 'FLAI', 'http://www.flaiweb.it/'),
(500, 'FLEXFORM', 'http://www.flexform.it/'),
(501, 'FLII ORIGGI', 'http://www.origgi.it/'),
(502, 'FLLI RADICI', 'http://www.fratelliradice.it/'),
(503, 'FLLI ROSETTO', 'http://www.rossetto.it/'),
(504, 'FLLI TURAZZA', 'http://www.turazza.it/'),
(505, 'FLOREANI DESIGN', 'http://www.floreanidesign.it/'),
(506, 'FLORENCE ART SRL', 'http://www.florence-art.it/'),
(507, 'FLORENCE COLLECTIONS', 'http://www.florencecollections.it/'),
(508, 'FLORIDA CUCINE', 'http://www.floridacucine.it/'),
(509, 'FLOS', 'http://www.flos.com/'),
(510, 'FLOU', 'http://www.flou.it/'),
(511, 'FONTANELLI', 'http://www.fontanelli.com/'),
(512, 'FOPPAPEDRETTI', 'http://www.foppapedretti.it/'),
(513, 'FORMER', 'http://www.former.it/'),
(514, 'FORMERIN', 'http://www.formerin.it/'),
(515, 'FORM-EXCLUSIV', 'http://www.form-exclusiv.de/'),
(516, 'FORMIA', 'http://www.formiaglass.it/'),
(517, 'FORMICHI', 'http://www.formichi.com/'),
(518, 'FORNASETTI', 'http://www.fornasetti.com/'),
(519, 'FORNI MOBILI', 'http://www.forni.it/'),
(520, 'FRANCESCO MOLON', 'http://www.francescomolon.com/'),
(521, 'FRANCESCO PASI', 'http://www.francescopasi.it/'),
(522, 'FRANCO BERTOZZINI', 'http://www.francobertozzini.it/'),
(523, 'FRARI', 'http://www.fraridesign.com/'),
(524, 'FRAST', 'http://www.frast.it/'),
(525, 'FRATELLI ALLIEVI', 'http://www.fratelliallievi.it/'),
(526, 'FRATELLI GNOATO', 'http://www.gnoatoflli.it/'),
(527, 'FRATELLI MASCHERONI', 'http://www.mascheroni.it/'),
(528, 'FRATELLI MERONI', 'http://www.meronisnc.com/'),
(529, 'FRATELLI SPINELLI', 'http://www.fratellispinelli.it/'),
(530, 'FRAU FLEX', 'http://frauflex.com/'),
(531, 'FREDERICIA', 'http://www.fredericia.com/'),
(532, 'FREZZA', 'http://www.frezzainc.com/'),
(533, 'FRIGERIO', 'http://www.frigeriosalotti.it/'),
(534, 'FRIGHETTO BY ESTEL PARTNERS', 'http://www.frighetto.com/'),
(535, 'FRITZHANSEN', 'http://www.fritzhansen.com/'),
(536, 'FRIULSEDIE', 'http://www.friulsediesud.it/'),
(537, 'FROLI', 'http://www.froli.com/'),
(538, 'FRYETTS AND PORTER & STONE', 'http://www.fryetts.co.uk/'),
(539, 'FUNZIONALISMO', 'http://www.funzionalismo.com/'),
(540, 'FUTURA', 'http://www.futura-italy.it/'),
(541, 'G.D.DORIGO', 'http://www.gd-dorigo.com/'),
(542, 'GABRIELLA BOTTACIN', 'http://www.gabriellab.com/'),
(543, 'GALIMBERTI LINO', 'http://www.galimbertilino.it/'),
(544, 'GALIMBERTI NINO', 'http://www.galimberti.it/'),
(545, 'GALLERY VETRI D''ARTE', 'http://www.galleryvetridarte.com/'),
(546, 'GALLO', 'http://www.galloitaly.com/'),
(547, 'GALLOTTI RADICE', 'http://www.gallottiradice.it/'),
(548, 'GALOTTIRADICE', 'http://www.gallottiradice.it/'),
(549, 'GAMMA', 'http://www.gabriellab.com/'),
(550, 'GARCIA REQUEJO', 'http://www.garciarequejo.es/'),
(551, 'GATTOCUCINE', 'http://www.gattocucine.com/'),
(552, 'GAUTIER', 'http://www.gautier.fr/'),
(553, 'GC COLOMBO', 'http://www.gccolombo.it/'),
(554, 'GCOLOMBO', 'http://www.aboutus.org/Gcolombo.it'),
(555, 'GEBA-KUECHEN', 'http://geba-kuechen.com/'),
(556, 'GED', 'http://www.gedcucine.it/'),
(557, 'GEMALINEA', 'http://www.gemalinea.it/'),
(558, 'GENOVEVA', 'http://www.genovevagroup.com/'),
(559, 'GEORGE SMITH', 'http://www.georgesmith.com/'),
(560, 'GERONAZZO F.LLI SNC', 'http://www.geronazzoporte.it/'),
(561, 'GERVASONI', 'http://www.gervasoni1882.it/'),
(562, 'GEUTHER', 'http://www.geuther.de/'),
(563, 'GHEZZANI', 'http://www.ghezzani.it/'),
(564, 'GIACONI&RAPONI', 'http://www.giaconieraponi.it/'),
(565, 'GIANFRANCO BALLERINI', 'http://www.gianfrancoballerini.com/'),
(566, 'GICINQUE  CUCINE', 'http://www.gicinque.com/'),
(567, 'GIELESSE', 'http://www.giellesse.it/'),
(568, 'GIESSEGI', 'http://www.giessegi.it/'),
(569, 'GIGLI', 'http://www.nellogigli.ru/'),
(570, 'GINOVA', 'http://www.ginova.it/'),
(571, 'GIORGETTI', 'http://www.giorgetti-spa.it/'),
(572, 'GIORGETTI', 'http://www.giorgetti-spa.it/'),
(573, 'GIORGIO CASA', 'http://www.giorgiocasa.it/'),
(574, 'GIORGIO PIOTTO', 'http://www.giorgiopiotto.com/'),
(575, 'GIOVANNETTI', 'http://www.giovannetticollezioni.it/'),
(576, 'GIOVANNI VISENTIN', 'http://www.visentingiovanni.com/'),
(577, 'GIRARDEAU', 'http://www.meubles-girardeau.com/'),
(578, 'GIROFLEX', 'http://www.giroflex.com/'),
(579, 'GIULIO BONANOMI', 'http://www.giuliobonanomi.it/'),
(580, 'GIULIO MARELLI', 'http://www.giuliomarelli.com/'),
(581, 'GIURIAN', 'http://www.gurian.it/'),
(582, 'GIUSTI PORTOS', 'http://www.giustiportos.it/'),
(583, 'GLAS', 'http://www.glassidromassaggio.it/'),
(584, 'GLASS ITALIA', 'http://www.glasitalia.com/'),
(585, 'GLASS&GLASS', 'http://www.glassandglass.it/'),
(586, 'GLOSTER', 'http://www.gloster.com/'),
(587, 'GMG/ MUST ITALIA', 'http://www.gmg-italia.com/'),
(588, 'GOLDCONFORT', 'http://www.goldconfort.com/'),
(589, 'GP&J BAKER', 'http://www.gpjbaker.com/'),
(590, 'GRANDUCATO ARREDI', 'http://www.granducatoarredi.it/'),
(591, 'GRANGE', 'http://www.grange.fr/'),
(592, 'GREGORI', 'http://www.equipe.ru/firmdetail/1948'),
(593, 'GRILLI', 'http://www.grilli.org/'),
(594, 'GRUBERSCHLAGER', 'http://www.gruber-schlager.com/'),
(595, 'GRUPPO FALA', 'http://www.fala.it/'),
(596, 'GT DESIGN', 'http://www.gtdesign.it/'),
(597, 'GUADARTE', 'http://www.guadarte.com/'),
(598, 'GWINNER', 'http://www.gwinner.de/'),
(599, 'HAANS LIFESTYLE', 'http://www.haanslifestyle.com/'),
(600, 'HABA', 'http://www.haba.de/'),
(601, 'HALLEY', 'http://www.halleyitaly.com/'),
(602, 'HANAK', 'http://www.hanak-nabytek.cz/'),
(603, 'HANS KAUFELD', 'http://www.hans-kaufeld.de/'),
(604, 'HAPPY SAUNA', 'http://www.happysauna.it/'),
(605, 'HARTMANN', 'http://www.moebel-hartmann.com/'),
(606, 'HASTENS', 'http://www.hastens.com/'),
(607, 'HAY', 'http://www.hay.dk/'),
(608, 'HELLER', 'http://www.equipe.ru/firmdetail/847'),
(609, 'HENREDON', 'http://www.henredon.com/'),
(610, 'HENRY GLASS', 'http://www.henryglass.it/'),
(611, 'HERITAGE', 'http://heritagehome.it/'),
(612, 'HICKORY WHITE', 'http://www.hickorywhite.com/'),
(613, 'HIGH TOUCH', 'http://www.hightouch.eu/'),
(614, 'HODE', 'http://www.hode.it/'),
(615, 'HOME CUCINE', 'http://www.homecucine.com/'),
(616, 'HORM', 'http://www.horm.it/'),
(617, 'HUELSTA', 'http://www.huelsta.com/'),
(618, 'HUKLA', 'http://www.hukla.co.jp/'),
(619, 'I TRE', 'http://www.itre.it/'),
(620, 'IAN SANDERSON', 'http://www.iansanderson.co.uk/'),
(621, 'IDEA GROUP', 'http://www.ideagroup.it/'),
(622, 'IDEALSEDIA', 'http://www.idealsedia.it/'),
(623, 'IL LOFT', 'http://www.illoft.com/'),
(624, 'IL PARALUME MARINA', 'http://www.ilparalumemarina.it/'),
(625, 'ILAS', 'http://www.ilaslampadari.it/'),
(626, 'ILLUMA', 'http://www.illuma.co.uk/'),
(627, 'IMAB GROUP', 'http://www.imabgroup.com/'),
(628, 'IMAGGIOLINI', 'http://www.imaggiolini.it/'),
(629, 'INES ART DESIGN', 'http://www.in-es.com/'),
(630, 'INFINITO', 'http://www.infinito.it/'),
(631, 'INNO', 'http://www.inno.fi/'),
(632, 'INNOVATOIN', 'http://www.innovationliving.com/'),
(633, 'INSIDE', 'http://www.inside.it/'),
(634, 'INTERLUBKE', 'http://www.interluebke.de/'),
(635, 'INTERSTUHL', 'http://www.interstuhl.de/'),
(636, 'INTERSTYLE', 'http://www.interstyle.it/'),
(637, 'INVENTA', 'http://www.inventa-italy.com/'),
(638, 'IPE CAVALLI', 'http://www.ipe-cavalli.it/'),
(639, 'ISACCO AGOSTINI', 'http://www.isaccoagostoni.it/'),
(640, 'ISMOBEL', 'http://www.ismobel.com/'),
(641, 'ITALAMP', 'http://www.italamp.com/'),
(642, 'ITALSOFA', 'http://www.italsofa.com/'),
(643, 'ITF', 'http://www.inventa-italy.com/'),
(644, 'JAMES BRINDLEY', 'http://www.jamesbrindley.com/'),
(645, 'JAMES HARE SILKS', 'http://www.james-hare.com/'),
(646, 'JASON D’SOUZA', 'http://www.jasondsouza.co.uk/'),
(647, 'JEAN MONRO', 'http://www.jeanmonro.com/'),
(648, 'JENSIGI', 'http://www.jensigi.it/'),
(649, 'JESSE', 'http://www.jesse.it/'),
(650, 'JNL', 'http://www.jnl.be/'),
(651, 'JOHN BOYD', 'http://www.johnboydtextiles.co.uk/'),
(652, 'JOHN SANKEY', 'http://www.meadowmead.co.uk/'),
(653, 'JONATHAN CHARLES', 'http://www.jonathancharlesfurniture.com/'),
(654, 'JUANES', 'http://www.juanes.com/'),
(655, 'JULES PANSU', 'http://www.jules-pansu.com/'),
(656, 'JULIA', 'http://www.julia-arreda.it/'),
(657, 'JUMBO', 'http://www.jumbo.com/'),
(658, 'JUNIOR 4', 'http://www.junior4.com/'),
(659, 'KAPPA SALOTTI', 'http://www.kappasalotti.it/'),
(660, 'KARBOXX', 'http://www.karboxx.com/'),
(661, 'KARE', 'http://www.karedesign.de/'),
(662, 'KARMAN', 'http://www.karmanitalia.it/'),
(663, 'KAROL', 'http://www.karol.it/'),
(664, 'KARTELL', 'http://www.kartell.com/'),
(665, 'KAST VAN EEN HUIS', 'http://www.kastvaneenhuis.nl/'),
(666, 'KENZO', 'http://www.kenzo.com/'),
(667, 'KEOMA SALOTTI', 'http://www.keomasalotti.it/'),
(668, 'KETTNAKER', 'http://www.kettnaker.com/'),
(669, 'KEY  CUCINE', 'http://www.keysbabo.com/'),
(670, 'KHAOS', 'http://www.khaos.it/'),
(671, 'KLER', 'http://www.kler.eu/'),
(672, 'KNOLL', 'http://www.knoll.com/'),
(673, 'KNOTS RUGS', 'http://www.endlessknotrugs.com/'),
(674, 'KOLARZ', 'http://www.kolarz.at/'),
(675, 'KRISTALIA', 'http://live.kristalia.it/'),
(676, 'KUNDALINI', 'http://www.kundalini.it/'),
(677, 'LA ALPUJARRENA', 'http://www.alpujarrena.com/'),
(678, 'LA CONTESSINA', 'http://www.lacontessina.com/'),
(679, 'LA FALEGNAMI', 'http://www.falegnami.it/'),
(680, 'LA FENICE', 'http://www.lafenice.it/'),
(681, 'LA FIBULE', 'http://www.lafibule.fr/'),
(682, 'LA MURRINA', 'http://www.lamurrina.com/'),
(683, 'LA PALMA', 'http://www.lapalma.it/'),
(684, 'LA PRIMAVERA', 'http://www.laprimaverasnc.it/'),
(685, 'LA VECCHIA ARTE', 'http://www.lavecchiaarte.it/'),
(686, 'LA VECCHIA MARINA', 'http://www.lavecchiamarina.it/'),
(687, 'LA VETRERIA', 'http://www.lavetreria.com/'),
(688, 'LABARERE', 'http://www.labarere.com/'),
(689, 'LAGO', 'http://www.lago.it/'),
(690, 'LAM LEE', 'http://www.lamleeeurope.com/'),
(691, 'LAMHULTS', 'http://www.lammhults.se/'),
(692, 'LAMP INTERNATIONAL', 'http://www.lamp-international.it/'),
(693, 'LAMP2', 'http://www.lamp2.it/'),
(694, 'LANDO', 'http://www.madeinlando.com/'),
(695, 'LANPAS', 'http://www.lanpas.it/'),
(696, 'L''ARTES', 'http://www.lartes.it/'),
(697, 'LATINI DESIGN CUCINE', 'http://www.latini.it/'),
(698, 'LAUDARTE', 'http://www.laudarte.com/'),
(699, 'LCI STILE', 'http://www.elitis.ru/firmdetail/1329'),
(700, 'LE CLASSIQUE', 'http://www.leclassique.it/'),
(701, 'LE ORE', 'http://www.leoredimandorla.it/'),
(702, 'LE PORCELLANE', 'http://www.leporcellane.it/'),
(703, 'LE SOFA', 'http://www.lesofa.org/'),
(704, 'LEADER CUCINE', 'http://www.leadercucine.it/'),
(705, 'LEDS', 'http://www.leds.ru/'),
(706, 'LEGNOLUCE', 'http://www.legnoluce.it/'),
(707, 'LEMA MOBILI', 'http://www.lemamobili.com/'),
(708, 'LENSVELT', 'http://www.lensvelt.nl/'),
(709, 'LEOLUX', 'http://www.leolux.com/'),
(710, 'LES ETAINS  DU PRINCE', 'http://www.etains-du-prince.com/'),
(711, 'LEUCOS', 'http://www.leucos.com/'),
(712, 'LEWIS & WOOD', 'http://www.lewisandwood.co.uk/'),
(713, 'LIGHT 4-MURANO LUCE', 'http://www.murano-luce.com/'),
(714, 'LIGNE ROSET', 'http://www.ligne-roset.com/'),
(715, 'LINE GIANSER', 'http://www.linegianser.com/'),
(716, 'LINEA B', 'http://www.lineab.it/'),
(717, 'LINEA D', 'http://www.linead.it/'),
(718, 'LINEA DUE BY BRUNO DROVANDI', 'http://italini.ru/www.lineaduesrl.it'),
(719, 'LINEA ITALIA', 'http://www.lineaitalia.it/'),
(720, 'LINEA QUATTRO', 'http://www.lineaquattro.com/'),
(721, 'LINEA TRE', 'http://www.lineatre.it/'),
(722, 'LINEAS TALLER', 'http://www.lineastaller.com/'),
(723, 'LINFA DESIGN', 'http://www.linfadesign.com/'),
(724, 'LINO SONEGO', 'http://www.linosonego.it/'),
(725, 'LISAEXPORT', 'http://www.lisaexport.it/'),
(726, 'LISTONE GIORDANO', 'http://www.listonegiordano.com/'),
(727, 'LITHOS DESIGN', 'http://www.lithosdesign.com/'),
(728, 'LITTER', 'http://www.littersrl.it/'),
(729, 'LIV''IT', 'http://www.livit.it/'),
(730, 'LOIUDICE SALOTTI', 'http://www.elitis.ru/firmdetail/1893'),
(731, 'LONGHI', 'http://www.longhi.it/'),
(732, 'LOOM ITALIA', 'http://www.loomitalia.com/'),
(733, 'L''ORIGINE', 'http://www.lorigine.it/'),
(734, 'LORO PIANA', 'http://www.loropiana.com/'),
(735, 'L''OTTOCENTO', 'http://www.lottocento.it/'),
(736, 'LU.BO BILIARDI', 'http://www.lubobiliardi.com/'),
(737, 'LU.BO PORTE', 'http://www.lubobiliardi.com/'),
(738, 'LUBE', 'http://www.cucinelube.it/'),
(739, 'LUBIEX', 'http://www.lubiex.com/'),
(740, 'LUCE ITALIANE', 'http://www.luciitaliane.com/'),
(741, 'LUCIANO ZONTA', 'http://www.zontamobili.it/'),
(742, 'LUCITALIA', 'http://www.lucitalia.it/'),
(743, 'LUDOVICA MASCHERONI', 'http://www.ludovicamascheroni.eu/'),
(744, 'LUDWIK STYL', 'http://www.ludwikstyl.com/'),
(745, 'LUIGI BEVILACQUA', 'http://www.luigi-bevilacqua.com/'),
(746, 'LUMINA', 'http://www.lumina.it/'),
(747, 'LUMIS', 'http://www.lumis.ru/'),
(748, 'LUTSON', 'http://www.lutson.com/'),
(749, 'LUXIT', 'http://www.luxit.it/'),
(750, 'M&R', 'http://www.mrimbottiti.it/'),
(751, 'MA.GI.CA', 'http://magica.snc@tiscalinet.it/'),
(752, 'MACCHIMOBILI(GOTHA)', 'http://www.elitis.ru/firmdetail/4026'),
(753, 'MACHALKE', 'http://www.machalke.de/'),
(754, 'MACULAN', 'http://www.maculan.net/'),
(755, 'MAGGI MASSIMO', 'http://www.maggimassimo.it/'),
(756, 'MAGGIONI', 'http://www.maggioni.it/'),
(757, 'MAGIS', 'http://www.magisdesign.com/'),
(758, 'MAIOR CUCINE', 'http://www.maiorcucine.com/'),
(759, 'MAISON SANTAMARIA', 'http://www.maisonsantamaria.com/'),
(760, 'MAISTRI', 'http://www.maistri.it/'),
(761, 'MALERBA', 'http://www.malerbafurniture.com/'),
(762, 'MANA COLLEZIONI', 'http://www.manacollezioni.com/'),
(763, 'MANARA', 'http://www.manara.it/'),
(764, 'MANGANI', 'http://www.mangani.it/'),
(765, 'MANIFATTURE F.LLI GAMBA', 'http://www.manifatturegamba.it/'),
(766, 'MANTELASSI', 'http://www.mantellassi.com/'),
(767, 'MANZONI LUIGI', 'http://www.manzoniluigi.it/'),
(768, 'MAP', 'http://www.maparredamenti.it/'),
(769, 'MAR MOBILI', 'http://www.marmobili.it/'),
(770, 'MARAC', 'http://www.marac.it/'),
(771, 'MARCHETTI', 'http://www.acquacottabymarchetti.com/'),
(772, 'MARCHI CUCINE', 'http://www.marchicucine.com/'),
(773, 'MARGAROLI', 'http://www.margaroli.com/'),
(774, 'MARGE CARSON', 'http://marge-carson.com/'),
(775, 'MARIE''S CORNER', 'http://mariescorner.com/'),
(776, 'MARINA DAL SANTO', 'http://www.marinadalsanto.it/'),
(777, 'MARINER', 'http://www.mariner.es/'),
(778, 'MARIO GALIMBERTI', 'http://www.galimbertimario.it/'),
(779, 'MARIO VILLA NOVA', 'http://www.mariovillanova.it/'),
(780, 'MARIONI', 'http://www.marioni.it/'),
(781, 'MARK MILLER FURNITURE', 'http://markmillerfurniture.com/'),
(782, 'MARKA INDUSTRIA MOBILI SPA', 'http://www.equipe.ru/firmdetail/1936'),
(783, 'MARONESE', 'http://www.gruppoatma.com/en/maroneseAz.html'),
(784, 'MAROSO GINO', 'http://www.marosogino.it/'),
(785, 'MARTINI MOBILI', 'http://www.martinimobili.it/'),
(786, 'MARTINI''S DESIGN', 'http://www.martinis.it/'),
(787, 'MARVIC TEXTILES', 'http://www.marvictextiles.co.uk/'),
(788, 'MARZORATI', 'http://www.marzorati.com/'),
(789, 'MASCAGNI', 'http://www.mascagni.it/'),
(790, 'MASCHERONI', 'http://www.mascheroni.it/'),
(791, 'MASCOTTO', 'http://www.mascotto.com/'),
(792, 'MASI MOBILI', 'http://www.masimobili.it/'),
(793, 'MASIERO', 'http://www.masierogroup.com/'),
(794, 'MASONI SRL', 'http://masonisrl.it/'),
(795, 'MASTRO RAPHAEL', 'http://www.mastroraphael.com/'),
(796, 'MATHIAS', 'http://www.mathias.it/'),
(797, 'MATTEOGRASSI', 'http://www.matteograssi.it/'),
(798, 'MAZZALI', 'http://www.mazzaliarmadi.it/'),
(799, 'MD HOUSE', 'http://www.mdhouse.it/'),
(800, 'MDF', 'http://www.mdfitalia.it/'),
(801, 'MEDEA', 'http://www.medea.it/'),
(802, 'MEGAROS', 'http://www.megaros-furniture.com/'),
(803, 'MEISE', 'http://www.meisemoebel.de/'),
(804, 'MENEGHINI', 'http://www.meneghiniarredamenti.com/'),
(805, 'MERCANTINI', 'http://www.mercantini.it/'),
(806, 'MERIDIANI', 'http://www.meridiani.it/'),
(807, 'MERITALIA', 'http://www.meritalia.it/'),
(808, 'MERONI FRANCESCO', 'http://www.meronifrancescoefigli.it/'),
(809, 'MESON''S', 'http://www.mesons.it/'),
(810, 'META', 'http://www.meta-design.it/'),
(811, 'MEUBLES HAY', 'http://www.meubles-hay.fr/'),
(812, 'MEYSTYLE', 'http://www.meystyle.com/'),
(813, 'MICEVERSAILLES', 'http://www.miceversailles.com/'),
(814, 'MIDA', 'http://www.gruppoatma.it/'),
(815, 'MIDA2', 'http://www.mida2.it/'),
(816, 'MIDJ', 'http://www.midj.it/'),
(817, 'MILANO BEDDING', 'http://www.milanobedding.it/'),
(818, 'MILLDUE', 'http://milldue.com/'),
(819, 'MINACCIOLO', 'http://www.minacciolo.it/'),
(820, 'MINIFORMS', 'http://www.miniforms.eu/'),
(821, 'MINOTTI', 'http://www.minotti.com/'),
(822, 'MINOTTI LUIGGI&BENINO', 'http://www.minottiluigiebenigno.com/'),
(823, 'MINOTTICOLLEZIONI', 'http://www.minotticollezioni.it/'),
(824, 'MINOTTIITALIA', 'http://www.minottiitalia.it/'),
(825, 'MIRANDOLA', 'http://www.mirandola.it/'),
(826, 'MIRE', 'http://www.mire.it/'),
(827, 'MISE EN DERMEURE', 'http://www.misendemeure.com/'),
(828, 'MI-SHA', 'http://www.mi-sha.net/'),
(829, 'MISS DIVANI', 'http://www.missdivani.it/'),
(830, 'MISSONI HOME', 'http://www.missonihome.it/'),
(831, 'MISTRAL', 'http://www.mistralspa.it/'),
(832, 'MISURA EMME', 'http://www.misuraemme.it/'),
(833, 'MISURA SALOTTI', 'http://www.misuraisalotti.com/'),
(834, 'MITTEL CUCINE', 'http://www.mittelcucine.it/'),
(835, 'MM LAMPADARI', 'http://www.mmlampadari.com/'),
(836, 'MO.WA', 'http://www.mowasnc.com/'),
(837, 'MOBIL DERI', 'http://www.mobilderi.it/'),
(838, 'MOBIL G.A.M.', 'http://www.mobilgam.it/'),
(839, 'MOBILBRACCO', 'http://www.mobilbracco.it/'),
(840, 'MOBILEFFE', 'http://www.mobileffe.com/'),
(841, 'MOBILFICIO DOMUS', 'http://www.mobilificiodomus.it/'),
(842, 'MOBILFRESNO', 'http://www.mobilfresno.com/'),
(843, 'MOBILI AVENANTI', 'http://www.mobiliavenanti.it/'),
(844, 'MOBILI SOCCI ANCHISE', 'http://www.soccianchisemobili.com/'),
(845, 'MOBILIDEA', 'http://www.mobilidea.com/'),
(846, 'MOBILIMACULAN', 'http://www.mobilimaculan.it/'),
(847, 'MOBILINE', 'http://www.mobilinea.it/'),
(848, 'MOBILITALIA', 'http://www.mobilitalia.it/'),
(849, 'MOBILTREVI', 'http://www.mobiltrevi.it/'),
(850, 'MOBLESA', 'http://www.moblesa.com/'),
(851, 'MODA'' DI LIDO E PEREGO', 'http://www.diliddoeperego.it/'),
(852, 'MODA MOBILI', 'http://www.modamobili.it/'),
(853, 'MODENESE GASTONE', 'http://www.modenesegastone.com/'),
(854, 'MODO LUCE', 'http://www.modoluce.com/'),
(855, 'MODULNOVA', 'http://www.modulnova.it/'),
(856, 'MOLETTA & CO', 'http://molettaco.ru/'),
(857, 'MOLINARI', 'http://www.molinari.it/'),
(858, 'MOLLER DESIGN', 'http://www.moeller-design.de/'),
(859, 'MOLTENI', 'http://www.molteni.it/'),
(860, 'MOMENTI', 'http://www.momenti-casa.it/'),
(861, 'MONTBEL', 'http://www.montbel.it/'),
(862, 'MONTINA', 'http://www.montina.it/'),
(863, 'MORADILLO', 'http://www.moradillo.com/'),
(864, 'MORASSUTTI/PLAY S.R.L.', 'http://www.morassutti-play.it/'),
(865, 'MORELATO', 'http://www.morelato.it/'),
(866, 'MORELLO GIANPAOLO', 'http://www.elitis.ru/firmdetail/2045'),
(867, 'MORETTI', 'http://www.moretti.it/'),
(868, 'MORETTI COMPACT', 'http://www.moretticompact.com/'),
(869, 'MORFEUS', 'http://www.morfeus.it/'),
(870, 'MOROSO', 'http://www.moroso.it/'),
(871, 'MORTON & YOUNG TEXTILES', 'http://www.mybtextiles.com/'),
(872, 'MOSCATELLI', 'http://www.gmoscatelli.it/'),
(873, 'MOVE', 'http://www.move.it/'),
(874, 'MOVI', 'http://www.movi.it/'),
(875, 'MUGALI', 'http://www.mugali.com/'),
(876, 'MULBERRY', 'http://www.mulberry.com/'),
(877, 'MURANO DUE', 'http://www.muranodue.com/'),
(878, 'MUSSI', 'http://www.mussi.it/'),
(879, 'MUUTO', 'http://www.muuto.com/'),
(880, 'NANIMARQUINA', 'http://www.nanimarquina.com/'),
(881, 'NAPOL', 'http://www.napol.it/'),
(882, 'NATUZZI', 'http://www.natuzzi.com/'),
(883, 'NAVA', 'http://www.promotion.it/nava/'),
(884, 'NEISHA CROSLAND', 'http://www.neishacrosland.com/'),
(885, 'NEMO', 'http://www.nemo.cassina.it/'),
(886, 'NERIWOOD', 'http://www.neriwood.com/'),
(887, 'NICHOLAS HERBERT', 'http://www.nicholasherbert.com/'),
(888, 'NICOLINE', 'http://www.nicoline.it/'),
(889, 'NILUR', 'http://www.nilur.it/'),
(890, 'NINA CAMPBEL', 'http://www.ninacampbell.com/'),
(891, 'N-MONACO', 'http://www.equipe.ru/firmdetail/3505'),
(892, 'NOIR BY CATTELAN ITALIA', 'http://www.cattelanitalia.com/'),
(893, 'NOLTE', 'http://www.nolte.de/'),
(894, 'NON SOLO LUCE ', 'http://www.nonsololuce.com/'),
(895, 'NORMANN COPENHAGEN', 'http://www.normann-copenhagen.com/'),
(896, 'NOTTE BRAVA', 'http://www.nottebrava.it/'),
(897, 'NOVA SERENISSIMA', 'http://www.novaserenissima.it/'),
(898, 'NOVALINEA', 'http://www.novalinea.it/'),
(899, 'NOVAMOBILI', 'http://www.novamobili.it/'),
(900, 'NUBE', 'http://www.nubeitalia.com/'),
(901, 'NUOVA POLTROMOT', 'http://www.nuovapoltromot.it/'),
(902, 'O.KITALIA', 'http://www.okitalia.com/'),
(903, 'OAK', 'http://www.oak.it/'),
(904, 'OF INTERNI', 'http://www.ofinterni.it/'),
(905, 'OFFECT', 'http://www.offecct.se/'),
(906, 'OFFICE DIVISION(EXPORTLINE)', 'http://www.officedivision.it/'),
(907, 'OFI - FRAN', 'http://www.ofifran.com/'),
(908, 'OLD LINE', 'http://www.oldline.it/'),
(909, 'OLIVIERI', 'http://www.olivierimobili.com/'),
(910, 'OLUCE', 'http://www.oluce.com/'),
(911, 'ONGARO&FUGA', 'http://www.equipe.ru/firmdetail/2076'),
(912, 'ONLYWOOD', 'http://www.onlywoodsrl.it/'),
(913, 'OPIFICIO', 'http://www.opificiodellepietredure.it/'),
(914, 'OR ILLUMINAZIONE', 'http://www.orilluminazione.it/'),
(915, 'ORIGGI', 'http://www.origgi.it/'),
(916, 'ORIGGI  SALOTTI', 'http://www.origgi.com/'),
(917, 'ORIZZONTI', 'http://www.orizzonti-srl.com/'),
(918, 'ORME', 'http://www.orme.it/'),
(919, 'ORSI', 'http://www.orsisnc.it/'),
(920, 'ORTOLAN', 'http://www.ortolan.it/'),
(921, 'ORTOLANI', 'http://www.ca-ortolani.it/'),
(922, 'OTY LIGHT', 'http://www.otylight.com/'),
(923, 'OZZIO', 'http://www.ozzio.com/'),
(924, 'PACINI CРђPELLINI.', 'http://www.paciniecappellini.it/'),
(925, 'PAIDI', 'http://ru.paidi.com/'),
(926, 'PAL MOBILI', 'http://www.elitis.ru/firmdetail/1975'),
(927, 'PALLUCCO', 'http://www.pallucco.com/'),
(928, 'PAOLA LENTI', 'http://www.paolalenti.it/'),
(929, 'PAOLO LUCCHETTA', 'http://www.paololucchetta.com/'),
(930, 'PARKER + FARR', 'http://www.parker-and-farr-furniture.co.uk/'),
(931, 'PARRI DESIGN', 'http://www.parridesign.it/'),
(932, 'PASCAL AMBLARD', 'http://www.atelierpascalamblard.com/'),
(933, 'PASI', 'http://www.francescopasi.it/'),
(934, 'PASINI ETTORE', 'http://www.pasiniettore.it/'),
(935, 'PASSERI', 'http://www.passerint.it/'),
(936, 'PATAVIUMART', 'http://www.pataviumart.it/'),
(937, 'PATINA', 'http://www.patinainc.com/'),
(938, 'PATOCCO', 'http://www.potoccospa.com/'),
(939, 'PATRIZIA GARGANTI/BAGA', 'http://www.baga.it/'),
(940, 'PEDINI', 'http://www.pedini.it/'),
(941, 'PELLEGATA', 'http://www.pellegatamobili.com/'),
(942, 'PELLIZZONI', 'http://www.enricopellizzoni.com/'),
(943, 'PENTA', 'http://www.pentalight.it/'),
(944, 'PENTAMOBILI', 'http://www.pentamobili.com/'),
(945, 'PEREZ BENAU', 'http://www.perezbenau.com/'),
(946, 'PESMAC', 'http://www.pesmac.com/'),
(947, 'PETRUSSE', 'http://www.petrusse.com/'),
(948, 'PF HOME COLLECTION', 'http://www.pfcasa.com/'),
(949, 'PHILLIP JEFFRIES', 'http://www.phillipjeffries.com/'),
(950, 'PHILLIP PLEIN', 'http://www.main.philipp-plein.com/'),
(951, 'PIANCA', 'http://www.pianca.com/'),
(952, 'PIEMME', 'http://www.ceramichepiemme.it/'),
(953, 'PIERANTONIO BONACINA', 'http://www.bonacinapierantonio.it/'),
(954, 'PIERMARIA', 'http://www.piermaria.it/'),
(955, 'PIETRO CONSTANTINI', 'http://www.costantinipietro.com/'),
(956, 'PINOLINO', 'http://www.pinolino.de/'),
(957, 'PINTDECOR ', 'http://www.pintdecor.it/'),
(958, 'PITTI', 'http://www.pitti.it/'),
(959, 'PLATEK', 'http://www.platek.eu/'),
(960, 'POGGENPOHL', 'http://www.poggenpohl.de/'),
(961, 'POLES SALOTTI', 'http://www.poles.it/'),
(962, 'POLIFORM', 'http://www.poliform.it/'),
(963, 'POLTROMOT', 'http://www.nuovapoltromot.it/'),
(964, 'POLTRONA FRAU', 'http://www.poltronafrau.com/'),
(965, 'PORADA', 'http://www.porada.it/'),
(966, 'PORRO', 'http://www.porro.com/'),
(967, 'PORTA ROMANA', 'http://www.portaromana.co.uk/'),
(968, 'PORTE ITALIA', 'http://www.porteitalia.com/'),
(969, 'POSSONI', 'http://www.possoni.it/'),
(970, 'POTOCCO', 'http://www.potoccospa.com/'),
(971, 'POZZOLLI', 'http://www.pozzoli.com/'),
(972, 'PRANDINA', 'http://www.prandina.it/'),
(973, 'PREARO COLLEZIONI LUCE', 'http://www.prearo.it/'),
(974, 'PREGNO', 'http://www.pregno.com/'),
(975, 'PRESOTTO', 'http://www.presottoitalia.it/'),
(976, 'PRESTIGIO D''ELITE', 'http://www.prestigiodelite.it/'),
(977, 'PROVASI', 'http://www.provasi.com/'),
(978, 'PROVENCE & FILS', 'http://www.provence-et-fils.com/'),
(979, 'PUNTOTRE', 'http://www.puntotre.com/'),
(980, 'QUASAR', 'http://www.quasar.nl/'),
(981, 'QUELLI DELLA MARIANI', 'http://www.quellidellamariani.it/'),
(982, 'QUIA', 'http://www.quia.it/'),
(983, 'QUOTIDIANA', 'http://www.quotidiana.com/'),
(984, 'RADICE', 'http://www.radice.it/'),
(985, 'RAMPOLDI', 'http://www.rampoldi.it/'),
(986, 'RATTAN WOOD', 'http://www.rattanwood.it/'),
(987, 'RAUMPLUS', 'http://www.raumplus.de/'),
(988, 'RE DECO'' BY SOMASCHINI', 'http://www.redecoitalia.com/'),
(989, 'RECK''S', 'http://www.recksmobili.com/'),
(990, 'RECORD CUCINE', 'http://www.recordcucine.com/'),
(991, 'REFLEX&ANGELO', 'http://www.reflexangelo.com/'),
(992, 'REGIA', 'http://www.regia.it/'),
(993, 'RELYON', 'http://relyon.co.uk/'),
(994, 'RES', 'http://www.reswoodworking.com/'),
(995, 'RES ITALIA', 'http://www.resitalia.it/'),
(996, 'RESISTUB', 'http://www.resistub.com/'),
(997, 'RESTART', 'http://www.restart.it/'),
(998, 'RICAMI', 'http://www.antonangeli.it/'),
(999, 'RICHARD GINORI', 'http://www.richardginori1735.com/'),
(1000, 'RIFLESSI', 'http://www.riflessisrl.it/'),
(1001, 'RIMADESIO', 'http://www.rimadesio.it/'),
(1002, 'RIPERLAMP', 'http://www.riperlamp.com/'),
(1003, 'RIVA 1920', 'http://www.riva1920.it/'),
(1004, 'RIVA MOBILI D''ARTE', 'http://www.marivamobili.com/'),
(1005, 'RIVOLTA', 'http://www.rivoltaelapelle.com/'),
(1006, 'ROBERTI RATTAN', 'http://www.robertirattan.com/'),
(1007, 'ROCHE BOBOIS', 'http://www.roche-bobois.com/'),
(1008, 'ROLAND VLAEMINCK', 'http://www.vlaemynck.com/'),
(1009, 'ROLFBENZ', 'http://www.rolf-benz.com/'),
(1010, 'ROMOLI', 'http://www.romoli.fr/'),
(1011, 'ROMOLI PROF.SIRO', 'http://www.romolimobili.com/'),
(1012, 'RONALD SCHMITT', 'http://ronald-schmitt.de/');
INSERT INTO `brand` (`brand_id`, `brand_title`, `brand_url`) VALUES
(1013, 'RONCATO', 'http://www.roncato.it/'),
(1014, 'ROSE CUMMING', 'http://www.rosecumming.com/'),
(1015, 'ROSINI', 'http://www.rossinigroup.it/'),
(1016, 'ROSSANA', 'http://www.rossana.it/'),
(1017, 'ROSSETTO ARMOBIL', 'http://www.arros.it/'),
(1018, 'ROSSIDIALBIZZATE', 'http://www.rossidialbizzate.it/'),
(1019, 'ROYAL ALBERTA', 'http://www.albertasalotti.it/'),
(1020, 'RT MOBILI', 'http://www.rtmobili.it/'),
(1021, 'RUBELLI', 'http://www.rubelli.com/'),
(1022, 'RUBINETTERIE STELLA', 'http://www.rubinetteriestella.it/'),
(1023, 'RUDE BRAVO', 'http://www.rudebravo.com/'),
(1024, 'RUF-BETTEN', 'http://www.ruf-betten.de/'),
(1025, 'RUFFLETTE', 'http://www.rufflette.com/'),
(1026, 'RUGGIU', 'http://www.ruggiu.com/'),
(1027, 'RUGIANO', 'http://www.rugiano.com/'),
(1028, 'SABA', 'http://www.sabaitalia.it/'),
(1029, 'SABER', 'http://www.saber.it/'),
(1030, 'SACMA', 'http://www.sacma-office.com/'),
(1031, 'SAINT BABILLA', 'http://www.saintbabila.com/'),
(1032, 'SALCA', 'http://www.salca-asiago.com/'),
(1033, 'SALCON', 'http://www.salcon.it/'),
(1034, 'SALDA', 'http://www.saldaarredamenti.it/'),
(1035, 'SALVARANI', 'http://www.salvaranicucine.it/'),
(1036, 'SAMBONET', 'http://www.sambonet.it/'),
(1037, 'SAN GIACOMO', 'http://www.msg.it/'),
(1038, 'SAN MARCO', 'http://www.san-marco.it/'),
(1039, 'SAN MICHELE', 'http://www.sanmichelesrl.it/'),
(1040, 'SAN VITO', 'http://www.sanvito.com/'),
(1041, 'SANCAL', 'http://www.sancal.com/'),
(1042, 'SANDERSON', 'http://www.sanderson-uk.com/'),
(1043, 'SANGIORGIO', 'http://www.s3sangiorgio.it/'),
(1044, 'SANTA COLE', 'http://www.santacole.com/'),
(1045, 'SAPA SALOTTI', 'http://www.nuovasapasalotti.com/'),
(1046, 'SAT EXPORT', 'http://www.satexportsalotti.it/'),
(1047, 'SATOM BATH', 'http://www.satombath.com/'),
(1048, 'SAVIO FIRMINO', 'http://www.saviofirmino.com/'),
(1049, 'SCANDAL HOME COUTURE', 'http://www.scandal-italia.it/'),
(1050, 'SCAPPINI', 'http://www.scappini.it/'),
(1051, 'SCATTOLIN', 'http://scottoline.com/'),
(1052, 'SCAVOLINI', 'http://www.elitis.ru/firmdetail/3301'),
(1053, 'SCHIFFINI', 'http://www.schiffini.it/'),
(1054, 'SCHIOENHUBER FANCHI', 'http://www.schoenhuberfranchi.com/'),
(1055, 'SCHMALENBACH', 'http://www.schmalenbach.org/'),
(1056, 'SCHOENBUCH', 'http://www.schoenbuch.com/'),
(1057, 'SCHONBEK', 'http://www.schonbek.com/'),
(1058, 'SCHUELLER', 'http://www.schueller.de/'),
(1059, 'SCIC CUCINE', 'http://www.scic.it/'),
(1060, 'SEDEX', 'http://www.sedex.it/'),
(1061, 'SEDIT-ITALIA', 'http://www.sedit-italia.it/'),
(1062, 'SEGUSO', 'http://www.seguso.it/'),
(1063, 'SELETTI', 'http://www.seletti.it/'),
(1064, 'SELLARO', 'http://www.sellaro.it/'),
(1065, 'SELVA', 'http://www.selva.com/'),
(1066, 'SERENISSIMA', 'http://www.serenissima.re.it/'),
(1067, 'SERRALUNGA', 'http://www.serralunga.com/'),
(1068, 'SEVEN SALOTTI', 'http://www.sevensalotti.it/'),
(1069, 'SEVEN SEDIE', 'http://www.sevensedie.com/'),
(1070, 'SICC CUCINE', 'http://www.sicccucine.com/'),
(1071, 'SICIS', 'http://www.sicis.com/'),
(1072, 'SIEMATIC', 'http://www.siematic.com/'),
(1073, 'SIGE GOLD', 'http://www.sigegold.com/'),
(1074, 'SIGNATURE PRINTS', 'http://www.signatureprints.com.au/'),
(1075, 'SIGNORINO COCO', 'http://www.signorinicoco.com/'),
(1076, 'SIL LUX - LAMPADE ITALIANE', 'http://www.lampadeitaliane.it/'),
(1077, 'SILENIA', 'http://www.silenia.it/'),
(1078, 'SILIK', 'http://www.silik.com/'),
(1079, 'SILOMA', 'http://www.siloma.it/'),
(1080, 'SILVANO GRIFFONI', 'http://www.silvanogrifoni.it/'),
(1081, 'SIMTA', 'http://www.simtaspa.com/'),
(1082, 'SINTESI', 'http://sintesi.gruppo-sintesi.com/'),
(1083, 'SIRTEK', 'http://www.sirtek.it/'),
(1084, 'SITIA', 'http://www.sitia.it/'),
(1085, 'SIWA', 'http://www.siwasoftstyle.com/'),
(1086, 'SKOVBY', 'http://www.skovby.com/'),
(1087, 'SMA', 'http://www.sma-mobili.com/'),
(1088, 'SMANIA', 'http://www.smania.it/'),
(1089, 'SNAIDERO', 'http://www.snaidero.it/'),
(1090, 'SOFT HOUSE', 'http://www.softhouse.pisa.it/'),
(1091, 'SPAGNOL GROUPP', 'http://www.spagnol.it/'),
(1092, 'SPAR', 'http://www.spar.it/'),
(1093, 'SPINI', 'http://www.spini.com/'),
(1094, 'SRAFINO MARELLI', 'http://www.ebenis.com/'),
(1095, 'STATUS', 'http://www.status.it/'),
(1096, 'STEED UPHOLSTERY', 'http://www.steedupholstery.com/'),
(1097, 'STEINER PARIS', 'http://www.steiner-paris.com/'),
(1098, 'STELLA DEL MOBILE', 'http://www.stelladelmobile.com/'),
(1099, 'STILEMA', 'http://www.stilema.it/'),
(1100, 'STOERMER-KUECHEN', 'http://www.stoermer-kuechen.de/'),
(1101, 'STRESSLESS', 'http://www.ekornes.com/'),
(1102, 'STYLEOFFICE', 'http://www.styloffice.com/'),
(1103, 'SUDBROCK', 'http://www.sudbrock.de/'),
(1104, 'SWAN', 'http://www.swanitaly.com/'),
(1105, 'SYLCOM', 'http://www.sylcomsrl.com/'),
(1106, 'T.N.B.', 'http://www.tnbverona.it/'),
(1107, 'TAIMOBLE', 'http://www.taymoble.com/'),
(1108, 'TAITU', 'http://www.taymoble.com/'),
(1109, 'TANTUSSI', 'http://www.tantussiserramenti.it/'),
(1110, 'TARBA', 'http://www.tarbamobili.it/'),
(1111, 'TARGET POINT', 'http://www.targetpoint.it/'),
(1112, 'TARPAC', 'http://www.tarpac.it/'),
(1113, 'TEAM 7', 'http://www.team7.at/'),
(1114, 'TEAM BY WELLIS', 'http://www.teambywellis.com/'),
(1115, 'TECNI NOVA', 'http://www.tecninova.com/'),
(1116, 'TECNOARREDO', 'http://www.tecnoarredo.com/'),
(1117, 'TECTA', 'http://www.tecta.de/'),
(1118, 'TEKNO', 'http://www.tekno-italy.com/'),
(1119, 'TEMPOR', 'http://www.tempor.it/'),
(1120, 'TEMPUR', 'http://www.tempur.com/'),
(1121, 'TERZANI', 'http://www.terzani.com/'),
(1122, 'TETTAMANZI&ERBA', 'http://www.tettamanzierba.it/'),
(1123, 'TEUCO', 'http://www.teuco.com/'),
(1124, 'TEXARREDO', 'http://www.texarredo.it/'),
(1125, 'THOERMER', 'http://www.thoermer-polstermoebel.de/'),
(1126, 'THORNHILL GALLERIES', 'http://www.thornhillgalleries.co.uk/'),
(1127, 'TIEMME MOBILI D''ARTE', 'http://www.tiemmemobili.it/'),
(1128, 'TIERRE SALOTTI', 'http://www.tierresalotti.com/'),
(1129, 'TIFERNO MOBILI', 'http://www.tiferno.it/'),
(1130, 'TIMNEY FOWLER', 'http://www.timney-fowler.com/'),
(1131, 'TINDLE LIGHTING', 'http://www.tindle-lighting.com/'),
(1132, 'TISETTANTA', 'http://www.tisettanta.com/'),
(1133, 'TITCHMARSH & GOODWIN', 'http://www.titchmarsh-goodwin.co.uk/'),
(1134, 'TODAY INTERIORS', 'http://www.today-interiors.co.uk/'),
(1135, 'TOM DIXON', 'http://www.tomdixon.net/'),
(1136, 'TOMASSI CUCINE', 'http://www.tomassicucine.com/'),
(1137, 'TONCELLI', 'http://www.toncelli.it/'),
(1138, 'TONIN CASA', 'http://www.tonincasa.it/'),
(1139, 'TONON', 'http://www.tononitalia.com/'),
(1140, 'TORCHETTI', 'http://www.torchetti.it/'),
(1141, 'TORRE', 'http://www.torre.it/'),
(1142, 'TOSATO', 'http://www.tosato.com/'),
(1143, 'TOSCANO MOBIL', 'http://www.toscanomobil.com/'),
(1144, 'TOWNSEND LEATHER', 'http://www.townsendleather.com/'),
(1145, 'TRASTES &CONTRASTES', 'http://www.trastesecontrastes.com/'),
(1146, 'TRECA DE PARIS', 'http://www.trecadeparis.com/'),
(1147, 'TRECCANI', 'http://www.treccani.biz/'),
(1148, 'TRECI SALOTTI', 'http://trecisalotti.it/'),
(1149, 'TREO', 'http://www.treo.it/'),
(1150, 'TRUEGGELMANN', 'http://www.trueggelmann.de/'),
(1151, 'TUMIDEI', 'http://www.tumidei.it/'),
(1152, 'TURATIBOISERIES', 'http://turatiboiseries.com/'),
(1153, 'TURAZZA', 'http://www.turazza.it/'),
(1154, 'TURCHETTO', 'http://www.turchettofurniture.com/'),
(1155, 'TURRI', 'http://www.turri.it/'),
(1156, 'TWILS', 'http://www.twils.it/'),
(1157, 'UFFIX SPA', 'http://www.uffix.com/'),
(1158, 'ULIVI SALOTTI', 'http://www.ulivisalotti.it/'),
(1159, 'UNICO ITALIA', 'http://www.unicoitalia.it/'),
(1160, 'UPPER', 'http://www.elitis.ru/firmdetail/2408'),
(1161, 'VALCUCINE', 'http://www.valcucine.it/'),
(1162, 'VALDERAMOBILI', 'http://www.valderamobili.it/'),
(1163, 'VALDICHIENTI', 'http://www.valdichienti.it/'),
(1164, 'VALENTE LETTI', 'http://www.valenteletti.com/'),
(1165, 'VALENTI LUCE', 'http://www.valentiluce.it/'),
(1166, 'VALENTINY LIVING SPCA', 'http://www.valentini.it/'),
(1167, 'VALENTINY VANITY', 'http://www.valentinivanity.it/'),
(1168, 'VALMORI', 'http://www.valmori1963.it/'),
(1169, 'VALSAN', 'http://www.valsan.com/'),
(1170, 'VAMA CUCINE', 'http://www.vama.biz/'),
(1171, 'VANIDIVISIONE PORTE', 'http://www.vaniporte.it/'),
(1172, 'VARENNA', 'http://www.varennaitaly.com/'),
(1173, 'VASELLI MARMI', 'http://www.vasellimarmi.it/'),
(1174, 'VENERAN', 'http://www.veneran.com/'),
(1175, 'VENETA CUCINE', 'http://www.venetacucine.com/'),
(1176, 'VENETA MOBILI', 'http://www.venetamobili.com/'),
(1177, 'VENETA SEDIE', 'http://www.venetasedie.it/'),
(1178, 'VENETASEDIE', 'http://www.venetasedie.it/'),
(1179, 'VENICE HOME COLLECTION', 'http://www.venicehomecollection.it/'),
(1180, 'VENIER', 'http://www.venier.com/'),
(1181, 'VER PAN', 'http://www.verpan.dk/'),
(1182, 'VERARDO', 'http://www.verardoitalia.it/'),
(1183, 'VERDESIGN', 'http://www.verdesign.it/'),
(1184, 'VERSACE', 'http://www.versacehome.com/'),
(1185, 'VERZELLONI', 'http://www.verzelloni.it/'),
(1186, 'VETRARTI', 'http://www.vetrarti.it/'),
(1187, 'VETRERIA FARRONI FRANCESCO', 'http://www.vetreriafarroni.it/'),
(1188, 'VIBIEFFE', 'http://www.vibieffe.com/'),
(1189, 'VICENT MONTORO', 'http://www.vicentmontoro.com/'),
(1190, 'VICENTE ZARAGOZA', 'http://www.vicentezaragoza.com/'),
(1191, 'VILLA VENETE', 'http://www.villevenete.com/'),
(1192, 'VILLARI', 'http://www.villari.it/'),
(1193, 'VILLE E CASALI', 'http://www.villeecasali.com/'),
(1194, 'VIMERCATI', 'http://www.vimercatimeda.it/'),
(1195, 'VIREMA STYLE', 'http://www.viremastyle.com/'),
(1196, 'VISENTIN GIOVANNI', 'http://www.visentingiovanni.com/'),
(1197, 'VISIONNAIR', 'http://www.visionnaire-home.it/'),
(1198, 'VISMAP', 'http://www.vismap.it/'),
(1199, 'VISMARA  DESIGN', 'http://www.vismara.it/'),
(1200, 'VITRA', 'http://www.vitra.com/'),
(1201, 'VITTORIA', 'http://www.vittoria.com/'),
(1202, 'VOLPI', 'http://www.volpisedie.it/'),
(1203, 'VOLTAN INDUSTRIA MOBILI', 'http://www.voltanindustriamobili.it/'),
(1204, 'VUZETA', 'http://www.vuzetasrl.com/'),
(1205, 'WACKENHUT', 'http://www.wackenhut.de/'),
(1206, 'WADE  UPHOLSTERY', 'http://www.wade-upholstery.co.uk/'),
(1207, 'WALLFLOR', 'http://www.wallflor.com/'),
(1208, 'WALTERKNOLL', 'http://www.walterknoll.de/'),
(1209, 'WAMA', 'http://www.elitis.ru/redirect_site/www.wama.it'),
(1210, 'WATTS OF WESTMINSTER', 'http://www.wattsofwestminster.com/'),
(1211, 'WILLI SCHILLIG', 'http://www.schillig.com/'),
(1212, 'WITTMANN', 'http://www.wittmann.at/'),
(1213, 'WK WOHNEN', 'http://www.wk-wohnen.de/'),
(1214, 'WOOD BROS', 'http://www.equipe.ru/firmdetail/2004'),
(1215, 'WOW IMPORTS', 'http://wowimports.us/'),
(1216, 'XENIA DECORAZIONI', 'http://www.xeniadecorazioni.com/'),
(1217, 'YBARRA & SERRET', 'http://www.ybarrayserret.com/'),
(1218, 'YCAMI', 'http://www.ycami.com/'),
(1219, 'YDF', 'http://www.ydf.it/'),
(1220, 'ZACCARIOTTO', 'http://www.zaccariottocucine.it/'),
(1221, 'ZALF', 'http://www.gruppoeuromobil.com/'),
(1222, 'ZANABONI', 'http://www.zanaboni.it/'),
(1223, 'ZANCANELLA RENZO', 'http://www.zancanellarenzo.com/'),
(1224, 'ZANDARIN', 'http://www.zandarindivaniepoltrone.com/'),
(1225, 'ZANOTTA', 'http://www.zanotta.it/'),
(1226, 'ZAPPALORTO', 'http://www.zappalorto.it/'),
(1227, 'ZAVANELLA POMPILIO SRL', 'http://www.equipe.ru/firmdetail/2006'),
(1228, 'ZEROOMBRA', 'http://www.zeroombra.it/'),
(1229, 'ZEROOMBRA-EFFUSIONI DI LUCE', 'http://www.effusionidiluce.com/'),
(1230, 'ZICHELE', 'http://www.zichele.com/'),
(1231, 'ZILIO MOBILI SRL', 'http://www.zilio.it/'),
(1232, 'ZOEFTIG', 'http://www.zoeftig.com/'),
(1233, 'ZOFFANY', 'http://www.zoffany.com/'),
(1234, 'ZONCA', 'http://www.zonca.com/');

-- --------------------------------------------------------

--
-- Структура таблицы `delivery_body`
--

DROP TABLE IF EXISTS `delivery_body`;
CREATE TABLE IF NOT EXISTS `delivery_body` (
  `body_id` int(11) NOT NULL auto_increment,
  `body_headers` text,
  `body_text` text,
  PRIMARY KEY  (`body_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `delivery_body`
--


-- --------------------------------------------------------

--
-- Структура таблицы `delivery_person`
--

DROP TABLE IF EXISTS `delivery_person`;
CREATE TABLE IF NOT EXISTS `delivery_person` (
  `person_id` int(11) NOT NULL auto_increment,
  `person_email` varchar(255) NOT NULL default '',
  `person_admin` int(11) NOT NULL default '0',
  PRIMARY KEY  (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `delivery_person`
--


-- --------------------------------------------------------

--
-- Структура таблицы `delivery_queue`
--

DROP TABLE IF EXISTS `delivery_queue`;
CREATE TABLE IF NOT EXISTS `delivery_queue` (
  `queue_id` int(11) NOT NULL auto_increment,
  `queue_body` int(11) NOT NULL default '0',
  `queue_person` int(11) NOT NULL default '0',
  PRIMARY KEY  (`queue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `delivery_queue`
--


-- --------------------------------------------------------

--
-- Структура таблицы `delivery_storage`
--

DROP TABLE IF EXISTS `delivery_storage`;
CREATE TABLE IF NOT EXISTS `delivery_storage` (
  `body_id` int(11) NOT NULL auto_increment,
  `body_subject` varchar(255) NOT NULL default '',
  `body_email` varchar(255) NOT NULL default '',
  `body_name` varchar(255) NOT NULL default '',
  `body_text` text,
  PRIMARY KEY  (`body_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `delivery_storage`
--


-- --------------------------------------------------------

--
-- Структура таблицы `design`
--

DROP TABLE IF EXISTS `design`;
CREATE TABLE IF NOT EXISTS `design` (
  `design_id` int(11) NOT NULL auto_increment,
  `design_title` varchar(255) NOT NULL default '',
  `design_image` varchar(255) NOT NULL default '',
  `design_preview` varchar(255) NOT NULL default '',
  `design_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`design_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `design`
--

INSERT INTO `design` (`design_id`, `design_title`, `design_image`, `design_preview`, `design_order`) VALUES
(1, 'Спальня', '/upload/design/bed.jpg', '/upload/design/bed_preview_1.jpg', 1),
(2, 'Гостиная', '/upload/design/hall.jpg', '/upload/design/hall_preview_1.jpg', 9),
(3, 'Кухня', '/upload/design/kitchen.jpg', '/upload/design/kitchen_preview.jpg', 2),
(4, 'Объект на Рублевском шоссе', '/upload/design/rublevka.jpg', '/upload/design/rublevka_preview.jpg', 3),
(5, 'Квартира в классическом стиле', '/upload/design/classic.jpg', '/upload/design/classic_preview.jpg', 4),
(6, 'Объект 4', '/upload/design/4.jpg', '/upload/design/4_preview.jpg', 5),
(7, 'Объект 3', '/upload/design/3.jpg', '/upload/design/3_preview.jpg', 7),
(8, 'Объект 2', '/upload/design/2.jpg', '/upload/design/2_preview.jpg', 6),
(9, 'Объект 1', '/upload/design/1.jpg', '/upload/design/1_preview.jpg', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `word_id` int(11) NOT NULL auto_increment,
  `word_name` varchar(255) NOT NULL default '',
  `word_value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `dictionary`
--


-- --------------------------------------------------------

--
-- Структура таблицы `lang`
--

DROP TABLE IF EXISTS `lang`;
CREATE TABLE IF NOT EXISTS `lang` (
  `lang_id` int(11) NOT NULL auto_increment,
  `lang_title` varchar(255) NOT NULL default '',
  `lang_short` varchar(255) NOT NULL default '',
  `lang_name` varchar(255) NOT NULL default '',
  `lang_default` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `lang`
--

INSERT INTO `lang` (`lang_id`, `lang_title`, `lang_short`, `lang_name`, `lang_default`) VALUES
(1, 'Русский', 'Рус', 'ru', 1),
(2, 'Английский', 'Eng', 'en', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `layout`
--

DROP TABLE IF EXISTS `layout`;
CREATE TABLE IF NOT EXISTS `layout` (
  `layout_id` int(11) NOT NULL auto_increment,
  `layout_title` varchar(255) NOT NULL default '',
  `layout_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `layout`
--

INSERT INTO `layout` (`layout_id`, `layout_title`, `layout_name`) VALUES
(1, 'Шаблон главной страницы', 'index'),
(2, 'Шаблон внутренних страниц', 'default'),
(4, 'Шаблон для раздела "Наши работы"', 'design');

-- --------------------------------------------------------

--
-- Структура таблицы `layout_area`
--

DROP TABLE IF EXISTS `layout_area`;
CREATE TABLE IF NOT EXISTS `layout_area` (
  `area_id` int(11) NOT NULL auto_increment,
  `area_layout` int(11) NOT NULL default '0',
  `area_title` varchar(255) NOT NULL default '',
  `area_name` varchar(255) NOT NULL default '',
  `area_main` int(11) NOT NULL default '0',
  `area_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `layout_area`
--

INSERT INTO `layout_area` (`area_id`, `area_layout`, `area_title`, `area_name`, `area_main`, `area_order`) VALUES
(2, 2, 'Контентная область', 'content', 1, 1),
(5, 2, 'Главное меню', 'menu', 0, 2),
(7, 1, 'Социальные сети', 'social', 0, 1),
(8, 2, 'Социальные сети', 'social', 0, 3),
(9, 1, 'Контентная область', 'content', 1, 2),
(10, 4, 'Социальные сети', 'social', 0, 3),
(11, 4, 'Контентная область', 'content', 1, 1),
(12, 4, 'Главное меню', 'menu', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL auto_increment,
  `menu_parent` int(11) NOT NULL default '0',
  `menu_title` varchar(255) NOT NULL default '',
  `menu_page` int(11) NOT NULL default '0',
  `menu_url` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `menu_active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_parent`, `menu_title`, `menu_page`, `menu_url`, `menu_order`, `menu_active`) VALUES
(1, 0, 'Главное меню', 0, '', 1, 1),
(3, 1, 'О компании', 3, '', 2, 1),
(5, 1, 'Расчет стоимости мебели', 5, '', 4, 1),
(6, 1, 'Выбор мебели<br/>по сайту фабрики', 6, '', 3, 1),
(7, 1, 'Наши работы', 7, '', 5, 1),
(8, 1, 'Контакты', 4, '', 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `module_id` int(11) NOT NULL auto_increment,
  `module_title` varchar(255) NOT NULL default '',
  `module_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `module`
--

INSERT INTO `module` (`module_id`, `module_title`, `module_name`) VALUES
(1, 'Текст', 'text'),
(3, 'Меню', 'menu'),
(4, 'Заказ', 'order'),
(5, 'Бренды', 'brand'),
(6, 'Наши работы', 'design');

-- --------------------------------------------------------

--
-- Структура таблицы `module_param`
--

DROP TABLE IF EXISTS `module_param`;
CREATE TABLE IF NOT EXISTS `module_param` (
  `param_id` int(11) NOT NULL auto_increment,
  `param_module` int(11) NOT NULL default '0',
  `param_title` varchar(255) NOT NULL default '',
  `param_type` varchar(255) NOT NULL default '',
  `param_name` varchar(255) NOT NULL default '',
  `param_table` varchar(255) NOT NULL default '',
  `param_default` varchar(255) NOT NULL default '',
  `param_require` int(11) NOT NULL default '0',
  `param_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`param_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `module_param`
--

INSERT INTO `module_param` (`param_id`, `param_module`, `param_title`, `param_type`, `param_name`, `param_table`, `param_default`, `param_require`, `param_order`) VALUES
(1, 1, 'Текст в блоке', 'table', 'id', 'text', '', 1, 1),
(4, 3, 'Меню в блоке', 'table', 'id', 'menu', '', 1, 1),
(5, 3, 'Шаблон меню', 'select', 'template', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `object`
--

DROP TABLE IF EXISTS `object`;
CREATE TABLE IF NOT EXISTS `object` (
  `object_id` int(11) NOT NULL auto_increment,
  `object_parent` int(11) NOT NULL default '0',
  `object_title` varchar(255) NOT NULL default '',
  `object_name` varchar(255) NOT NULL default '',
  `object_order` int(11) NOT NULL default '0',
  `object_active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `object`
--

INSERT INTO `object` (`object_id`, `object_parent`, `object_title`, `object_name`, `object_order`, `object_active`) VALUES
(1, 0, 'Контент', '', 1, 1),
(2, 1, 'Тексты', 'text', 1, 1),
(4, 0, 'Сайт', '', 2, 1),
(5, 4, 'Разделы', 'page', 1, 1),
(6, 4, 'Блоки', 'block', 2, 1),
(7, 4, 'Шаблоны', 'layout', 3, 1),
(8, 4, 'Модули', 'module', 5, 1),
(9, 4, 'Параметры модулей', 'module_param', 6, 1),
(10, 4, 'Значения параметров модулей', 'param_value', 7, 1),
(11, 0, 'Система', '', 3, 1),
(12, 11, 'Языки', 'lang', 1, 1),
(13, 11, 'Настройки', 'preference', 2, 1),
(14, 11, 'Системные слова', 'dictionary', 3, 0),
(15, 11, 'Системные разделы', 'object', 4, 1),
(16, 11, 'Администраторы', 'admin', 5, 1),
(17, 0, 'Утилиты', '', 4, 1),
(18, 17, 'Файл-менеджер', 'fm', 1, 1),
(19, 17, 'Почтовая рассылка', 'delivery', 2, 0),
(20, 1, 'Меню', 'menu', 3, 1),
(21, 4, 'Области шаблонов', 'layout_area', 4, 1),
(22, 11, 'Роли', 'role', 6, 1),
(23, 17, 'Лист рассылки', 'delivery_person', 3, 0),
(24, 1, 'Бренды', 'brand', 4, 1),
(25, 1, 'Наши работы', 'design', 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL auto_increment,
  `page_parent` int(11) NOT NULL default '0',
  `page_layout` int(11) NOT NULL default '0',
  `page_title` varchar(255) NOT NULL default '',
  `page_name` varchar(255) NOT NULL default '',
  `page_folder` int(11) NOT NULL default '0',
  `meta_title` text,
  `meta_keywords` text,
  `meta_description` text,
  `page_order` int(11) NOT NULL default '0',
  `page_active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`page_id`, `page_parent`, `page_layout`, `page_title`, `page_name`, `page_folder`, `meta_title`, `meta_keywords`, `meta_description`, `page_order`, `page_active`) VALUES
(1, 0, 1, 'Главная страница', '', 0, 'MEBEL555: мебель и предметы интерьера от ведущих производителей', 'мебель, итальянская мебель, интерьер, меебль под заказ, европейская мебель, гарнитуры, диваны, спальни, дизайн, эксклюзтивные поставки', 'MEBEL555: наша компания предлагает мебель и предметы интерьера от ведущих производителей Европы и Азии', 1, 1),
(2, 1, 2, 'Ошибка 404', '404', 0, 'MEBEL555: страница не найдена', 'мебель, итальянская мебель, интерьер, мебель под заказ, европейская мебель, гарнитуры, диваны, спальни, дизайн, эксклюзтивные поставки', 'Страница не найдена', 6, 1),
(3, 1, 2, 'О компании', 'about', 0, 'MEBEL555: о компании', 'мебель, итальянская мебель, интерьер, меебль под заказ, европейская мебель, гарнитуры, диваны, спальни, дизайн, эксклюзтивные поставки', 'MEBEL555: о компании, наш опыт работы на рынке эксклюзивной мебели', 1, 1),
(4, 1, 2, 'Контакты', 'contact', 0, 'MEBEL555: контакты', 'мебель, итальянская мебель, интерьер, мебель под заказ, европейская мебель, гарнитуры, диваны, спальни, дизайн, эксклюзтивные поставки', 'MEBEL555: контакты, телефоны и электронная почта нашей компании', 5, 1),
(5, 1, 2, 'Расчет стоимости мебели', 'order', 0, 'MEBEL555: заявка на расчет стоимости мебели', 'мебель, итальянская мебель, интерьер, меебль под заказ, европейская мебель, гарнитуры, диваны, спальни, дизайн, эксклюзтивные поставки', 'MEBEL555: отправка заявки на расчет стоимости мебели', 3, 1),
(6, 1, 2, 'Выбор мебели по сайту фабрики', 'brand', 0, 'MEBEL555: выбор производителя мебели', 'мебель, итальянская мебель, интерьер, меебль под заказ, европейская мебель, гарнитуры, диваны, спальни, дизайн, эксклюзтивные поставки', 'Выбор производителя мебели для последующего поиска и подбора мебели по каталогу.', 2, 1),
(7, 1, 4, 'Наши работы', 'design', 0, 'MEBEL555: наши работы', 'мебель, итальянская мебель, интерьер, мебель под заказ, европейская мебель, гарнитуры, диваны, спальни, кабинеты, кухонный гарнитур, дизайн, эксклюзтивные поставки', 'MEBEL555: примеры оформления дизайна квартир и коттеджей с помощью выбранной у нас мебели', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `param_value`
--

DROP TABLE IF EXISTS `param_value`;
CREATE TABLE IF NOT EXISTS `param_value` (
  `value_id` int(11) NOT NULL auto_increment,
  `value_param` int(11) NOT NULL default '0',
  `value_title` varchar(255) NOT NULL default '',
  `value_content` varchar(255) NOT NULL default '',
  `value_default` int(11) NOT NULL default '0',
  PRIMARY KEY  (`value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `param_value`
--

INSERT INTO `param_value` (`value_id`, `value_param`, `value_title`, `value_content`, `value_default`) VALUES
(3, 5, 'Главное меню', 'main', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `preference`
--

DROP TABLE IF EXISTS `preference`;
CREATE TABLE IF NOT EXISTS `preference` (
  `preference_id` int(11) NOT NULL auto_increment,
  `preference_title` varchar(255) NOT NULL default '',
  `preference_name` varchar(255) NOT NULL default '',
  `preference_value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`preference_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `preference`
--

INSERT INTO `preference` (`preference_id`, `preference_title`, `preference_name`, `preference_value`) VALUES
(1, 'Email для сообщений с формы заказа', 'order_email', 'i@clubmebel.ru'),
(2, 'Тема для сообщений с формы заказа', 'order_subject', 'Заявка на расчет мебели - Mebel555.com'),
(3, 'Обратный адрес для писем с сайта', 'from_email', 'no-reply@mebel555.com'),
(4, 'Имя отправителя для писем с сайта', 'from_name', 'Сайт "Mebel 555"');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL auto_increment,
  `role_title` varchar(255) NOT NULL default '',
  `role_default` int(11) NOT NULL default '0',
  PRIMARY KEY  (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`role_id`, `role_title`, `role_default`) VALUES
(1, 'Главный администратор', 1),
(2, 'Контент-менеджер', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `role_object`
--

DROP TABLE IF EXISTS `role_object`;
CREATE TABLE IF NOT EXISTS `role_object` (
  `role_id` int(11) NOT NULL default '0',
  `object_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role_object`
--

INSERT INTO `role_object` (`role_id`, `object_id`) VALUES
(2, 1),
(2, 2),
(2, 20),
(2, 24),
(2, 25),
(2, 11),
(2, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `text`
--

DROP TABLE IF EXISTS `text`;
CREATE TABLE IF NOT EXISTS `text` (
  `text_id` int(11) NOT NULL auto_increment,
  `text_tag` varchar(255) NOT NULL default '',
  `text_title` varchar(255) NOT NULL default '',
  `text_content` text,
  PRIMARY KEY  (`text_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `text`
--

INSERT INTO `text` (`text_id`, `text_tag`, `text_title`, `text_content`) VALUES
(2, '404', 'Ошибка 404', '<div id="error404">\r\n	Страница не найдена</div>\r\n<div id="content">\r\n	<h1>\r\n		Страница не найдена</h1>\r\n</div>\r\n'),
(3, 'about', 'О компании', '<div id="clear" style="text-align: justify; ">\r\n	<strong>&nbsp; &nbsp; &nbsp;</strong> О компании.</div>\r\n<div id="content">\r\n	<p style="text-align: justify; ">\r\n		Компания &laquo;Mebel555&raquo; является крупным поставщиком предметов интерьера на российский рынок от производителей мебели из Европы, Америки и Азии. &laquo;Mebel555&raquo; создана в 1996 году и с этого времени зарекомендовала себя как <strong>надежный поставщик</strong> мебели.</p>\r\n	<p style="text-align: justify; ">\r\n		&nbsp;</p>\r\n	<p style="text-align: justify; ">\r\n		Более двух тысяч клиентов компании &laquo;Mebel555&raquo; высоко отзываются о <strong>качестве услуг</strong>, предоставляемых нашей компанией. Сотрудники &laquo;Mebel555&raquo; регулярно посещают мебельные фабрики и обладают обширными знаниями в области комплектации интерьера.</p>\r\n	<p style="text-align: justify; ">\r\n		&nbsp;</p>\r\n	<p style="text-align: justify; ">\r\n		За долгое время работы с мировыми мебельными брендами &laquo;Mebel555&raquo; получила самые лучшие условия и скидки от производителей. Поэтому мы можем предложить Вам <strong>самые низкие цены</strong> на рынке.</p>\r\n	<p style="text-align: justify; ">\r\n		&nbsp;</p>\r\n	<p style="text-align: justify; ">\r\n		&nbsp; &nbsp; &nbsp; Надеемся увидеть Вас среди наших клиентов.</p>\r\n	<p style="text-align: justify; ">\r\n		&nbsp;</p>\r\n	<p style="text-align: justify; ">\r\n		С уважением,</p>\r\n	<p style="text-align: justify; ">\r\n		<em>Руководство компании &laquo;Mebel555&raquo;</em></p>\r\n</div>\r\n'),
(4, 'contact', 'Контакты', '<div id="contact">\r\n	<strong>Контакты</strong></div>\r\n<div id="content">\r\n	<p>\r\n		<strong>123242, г. Москва, ул. Красная Пресня, д. 9</strong></p>\r\n	<p>\r\n		<strong>Наши телефоны:</strong></p>\r\n	<p>\r\n		<strong>8-495-792-03-63<br />\r\n		8-903-792-03-63</strong></p>\r\n	<p>\r\n		<strong><a href="mailto:mebel555@yahoo.com">mebel555@yahoo.com</a></strong></p>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n'),
(5, 'social', 'Социальные сети', '<div id="social">\r\n	<a href="/" id="ok">Одноклассники</a> <a href="/" id="vk">В контакте</a> <a href="/" id="tw">Twitter</a> <a href="/" id="fb">Facebook</a></div>\r\n'),
(6, 'index', 'Главная страница', '<div>'),
(7, 'order_letter', 'Письмо-заявка', '<p>\r\n	Получена новая заявка на расчет мебели:</p>\r\n<p>\r\n	Фабрика производителя: {brand}<br />\r\n	Наименование позиции: {title}<br />\r\n	Артикул: {article}<br />\r\n	Отделка: {decoration}<br />\r\n	Категория ткани: {material}<br />\r\n	Количество: {quantity}<br />\r\n	Контактный телефон заказчика: {phone}</p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `translate`
--

DROP TABLE IF EXISTS `translate`;
CREATE TABLE IF NOT EXISTS `translate` (
  `table_name` varchar(255) NOT NULL default '',
  `field_name` varchar(255) NOT NULL default '',
  `table_record` int(11) NOT NULL default '0',
  `record_lang` int(11) NOT NULL default '0',
  `record_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `translate`
--

