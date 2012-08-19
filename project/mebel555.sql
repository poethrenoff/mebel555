# SQL Manager 2010 for MySQL 4.5.0.9
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : mebel555


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

#
# Structure for the `admin` table : 
#

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `admin_title` varchar(255) NOT NULL default '',
  `admin_login` varchar(255) NOT NULL default '',
  `admin_password` varchar(255) NOT NULL default '',
  `admin_email` varchar(255) NOT NULL default '',
  `admin_active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `admin_role` table : 
#

DROP TABLE IF EXISTS `admin_role`;

CREATE TABLE `admin_role` (
  `admin_id` int(11) NOT NULL default '0',
  `role_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `block` table : 
#

DROP TABLE IF EXISTS `block`;

CREATE TABLE `block` (
  `block_id` int(11) NOT NULL auto_increment,
  `block_page` int(11) NOT NULL default '0',
  `block_module` int(11) NOT NULL default '0',
  `block_title` varchar(255) NOT NULL default '',
  `block_area` int(11) NOT NULL default '0',
  PRIMARY KEY  (`block_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# Structure for the `block_param` table : 
#

DROP TABLE IF EXISTS `block_param`;

CREATE TABLE `block_param` (
  `block` int(11) NOT NULL default '0',
  `param` int(11) NOT NULL default '0',
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `brand` table : 
#

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL auto_increment,
  `brand_title` varchar(255) NOT NULL default '',
  `brand_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1480 DEFAULT CHARSET=utf8;

#
# Structure for the `delivery_body` table : 
#

DROP TABLE IF EXISTS `delivery_body`;

CREATE TABLE `delivery_body` (
  `body_id` int(11) NOT NULL auto_increment,
  `body_headers` text,
  `body_text` text,
  PRIMARY KEY  (`body_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `delivery_person` table : 
#

DROP TABLE IF EXISTS `delivery_person`;

CREATE TABLE `delivery_person` (
  `person_id` int(11) NOT NULL auto_increment,
  `person_email` varchar(255) NOT NULL default '',
  `person_admin` int(11) NOT NULL default '0',
  PRIMARY KEY  (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `delivery_queue` table : 
#

DROP TABLE IF EXISTS `delivery_queue`;

CREATE TABLE `delivery_queue` (
  `queue_id` int(11) NOT NULL auto_increment,
  `queue_body` int(11) NOT NULL default '0',
  `queue_person` int(11) NOT NULL default '0',
  PRIMARY KEY  (`queue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `delivery_storage` table : 
#

DROP TABLE IF EXISTS `delivery_storage`;

CREATE TABLE `delivery_storage` (
  `body_id` int(11) NOT NULL auto_increment,
  `body_subject` varchar(255) NOT NULL default '',
  `body_email` varchar(255) NOT NULL default '',
  `body_name` varchar(255) NOT NULL default '',
  `body_text` text,
  PRIMARY KEY  (`body_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `design` table : 
#

DROP TABLE IF EXISTS `design`;

CREATE TABLE `design` (
  `design_id` int(11) NOT NULL auto_increment,
  `design_title` varchar(255) NOT NULL default '',
  `design_image` varchar(255) NOT NULL default '',
  `design_preview` varchar(255) NOT NULL default '',
  `design_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`design_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Structure for the `dictionary` table : 
#

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `word_id` int(11) NOT NULL auto_increment,
  `word_name` varchar(255) NOT NULL default '',
  `word_value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `lang` table : 
#

DROP TABLE IF EXISTS `lang`;

CREATE TABLE `lang` (
  `lang_id` int(11) NOT NULL auto_increment,
  `lang_title` varchar(255) NOT NULL default '',
  `lang_short` varchar(255) NOT NULL default '',
  `lang_name` varchar(255) NOT NULL default '',
  `lang_default` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Structure for the `layout` table : 
#

DROP TABLE IF EXISTS `layout`;

CREATE TABLE `layout` (
  `layout_id` int(11) NOT NULL auto_increment,
  `layout_title` varchar(255) NOT NULL default '',
  `layout_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Structure for the `layout_area` table : 
#

DROP TABLE IF EXISTS `layout_area`;

CREATE TABLE `layout_area` (
  `area_id` int(11) NOT NULL auto_increment,
  `area_layout` int(11) NOT NULL default '0',
  `area_title` varchar(255) NOT NULL default '',
  `area_name` varchar(255) NOT NULL default '',
  `area_main` int(11) NOT NULL default '0',
  `area_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Structure for the `menu` table : 
#

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL auto_increment,
  `menu_parent` int(11) NOT NULL default '0',
  `menu_title` varchar(255) NOT NULL default '',
  `menu_page` int(11) NOT NULL default '0',
  `menu_url` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `menu_active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Structure for the `module` table : 
#

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL auto_increment,
  `module_title` varchar(255) NOT NULL default '',
  `module_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Structure for the `module_param` table : 
#

DROP TABLE IF EXISTS `module_param`;

CREATE TABLE `module_param` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Structure for the `object` table : 
#

DROP TABLE IF EXISTS `object`;

CREATE TABLE `object` (
  `object_id` int(11) NOT NULL auto_increment,
  `object_parent` int(11) NOT NULL default '0',
  `object_title` varchar(255) NOT NULL default '',
  `object_name` varchar(255) NOT NULL default '',
  `object_order` int(11) NOT NULL default '0',
  `object_active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Structure for the `page` table : 
#

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Structure for the `param_value` table : 
#

DROP TABLE IF EXISTS `param_value`;

CREATE TABLE `param_value` (
  `value_id` int(11) NOT NULL auto_increment,
  `value_param` int(11) NOT NULL default '0',
  `value_title` varchar(255) NOT NULL default '',
  `value_content` varchar(255) NOT NULL default '',
  `value_default` int(11) NOT NULL default '0',
  PRIMARY KEY  (`value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Structure for the `preference` table : 
#

DROP TABLE IF EXISTS `preference`;

CREATE TABLE `preference` (
  `preference_id` int(11) NOT NULL auto_increment,
  `preference_title` varchar(255) NOT NULL default '',
  `preference_name` varchar(255) NOT NULL default '',
  `preference_value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`preference_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Structure for the `role` table : 
#

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL auto_increment,
  `role_title` varchar(255) NOT NULL default '',
  `role_default` int(11) NOT NULL default '0',
  PRIMARY KEY  (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `role_object` table : 
#

DROP TABLE IF EXISTS `role_object`;

CREATE TABLE `role_object` (
  `role_id` int(11) NOT NULL default '0',
  `object_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `text` table : 
#

DROP TABLE IF EXISTS `text`;

CREATE TABLE `text` (
  `text_id` int(11) NOT NULL auto_increment,
  `text_tag` varchar(255) NOT NULL default '',
  `text_title` varchar(255) NOT NULL default '',
  `text_content` text,
  PRIMARY KEY  (`text_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Structure for the `translate` table : 
#

DROP TABLE IF EXISTS `translate`;

CREATE TABLE `translate` (
  `table_name` varchar(255) NOT NULL default '',
  `field_name` varchar(255) NOT NULL default '',
  `table_record` int(11) NOT NULL default '0',
  `record_lang` int(11) NOT NULL default '0',
  `record_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for the `admin` table  (LIMIT 0,500)
#

INSERT INTO `admin` (`admin_id`, `admin_title`, `admin_login`, `admin_password`, `admin_email`, `admin_active`) VALUES 
  (1,'Главный администратор','admin','21232f297a57a5a743894a0e4a801fc3','admin@example.ru',1);
COMMIT;

#
# Data for the `admin_role` table  (LIMIT 0,500)
#

INSERT INTO `admin_role` (`admin_id`, `role_id`) VALUES 
  (1,1);
COMMIT;

#
# Data for the `block` table  (LIMIT 0,500)
#

INSERT INTO `block` (`block_id`, `block_page`, `block_module`, `block_title`, `block_area`) VALUES 
  (7,3,1,'О компании',2),
  (8,3,3,'Главное меню',5),
  (9,4,1,'Контакты',2),
  (10,4,3,'Главное меню',5),
  (11,1,1,'Социальные сети',7),
  (12,3,1,'Социальные сети',8),
  (13,4,1,'Социальные сети',8),
  (14,1,1,'Контентная область',9),
  (15,2,1,'404 ошибка',2),
  (16,2,3,'Главное меню',5),
  (17,2,1,'Социальные сети',8),
  (18,5,4,'Расчет стоимости мебели',2),
  (19,5,3,'Главное меню',5),
  (20,5,1,'Социальные сети',8),
  (21,6,5,'Выбор мебели по сайту фабрики',2),
  (22,6,3,'Главное меню',5),
  (23,6,1,'Социальные сети',8),
  (24,7,6,'Наши работы',11),
  (25,7,3,'Главное меню',12),
  (26,7,1,'Социальные сети',10);
COMMIT;

#
# Data for the `block_param` table  (LIMIT 0,500)
#

INSERT INTO `block_param` (`block`, `param`, `value`) VALUES 
  (9,1,'4'),
  (8,5,'3'),
  (8,4,'1'),
  (7,1,'3'),
  (15,1,'2'),
  (11,1,'5'),
  (10,4,'1'),
  (10,5,'3'),
  (12,1,'5'),
  (13,1,'5'),
  (14,1,'6'),
  (16,4,'1'),
  (16,5,'3'),
  (17,1,'5'),
  (22,5,'3'),
  (19,5,'3'),
  (19,4,'1'),
  (20,1,'5'),
  (22,4,'1'),
  (23,1,'5'),
  (25,5,'3'),
  (25,4,'1'),
  (26,1,'5');
COMMIT;

#
# Data for the `brand` table  (LIMIT 0,500)
#

INSERT INTO `brand` (`brand_id`, `brand_title`, `brand_url`) VALUES 
  (1,'4 MARIANI','http://www.i4mariani.it/'),
  (2,'A.BERNAZZOLI',''),
  (3,'ABBONDINTERNI',''),
  (4,'ABC CUCINE',''),
  (5,'ABDON Y LUCAS',''),
  (6,'Abhika',''),
  (7,'ACERBIS',''),
  (8,'ACRILA',''),
  (9,'ADONIS PAULI',''),
  (10,'ADRENALINA',''),
  (11,'ADRIANA LOHMANN',''),
  (12,'AERRE CUCINE',''),
  (13,'AGAPE',''),
  (14,'AGMA LUX',''),
  (15,'AGORA-EDONE',''),
  (16,'AGOSTINI',''),
  (17,'AGRESTI',''),
  (18,'AKANTO',''),
  (19,'ALAIN SAIN JOANIS',''),
  (20,'ALBANILIGHTING',''),
  (21,'ALBED',''),
  (22,'ALBERTA SALOTTI',''),
  (23,'Alberto@Mario Ghezzani',''),
  (24,'ALBIFLEX',''),
  (25,'ALBIZZI',''),
  (26,'ALBIZZI',''),
  (27,'ALBUM',''),
  (28,'Aldo Moletta',''),
  (29,'ALESSI',''),
  (30,'ALF',''),
  (31,'ALF',''),
  (32,'ALF',''),
  (33,'ALIAS',''),
  (34,'ALIVAR',''),
  (35,'ALLEDLINE',''),
  (36,'ALPE',''),
  (37,'Alpes-Inox',''),
  (38,'ALPUCH',''),
  (39,'ALT LUACIALTERNATIVE',''),
  (40,'ALTA CORTE',''),
  (41,'Alta, Armobil',''),
  (42,'Altamoda',''),
  (43,'ALTHON',''),
  (44,'Altoni',''),
  (45,'Altrenotti',''),
  (46,'AMC Italians Light in Porcelain',''),
  (47,'AMELI HOME',''),
  (48,'AMELI SEDIE',''),
  (49,'Andrea Fanfani',''),
  (50,'Andreu World',''),
  (51,'Andrew Martin',''),
  (52,'ANGELA BIZZARRI',''),
  (53,'ANGELO CAPPELLINI',''),
  (54,'ANGELO CAPPELLINI',''),
  (55,'ANGELO CAPPELLINI',''),
  (56,'ANGELO MONZIO COMPAGNONI',''),
  (57,'ANNE GELBARD',''),
  (58,'Annidale Colombo',''),
  (59,'ANTARES CUCINA',''),
  (60,'Antica Bassano',''),
  (61,'ANTICA TAPEZZERIA DUCALE',''),
  (62,'Antico Borgo',''),
  (63,'Antico é',''),
  (64,'ANTIDIVA',''),
  (65,'ANTOINE MOTARD',''),
  (66,'Antonelli Maoravio',''),
  (67,'Antonelloitalia',''),
  (68,'AntonelloItalia',''),
  (69,'AR ARREDAMNETI',''),
  (70,'ARBI',''),
  (71,'ARCA',''),
  (72,'ARCADIA PORTE',''),
  (73,'ARCARI',''),
  (74,'Arcariarredamenti',''),
  (75,'Archeos',''),
  (76,'Arctic Designs',''),
  (77,'ARDEMIRR',''),
  (78,'AR-DUE',''),
  (79,'ARESLINE',''),
  (80,'ARIZZI',''),
  (81,'ARKETIPO',''),
  (82,'Armando Rho',''),
  (83,'ARMANI/DADA',''),
  (84,'ARMENTANI MURANO GLASS',''),
  (85,'ARPER',''),
  (86,'ARRBEN',''),
  (87,'Arredamenti abbondi',''),
  (88,'ARREDO LUCE',''),
  (89,'ARREX',''),
  (90,'ARRITAL CUCINE SPA',''),
  (91,'Art et Floritude',''),
  (92,'ARTALDA',''),
  (93,'ARTE ANTIQUA',''),
  (94,'ARTE BROTTO',''),
  (95,'ARTE PARQUET',''),
  (96,'ARTE VENEZIANA',''),
  (97,'ARTE VENEZIANA',''),
  (98,'Artea',''),
  (99,'Artek',''),
  (100,'ARTES MOBLE',''),
  (101,'ARTES MOBLE',''),
  (102,'ARTESTUDIO CUCINE',''),
  (103,'Artex',''),
  (104,'ARTEX',''),
  (105,'ARTHESI',''),
  (106,'ARTHUR BRETT',''),
  (107,'Arthur Brett',''),
  (108,'ARTIFICIA',''),
  (109,'AR-TRE',''),
  (110,'ARTURO ESCUDERO',''),
  (111,'ARVE STYLE',''),
  (112,'Ashley Wilde',''),
  (113,'ASNAGHI',''),
  (114,'ASTER CUCINE',''),
  (115,'ASTOR MOBILI',''),
  (116,'ASTRA',''),
  (117,'Atelier des Brou',''),
  (118,'Atena',''),
  (119,'Athena',''),
  (120,'ATMOSPHERA',''),
  (121,'AUBERLET ET LAURENT',''),
  (122,'Augusto Garavaglia',''),
  (123,'AURELIANO TOSO',''),
  (124,'Aurora',''),
  (125,'AUTIERO DIFUSION',''),
  (126,'AV MAZEGA',''),
  (127,'AXIA',''),
  (128,'AXIL',''),
  (129,'AXOLIGHT',''),
  (130,'B&B Italia',''),
  (131,'B.D. Barselona Design',''),
  (132,'BABINI',''),
  (133,'BACCI STILE',''),
  (134,'BACOS',''),
  (135,'BAGA\\Patrizia Gurgan',''),
  (136,'BAGA\\Patrizia Gurgan',''),
  (137,'Bagno Piu',''),
  (138,'BAGNO&ASSOCIATI',''),
  (139,'Baker',''),
  (140,'Bakokkogroup',''),
  (141,'BALLANCIN',''),
  (142,'BALZAROTTI',''),
  (143,'BAMAR',''),
  (144,'BAMAR',''),
  (145,'BAMAX',''),
  (146,'BANCI',''),
  (147,'BARAUSSE',''),
  (148,'BARJ BUZZONI',''),
  (149,'Barneby Gates',''),
  (150,'Barnini Oseo',''),
  (151,'BAROVIER&TOSO',''),
  (152,'BASSI FRATELLI',''),
  (153,'BASTEX',''),
  (154,'Batistella',''),
  (155,'BAU Angelo e Figlie Snc',''),
  (156,'BAUMFORMAT',''),
  (157,'BAUXT',''),
  (158,'BBB',''),
  (159,'Beaudesert',''),
  (160,'Beaumont & Fletcher',''),
  (161,'Belcor',''),
  (162,'Belcor',''),
  (163,'BELLART',''),
  (164,'BELLAVIA',''),
  (165,'Belligotti',''),
  (166,'BELLO SEDIE',''),
  (167,'BENEDETTI',''),
  (168,'Benetti',''),
  (169,'BERDONDINI',''),
  (170,'Bernard Siguer',''),
  (171,'BERNAZZOLI',''),
  (172,'BERNINI',''),
  (173,'BERTELE MOBILI',''),
  (174,'BERTOLOTTO PORTE',''),
  (175,'BESANA',''),
  (176,'Best & Lloyd',''),
  (177,'BETAMOBILI',''),
  (178,'Bevan Funnel',''),
  (179,'BI.GI.BI',''),
  (180,'Bianchini',''),
  (181,'BIANCHINI',''),
  (182,'Bianchini&Capponi',''),
  (183,'BIBA SALOTTI',''),
  (184,'Biefbi',''),
  (185,'BILLO E PALLINA',''),
  (186,'BILLO E PALLINA',''),
  (187,'BIMAX',''),
  (188,'BIREX',''),
  (189,'BIREX',''),
  (190,'BISAZZA',''),
  (191,'Bisazza Home',''),
  (192,'BITOSSI',''),
  (193,'BITOSSI',''),
  (194,'BITOSSI LUCIANO',''),
  (195,'Bizzotto',''),
  (196,'BK ITALIA',''),
  (197,'BL mobili',''),
  (198,'BL Vanity',''),
  (199,'BL Vanity',''),
  (200,'Blanc d''Ivoir',''),
  (201,'Blendworth',''),
  (202,'Bler nature',''),
  (203,'BLOCH',''),
  (204,'BLUMARINE',''),
  (205,'BM Style',''),
  (206,'BMB',''),
  (207,'BMP MOBILI',''),
  (208,'Boca do Lobo',''),
  (209,'BOCCI',''),
  (210,'BODEMA',''),
  (211,'BOISERIE ITALIA ',''),
  (212,'BOLUCE',''),
  (213,'BOLZAN',''),
  (214,'BOMIA',''),
  (215,'BON DE LIVRAISON',''),
  (216,'Bonaldo',''),
  (217,'BONALDO',''),
  (218,'BONTEMPI CASA',''),
  (219,'Borderline',''),
  (220,'BORDIGNON CAMILLO',''),
  (221,'Bordoni Leathers',''),
  (222,'BORGHI',''),
  (223,'BORGIA RUANO',''),
  (224,'BOSA',''),
  (225,'BOSAL',''),
  (226,'BOSAL',''),
  (227,'Bottega Verde',''),
  (228,'BOUNTY',''),
  (229,'Bova',''),
  (230,'BPA',''),
  (231,'BRABD VAN EGMOND',''),
  (232,'Bradley',''),
  (233,'BRAGA',''),
  (234,'BRALCO',''),
  (235,'Bretz',''),
  (236,'BRF',''),
  (237,'Brianform',''),
  (238,'Brigitte Forestier',''),
  (239,'British Trimmings',''),
  (240,'BROCANTIQUE',''),
  (241,'BRONZES DE FRANCE',''),
  (242,'Bruhl',''),
  (243,'BRUMBERG',''),
  (244,'BRUMMEL CUCINE',''),
  (245,'BRUN DE VIAN TIRAM',''),
  (246,'Bruno Piombini',''),
  (247,'BRUNO ZAMPA',''),
  (248,'Brunschwig & Fils',''),
  (249,'Bryony Alexander',''),
  (250,'BTC',''),
  (251,'BUCALOSSI',''),
  (252,'BULO',''),
  (253,'BULTHAUP',''),
  (254,'BUSATO',''),
  (255,'BUSNELLI',''),
  (256,'BUSNELLI ADAMO',''),
  (257,'Bylaw',''),
  (258,'C&C Milano',''),
  (259,'CA’D’ORO',''),
  (260,'Cabas',''),
  (261,'CACCARO',''),
  (262,'CADORE',''),
  (263,'CADORE',''),
  (264,'CA''d''ORO',''),
  (265,'CAFISSI',''),
  (266,'CAIMI BREVETTI',''),
  (267,'Calamandrei chianini',''),
  (268,'CALCHER',''),
  (269,'Callesella',''),
  (270,'Calligaris',''),
  (271,'CALLIGARIS',''),
  (272,'CALOI',''),
  (273,'CAMEL GROUP',''),
  (274,'CANELLA',''),
  (275,'CANGINI & TUCCI',''),
  (276,'CANTALUPPI SRL',''),
  (277,'CANTIERO',''),
  (278,'CANTORI',''),
  (279,'CANTORI',''),
  (280,'CA''ONORAI',''),
  (281,'CAPO D''OPERA',''),
  (282,'CAPPELLETTI',''),
  (283,'CAPPELLINI',''),
  (284,'CAPPELLINI INTAGLI',''),
  (285,'CARBOXX',''),
  (286,'Carl Hansen & Son',''),
  (287,'CARLESSO',''),
  (288,'CARLO TRAVIGIANTI DI RICCARDO',''),
  (289,'CARMA CUCINE',''),
  (290,'Caroti',''),
  (291,'CARPANELLI',''),
  (292,'Carpanesi',''),
  (293,'CARPANI F.LLI SNC',''),
  (294,'Carre',''),
  (295,'CARTEI',''),
  (296,'Casa +39',''),
  (297,'Casa Bella Collection',''),
  (298,'CASA DESIGN',''),
  (299,'CASA NOBILE',''),
  (300,'Casa Pagoda',''),
  (301,'Casa Zeta',''),
  (302,'CASAMANIA',''),
  (303,'CASAMILANO',''),
  (304,'CASPANI TINO GROUP',''),
  (305,'CASPRINI GRUPPO INDUSTRILAE',''),
  (306,'Cassina',''),
  (307,'CASTELLAN',''),
  (308,'CASTELLAN',''),
  (309,'CASTELLAN',''),
  (310,'CASTELLO',''),
  (311,'CASTELLO',''),
  (312,'CATELLANI&SMITH',''),
  (313,'Cattelan Italia',''),
  (314,'Cattelan Italia',''),
  (315,'CAVA',''),
  (316,'CB Collection',''),
  (317,'CECCOTTI',''),
  (318,'CECCOTTI',''),
  (319,'Cecil Beaton Fabrics',''),
  (320,'Celato Rito',''),
  (321,'Cenedese',''),
  (322,'CEPPI STYLE',''),
  (323,'CERAMICA GLOBO',''),
  (324,'Cerasa',''),
  (325,'CERRUTI BALERI ITALIA',''),
  (326,'CESAR ARREDAMENTI',''),
  (327,'Chadder',''),
  (328,'Charles Burger',''),
  (329,'Chase Erwin',''),
  (330,'Chelini',''),
  (331,'Chelini',''),
  (332,'Chelsom',''),
  (333,'CHELSOM',''),
  (334,'CHESTER',''),
  (335,'Chevillotte',''),
  (336,'CHIAVEGATO',''),
  (337,'CHICCA ORLANDO',''),
  (338,'Christine Kroencke',''),
  (339,'Christopher Farr',''),
  (340,'Christopher Guy',''),
  (341,'CHTIOUI MEUBLES',''),
  (342,'CIA INTERNATIONAL',''),
  (343,'CIACCI',''),
  (344,'CIERRE',''),
  (345,'CINOVA',''),
  (346,'CIS-Salotti',''),
  (347,'CITTERIO',''),
  (348,'Citti',''),
  (349,'CIULLI',''),
  (350,'CIULLI',''),
  (351,'CL ITALIA',''),
  (352,'CL ITALIA',''),
  (353,'Classicon',''),
  (354,'CLAUCAMA',''),
  (355,'CLAUDE ANNA',''),
  (356,'CLAUDIABARBARI',''),
  (357,'CLAUDIO SAONCELLA',''),
  (358,'CLEI',''),
  (359,'CLEMENT ET LISE',''),
  (360,'Clement et Lise',''),
  (361,'Cleto Munari',''),
  (362,'Clever',''),
  (363,'codutti',''),
  (364,'COF',''),
  (365,'COIM',''),
  (366,'Colico Design',''),
  (367,'COLICO DESIGN',''),
  (368,'Colleccion Alexandra',''),
  (369,'Collection Pierre',''),
  (370,'Collinet',''),
  (371,'COLOMBINI',''),
  (372,'COLOMBO MOBILI',''),
  (373,'Colombo Stile',''),
  (374,'COMPAB',''),
  (375,'COMPOSIT',''),
  (376,'COMPOSIT',''),
  (377,'COMPREX',''),
  (378,'Comptoir de Famille',''),
  (379,'COMPYR',''),
  (380,'CONFORMA DESIGN',''),
  (381,'CONSORZIO CABIATE',''),
  (382,'Contardi Lighting',''),
  (383,'Contempo',''),
  (384,'COPAT',''),
  (385,'Copat',''),
  (386,'COPENLAMP',''),
  (387,'COR',''),
  (388,'Corato mobili',''),
  (389,'Corazzin Rattan',''),
  (390,'CORSO F.LLI SRL',''),
  (391,'CORTE ZARI',''),
  (392,'COSIMO DEI MEDICI',''),
  (393,'COSTA',''),
  (394,'COSTANTINI PIETRO',''),
  (395,'COUNTRY CORNER',''),
  (396,'CREANDO',''),
  (397,'Creazioni',''),
  (398,'Creazioni',''),
  (399,'CROCE',''),
  (400,'CTS',''),
  (401,'CTS SALOTTI',''),
  (402,'D.B.ARTE',''),
  (403,'D’Angeli',''),
  (404,'DADA',''),
  (405,'DADA/ARMANI',''),
  (406,'DAFRE''',''),
  (407,'DAL CIN',''),
  (408,'Dall''Agnese',''),
  (409,'Danese Milano',''),
  (410,'DANTI',''),
  (411,'D''Auria Group',''),
  (412,'David Gundry',''),
  (413,'David Seyfried',''),
  (414,'Davidson London',''),
  (415,'Dax Sierra',''),
  (416,'DBF',''),
  (417,'De Baggis',''),
  (418,'De Breuyn',''),
  (419,'DE CASTELLI',''),
  (420,'De Ferranti',''),
  (421,'De Majo',''),
  (422,'DE MANICOR',''),
  (423,'DE Padova',''),
  (424,'DE ROSSO',''),
  (425,'DE SEDE',''),
  (426,'DE SEDE',''),
  (427,'Dear Kids',''),
  (428,'DECOBEL',''),
  (429,'Decored',''),
  (430,'DEDON',''),
  (431,'DEKO',''),
  (432,'DEKORA',''),
  (433,'DELLA VALENTINA OFFICE',''),
  (434,'DELTA SALOTTI',''),
  (435,'Dernier & Hamlyn',''),
  (436,'Desideri linea bagno',''),
  (437,'Design Forum',''),
  (438,'DESIREE',''),
  (439,'DESIREE',''),
  (440,'Dessin Fournir',''),
  (441,'Destombes',''),
  (442,'Devina Nais',''),
  (443,'DEVON DEVON',''),
  (444,'DIALMA BROWN',''),
  (445,'Diamanti & Domeniconi',''),
  (446,'Die Collection',''),
  (447,'DILIDDO E PEREGO-DOMINO\\MODA''',''),
  (448,'DISVALMA',''),
  (449,'DITRE ITALIA',''),
  (450,'DITRE ITALIA',''),
  (451,'DIVA',''),
  (452,'DL Décor',''),
  (453,'DMK',''),
  (454,'DOCMOBILI',''),
  (455,'DOIMO CITY LINE',''),
  (456,'DOIMO CUCINE',''),
  (457,'DOIMO DESIGN',''),
  (458,'DOIMO DESIGN',''),
  (459,'DOIMO IDEA',''),
  (460,'DOIMO MATERASSI',''),
  (461,'DOIMO PASSPORT',''),
  (462,'DOIMO SOFAS',''),
  (463,'DOIMODECOR',''),
  (464,'DOIMOSALOTTI',''),
  (465,'DOLCEFARNIENTE',''),
  (466,'Dolfi',''),
  (467,'DOMINGO SALOTTI',''),
  (468,'DOMODINAMICA',''),
  (469,'Domus Mobile',''),
  (470,'Donati',''),
  (471,'DONATI ARMADI',''),
  (472,'DONATI&GASPERINI',''),
  (473,'Donghia',''),
  (474,'DOOR2000',''),
  (475,'DRAENERT',''),
  (476,'Dragons of Walton Street',''),
  (477,'DREAM LIGHT',''),
  (478,'Driade',''),
  (479,'Driftmeier',''),
  (480,'Drummonds',''),
  (481,'DSA',''),
  (482,'Due effe',''),
  (483,'DURESTA',''),
  (484,'Duvivier',''),
  (485,'DV HOME COLLECTION',''),
  (486,'Ebanart',''),
  (487,'EBANISTERIA BACCI',''),
  (488,'Echevarria',''),
  (489,'ECLIPSE',''),
  (490,'Eclipse',''),
  (491,'ECO&CO',''),
  (492,'EDILCO',''),
  (493,'EDRA',''),
  (494,'Edward Harpley',''),
  (495,'Effeitalia',''),
  (496,'Effusionidiluce',''),
  (497,'EGGERSMANN',''),
  (498,'EGO',''),
  (499,'Eichholtz',''),
  (500,'ELAM','');
COMMIT;

#
# Data for the `brand` table  (LIMIT 500,500)
#

INSERT INTO `brand` (`brand_id`, `brand_title`, `brand_url`) VALUES 
  (501,'ele RICO'' home',''),
  (502,'ELISA MOBILI SRL',''),
  (503,'ELITE',''),
  (504,'ELITE INTERIOR',''),
  (505,'ELITE INTERIOR SRL',''),
  (506,'Elle gomiero',''),
  (507,'ELLE SALOTTI',''),
  (508,'ELLEDUE',''),
  (509,'ELMAR',''),
  (510,'EMERGROUP',''),
  (511,'Emily Todhunter',''),
  (512,'EMMEBI',''),
  (513,'EMMEMOBILI',''),
  (514,'EMU',''),
  (515,'Encemble London',''),
  (516,'ENEA',''),
  (517,'English Looking Glasses',''),
  (518,'ENNEREV',''),
  (519,'Enrico Pellizzoni',''),
  (520,'Epoca',''),
  (521,'Epocantica',''),
  (522,'EPOCART',''),
  (523,'EPOQUE',''),
  (524,'EP-PORTE',''),
  (525,'Equipeopentrade',''),
  (526,'Eric Custer Metropolitan',''),
  (527,'Eric Joergensen',''),
  (528,'ERNEST MENARD',''),
  (529,'ERNESTOMEDA',''),
  (530,'Erwan Boulloud',''),
  (531,'ESSEPI IMBOTTITI',''),
  (532,'Estel Home by Estel Partners',''),
  (533,'ESTEL/CLASS',''),
  (534,'ESTELLER FUSTER',''),
  (535,'ESTELLER FUSTER',''),
  (536,'ETS FELIX MONGE',''),
  (537,'Eurolampart',''),
  (538,'EUROLUCE',''),
  (539,'EUROMOBIL',''),
  (540,'EUROPA DESIGN&FURNITURE',''),
  (541,'EUROPEO',''),
  (542,'EUROPOL',''),
  (543,'EUROSEDIA',''),
  (544,'EUROSEDIA',''),
  (545,'Eurostile',''),
  (546,'EVE',''),
  (547,'EXEDRA',''),
  (548,'EXTREMIS',''),
  (549,'EZIO BELLOTTI',''),
  (550,'EZIO BELLOTTI',''),
  (551,'F.B.A.I.',''),
  (552,'F.LLI BIANCHINI',''),
  (553,'F.M. BOTTEGA D''ARTE',''),
  (554,'Faber',''),
  (555,'FACONDINI',''),
  (556,'FAER AMBIENTI',''),
  (557,'Faer Ambienti',''),
  (558,'Fala Group',''),
  (559,'FALEGNAMERIA',''),
  (560,'FALEGNAMERIA',''),
  (561,'Falegnami',''),
  (562,'FALMA ITALIA',''),
  (563,'Fantoni',''),
  (564,'Faoma',''),
  (565,'FARMO CAMERETTE',''),
  (566,'Farrow & Ball',''),
  (567,'FASEM',''),
  (568,'FASEMFRIUL MOSAIC',''),
  (569,'FAST',''),
  (570,'Faustig',''),
  (571,'FBL',''),
  (572,'Febal',''),
  (573,'FEG',''),
  (574,'FELICEROSSI',''),
  (575,'FENDI',''),
  (576,'Fendi',''),
  (577,'Ferettimobili',''),
  (578,'FERLEA',''),
  (579,'Ferretti Ferretti',''),
  (580,'FIAM',''),
  (581,'Fiamberti',''),
  (582,'FIMES',''),
  (583,'Fine Art',''),
  (584,'FINKELDEI',''),
  (585,'FIORAVAZZI',''),
  (586,'FLAI',''),
  (587,'Flexform',''),
  (588,'Flii ORIGGI',''),
  (589,'Flli Radici',''),
  (590,'Flli Rosetto',''),
  (591,'Flli TURAZZA',''),
  (592,'FLOREANI DESIGN',''),
  (593,'FLORENCE ART SRL',''),
  (594,'FLORENCE COLLECTIONS',''),
  (595,'Florence collectuions',''),
  (596,'FLORIDA CUCINE',''),
  (597,'FLORIDA FAMILY',''),
  (598,'FLOS',''),
  (599,'FLOU',''),
  (600,'Flou',''),
  (601,'FONTANELLI',''),
  (602,'FOPPAPEDRETTI',''),
  (603,'FORMER',''),
  (604,'Formerin',''),
  (605,'FORM-EXCLUSIV',''),
  (606,'FORMIA',''),
  (607,'Formichi',''),
  (608,'Fornasetti',''),
  (609,'Forni Mobili',''),
  (610,'Forni Mobili',''),
  (611,'Francesco Molon',''),
  (612,'Francesco Pasi',''),
  (613,'Franco Bertozzini',''),
  (614,'Frari',''),
  (615,'FRARI',''),
  (616,'FRARI',''),
  (617,'FRAST',''),
  (618,'FRATELLI Allievi',''),
  (619,'FRATELLI GNOATO',''),
  (620,'Fratelli Mascheroni',''),
  (621,'Fratelli Meroni',''),
  (622,'FRATELLI SPINELLI',''),
  (623,'Frau Flex',''),
  (624,'Fredericia',''),
  (625,'FREZZA',''),
  (626,'FRIGERIO',''),
  (627,'Frighetto by Estel Partners',''),
  (628,'FRITZHANSEN',''),
  (629,'Friulsedie',''),
  (630,'Froli',''),
  (631,'Fryetts and Porter & Stone',''),
  (632,'FUNZIONALISMO',''),
  (633,'FUTURA',''),
  (634,'G.D.DORIGO',''),
  (635,'GABRIELLA BOTTACIN',''),
  (636,'GALIMBERTI LINO',''),
  (637,'Galimberti Nino',''),
  (638,'GALIMBERTI NINO',''),
  (639,'GALLERY VETRI D''ARTE',''),
  (640,'GALLO',''),
  (641,'GALLO GROUP',''),
  (642,'Gallotti radice',''),
  (643,'GALOTTI RADICE',''),
  (644,'Galotti&Radice',''),
  (645,'Galottiradice',''),
  (646,'Galvano Technica',''),
  (647,'GAMMA',''),
  (648,'GARCIA REQUEJO',''),
  (649,'GATTOCUCINE',''),
  (650,'GAUTIER',''),
  (651,'GC COLOMBO',''),
  (652,'GC TABLES',''),
  (653,'GCOLOMBO',''),
  (654,'GEBA-KUECHEN',''),
  (655,'GED',''),
  (656,'GEDA',''),
  (657,'GEMALINEA',''),
  (658,'GEMALINEA',''),
  (659,'GENOVEVA',''),
  (660,'George Smith',''),
  (661,'GERONAZZO F.LLI SNC',''),
  (662,'GERVASONI',''),
  (663,'gervasoni',''),
  (664,'Geuther',''),
  (665,'Giaconi&Raponi',''),
  (666,'GIANFRANCO BALLERINI',''),
  (667,'Gianfranco Ballerini',''),
  (668,'GICINQUE  CUCINE',''),
  (669,'GIELESSE',''),
  (670,'Giellesse',''),
  (671,'Giessegi',''),
  (672,'GIGLI',''),
  (673,'GiNova',''),
  (674,'Ginova',''),
  (675,'Ginova',''),
  (676,'GIORGETTI',''),
  (677,'Giorgetti',''),
  (678,'GIORGIO CASA',''),
  (679,'GIORGIO PIOTTO',''),
  (680,'GIOVANNETTI',''),
  (681,'GIOVANNI VISENTIN',''),
  (682,'Girardeau',''),
  (683,'Giroflex',''),
  (684,'GIULIO BONANOMI',''),
  (685,'GIULIO MARELLI',''),
  (686,'GIULIO MARELLI',''),
  (687,'GIURIAN',''),
  (688,'GIUSTI PORTOS',''),
  (689,'GLAS',''),
  (690,'GLASS ITALIA',''),
  (691,'GLASS&GLASS',''),
  (692,'Gloster',''),
  (693,'GMG/ MUST ITALIA',''),
  (694,'GoldConfort',''),
  (695,'GoldConfort',''),
  (696,'GoldConfort',''),
  (697,'GP&J Baker',''),
  (698,'GRANDUCATO ARREDI',''),
  (699,'Grange',''),
  (700,'GREEN',''),
  (701,'Gregori',''),
  (702,'Grilli',''),
  (703,'GRUBERSCHLAGER',''),
  (704,'GRUPPO FALA',''),
  (705,'GT DESIGN',''),
  (706,'Guadarte',''),
  (707,'GWINNER',''),
  (708,'HAANS Lifestyle',''),
  (709,'HABA',''),
  (710,'HALLEY',''),
  (711,'Hanak',''),
  (712,'Hans Kaufeld',''),
  (713,'HAPPY SAUNA',''),
  (714,'HARMONIUS',''),
  (715,'Hartmann',''),
  (716,'Hastens',''),
  (717,'Hay',''),
  (718,'Heller',''),
  (719,'Henredon',''),
  (720,'HENRY GLASS',''),
  (721,'Heritage',''),
  (722,'Hickory white',''),
  (723,'HIGH TOUCH',''),
  (724,'HODE',''),
  (725,'Home cucine',''),
  (726,'Horm',''),
  (727,'HORM',''),
  (728,'HORM 1989',''),
  (729,'Huate couture des interiors',''),
  (730,'HUELSTA',''),
  (731,'HUKLA',''),
  (732,'I COMPEMENTI DI AMELI',''),
  (733,'I TRE',''),
  (734,'Ian Sanderson',''),
  (735,'IDEA GROUP',''),
  (736,'IDEA GROUP',''),
  (737,'IDEALSEDIA',''),
  (738,'IL LOFT',''),
  (739,'IL PARALUME MARINA',''),
  (740,'ILAS',''),
  (741,'ILLUMA',''),
  (742,'IMAB Group',''),
  (743,'IMAGGIOLINI',''),
  (744,'IMART',''),
  (745,'IMART',''),
  (746,'INES ART DESIGN',''),
  (747,'Infinito',''),
  (748,'INNO',''),
  (749,'Innovatoin',''),
  (750,'INSIDE',''),
  (751,'INTERLUBKE',''),
  (752,'Interstuhl',''),
  (753,'Interstyle',''),
  (754,'INVENTA',''),
  (755,'IPE CAVALLI',''),
  (756,'ISACCO AGOSTINI',''),
  (757,'ISMOBEL',''),
  (758,'ITALAMP',''),
  (759,'ITALAMP',''),
  (760,'ITALSOFA',''),
  (761,'ITF',''),
  (762,'James Brindley',''),
  (763,'James Hare Silks',''),
  (764,'Jason D’Souza',''),
  (765,'Jean Monro',''),
  (766,'JENSIGI',''),
  (767,'JESSE',''),
  (768,'JLC',''),
  (769,'JNL',''),
  (770,'John Boyd',''),
  (771,'John Sankey',''),
  (772,'Jonathan Charles',''),
  (773,'JUANES',''),
  (774,'Jules Pansu',''),
  (775,'JULIA',''),
  (776,'Jumbo',''),
  (777,'Jumbo',''),
  (778,'JUNIOR 4',''),
  (779,'KAPPA SALOTTI',''),
  (780,'KARBOXX',''),
  (781,'Kare',''),
  (782,'KARMAN',''),
  (783,'Karol',''),
  (784,'KARTELL',''),
  (785,'KARTELL',''),
  (786,'Kast van een Huis',''),
  (787,'Kenzo',''),
  (788,'Keoma Salotti',''),
  (789,'Kettnaker',''),
  (790,'KEY  CUCINE',''),
  (791,'KHAOS',''),
  (792,'Kler',''),
  (793,'Knoll',''),
  (794,'Knots Rugs',''),
  (795,'KOLARZ',''),
  (796,'KRISTALIA',''),
  (797,'KUNDALINI',''),
  (798,'LA ALPUJARRENA',''),
  (799,'LA ALPUJARRENA',''),
  (800,'LA CONTESSINA',''),
  (801,'La falegnami',''),
  (802,'LA FENICE',''),
  (803,'LA FIBULE',''),
  (804,'La Murrina',''),
  (805,'LA PALMA',''),
  (806,'LA PALMA',''),
  (807,'LA PRIMAVERA',''),
  (808,'LA VECCHIA ARTE',''),
  (809,'La vecchia Marina',''),
  (810,'LA VETRERIA',''),
  (811,'Labarere',''),
  (812,'Lago',''),
  (813,'Lam Lee',''),
  (814,'Lamhults',''),
  (815,'LAMP INTERNATIONAL',''),
  (816,'LAMP2',''),
  (817,'LAMPINTERNATIONAL',''),
  (818,'LANDO',''),
  (819,'Lanpas',''),
  (820,'L''ARTES',''),
  (821,'L''ARTES',''),
  (822,'Latini Design Cucine',''),
  (823,'Laudarte',''),
  (824,'lci stile',''),
  (825,'Lci stile',''),
  (826,'Lci stile',''),
  (827,'LE CLASSIQUE',''),
  (828,'LE ORE',''),
  (829,'LE PORCELLANE',''),
  (830,'LE SOFA',''),
  (831,'LEADER CUCINE',''),
  (832,'LEDS',''),
  (833,'LEGNOLUCE',''),
  (834,'LEMA MOBILI',''),
  (835,'Lensvelt',''),
  (836,'LEOLUX',''),
  (837,'LEOLUX',''),
  (838,'Les Etains  du Prince',''),
  (839,'L''ESTETA BY LADY LAURA',''),
  (840,'LEUCOS',''),
  (841,'Lewis & Wood',''),
  (842,'LIGHT 4-MURANO LUCE',''),
  (843,'Ligne Roset',''),
  (844,'LINE GIANSER',''),
  (845,'Linea B',''),
  (846,'LINEA D',''),
  (847,'Linea Due by Bruno Drovandi',''),
  (848,'LINEA ITALIA',''),
  (849,'LINEA QUATTRO',''),
  (850,'Linea Tre',''),
  (851,'Lineas Taller',''),
  (852,'LINFA DESIGN',''),
  (853,'LINO SONEGO',''),
  (854,'LISAEXPORT',''),
  (855,'LISTONE GIORDANO',''),
  (856,'LITHOS DESIGN',''),
  (857,'LITTER',''),
  (858,'LIV''IT',''),
  (859,'LOIUDICE SALOTTI',''),
  (860,'LONDON',''),
  (861,'LONGHI',''),
  (862,'LOOM ITALIA',''),
  (863,'L''Origine',''),
  (864,'L''Origine',''),
  (865,'Loro Piana',''),
  (866,'LORO PIANA',''),
  (867,'L''OTTOCENTO',''),
  (868,'LU.BO BILIARDI',''),
  (869,'LU.BO Porte',''),
  (870,'LUBE',''),
  (871,'LUBIEX',''),
  (872,'LUCCANO',''),
  (873,'LUCE ITALIANE',''),
  (874,'LUCIANO ZONTA',''),
  (875,'LUCITALIA',''),
  (876,'LUDOVICA MASCHERONI',''),
  (877,'Ludwik Styl',''),
  (878,'LUIGI BEVILACQUA',''),
  (879,'Lumina',''),
  (880,'LUMIS',''),
  (881,'Lutson',''),
  (882,'LUXIT',''),
  (883,'M DUE',''),
  (884,'M&R',''),
  (885,'MA.GI.CA',''),
  (886,'MACCHIMOBILI(GOTHA)',''),
  (887,'MACHALKE',''),
  (888,'MACULAN',''),
  (889,'Maggi Massimo',''),
  (890,'Maggioni',''),
  (891,'MAGIS',''),
  (892,'MAGIS',''),
  (893,'Maior Cucine',''),
  (894,'MAISON SANTAMARIA',''),
  (895,'MAISTRI',''),
  (896,'MALERBA',''),
  (897,'Mana Collezioni',''),
  (898,'MANA COLLEZIONI',''),
  (899,'MANARA',''),
  (900,'Mangani',''),
  (901,'Manifatture f.lli Gamba',''),
  (902,'Mantelassi',''),
  (903,'MANZONI LUIGI',''),
  (904,'MAP',''),
  (905,'MAR MOBILI',''),
  (906,'Marac',''),
  (907,'MARCHETTI',''),
  (908,'MARCHI CUCINE',''),
  (909,'Marchi Cucine',''),
  (910,'MARGAROLI',''),
  (911,'Marge Carson',''),
  (912,'Marie''s corner',''),
  (913,'Marina dal santo',''),
  (914,'MARINER',''),
  (915,'Mario Galimberti',''),
  (916,'MARIO VILLA NOVA',''),
  (917,'MARIONI',''),
  (918,'Mark Miller Furniture',''),
  (919,'MARKA INDUSTRIA MOBILI SPA',''),
  (920,'MARONESE',''),
  (921,'MAROSO GINO',''),
  (922,'Martini mobili',''),
  (923,'MARTINI''S DESIGN',''),
  (924,'Marvic Textiles',''),
  (925,'MARZORATI',''),
  (926,'MASCAGNI',''),
  (927,'MASCHERONI',''),
  (928,'MASCOTTO',''),
  (929,'Masi Mobili',''),
  (930,'Masiero',''),
  (931,'MASONI SRL',''),
  (932,'MASS MUEBLE',''),
  (933,'MASTRO RAPHAEL',''),
  (934,'MastroRaphael',''),
  (935,'MATHIAS',''),
  (936,'MATTEOGRASSI',''),
  (937,'MAV',''),
  (938,'MAV Export',''),
  (939,'Mazzali',''),
  (940,'MAZZALI',''),
  (941,'MAZZALI',''),
  (942,'MC Carron',''),
  (943,'MD House',''),
  (944,'MDF',''),
  (945,'MEDEA',''),
  (946,'MEGAROS',''),
  (947,'Meise',''),
  (948,'MENEGHINI',''),
  (949,'Mercantini',''),
  (950,'MERIDIANI',''),
  (951,'MERITALIA',''),
  (952,'MERONI FRANCESCO',''),
  (953,'Meson''s',''),
  (954,'MESON''S',''),
  (955,'Meta',''),
  (956,'Mèta',''),
  (957,'Meubles Hay',''),
  (958,'Meystyle',''),
  (959,'Miceversailles',''),
  (960,'Mida',''),
  (961,'MIDA2',''),
  (962,'MIDJ',''),
  (963,'MILANO BEDDING',''),
  (964,'MILLDUE',''),
  (965,'MINACCIOLO',''),
  (966,'MINIFORMS',''),
  (967,'MINOTTI',''),
  (968,'MINOTTI COLLEZIONI (MINOTTI ALESSANDRO)',''),
  (969,'Minotti Luiggi&Benino',''),
  (970,'MINOTTICOLLEZIONI',''),
  (971,'MINOTTIITALIA',''),
  (972,'MIRANDOLA',''),
  (973,'Mire',''),
  (974,'Mire',''),
  (975,'MISE EN DERMEURE',''),
  (976,'MI-SHA',''),
  (977,'MISS DIVANI',''),
  (978,'MISSONI HOME',''),
  (979,'Mistral',''),
  (980,'Misura Emme',''),
  (981,'MISURA SALOTTI',''),
  (982,'MITTEL CUCINE',''),
  (983,'Mittel Cucine',''),
  (984,'MM LAMPADARI',''),
  (985,'MO.WA',''),
  (986,'Mobil Deri',''),
  (987,'MOBIL G.A.M.',''),
  (988,'MOBILBRACCO',''),
  (989,'MOBILEFFE',''),
  (990,'Mobilficio Domus',''),
  (991,'MOBILFRESNO',''),
  (992,'MOBILI AVENANTI',''),
  (993,'MOBILI D''ARTE',''),
  (994,'MOBILI SOCCI ANCHISE',''),
  (995,'MOBILIDEA',''),
  (996,'MOBILIDEA',''),
  (997,'MOBILIMACULAN',''),
  (998,'MOBILINE',''),
  (999,'MOBILITALIA',''),
  (1000,'MOBILTREVI','');
COMMIT;

#
# Data for the `brand` table  (LIMIT 1000,500)
#

INSERT INTO `brand` (`brand_id`, `brand_title`, `brand_url`) VALUES 
  (1001,'MOBLESA',''),
  (1002,'Moda'' Di Lido e Perego',''),
  (1003,'MODA MOBILI',''),
  (1004,'MODENESE GASTONE',''),
  (1005,'MODO LUCE',''),
  (1006,'Modulnova Bagni',''),
  (1007,'Modulnova Cucine',''),
  (1008,'Moletta & co',''),
  (1009,'MOLINARI',''),
  (1010,'Moller Design',''),
  (1011,'MOLTENI',''),
  (1012,'MOLTENI HOME',''),
  (1013,'MOMENTI',''),
  (1014,'MONTBEL',''),
  (1015,'Montina',''),
  (1016,'MORADILLO',''),
  (1017,'MORASSUTTI/PLAY S.R.L.',''),
  (1018,'MORELATO',''),
  (1019,'Morello Gianpaolo',''),
  (1020,'MORETTI',''),
  (1021,'Moretti Compact',''),
  (1022,'Morfeus',''),
  (1023,'MOROSO',''),
  (1024,'Morton & Young Textiles',''),
  (1025,'MOSCATELLI',''),
  (1026,'Mossioner',''),
  (1027,'Motard',''),
  (1028,'MOVE',''),
  (1029,'MOVI',''),
  (1030,'Mugali',''),
  (1031,'Mulberry',''),
  (1032,'MURANO DUE',''),
  (1033,'MUSSI',''),
  (1034,'MUUTO',''),
  (1035,'NANCELLE',''),
  (1036,'NANIMARQUINA',''),
  (1037,'NAPOL',''),
  (1038,'Natuzzi',''),
  (1039,'Nava',''),
  (1040,'NEA',''),
  (1041,'Neil Booth',''),
  (1042,'Neisha Crosland',''),
  (1043,'Nello Scavo',''),
  (1044,'NEMO',''),
  (1045,'Neriwood',''),
  (1046,'NEST',''),
  (1047,'Nicholas Herbert',''),
  (1048,'NICOLINE',''),
  (1049,'NILUR',''),
  (1050,'Nina Campbel',''),
  (1051,'N-MONACO',''),
  (1052,'Noir by Cattelan Italia',''),
  (1053,'Nolte',''),
  (1054,'NON SOLO LUCE ',''),
  (1055,'Norman Copenhagen',''),
  (1056,'NOTTE BRAVA',''),
  (1057,'NOVA SERENISSIMA',''),
  (1058,'Novalinea',''),
  (1059,'Novamobili',''),
  (1060,'NOVARS',''),
  (1061,'NOVO BY BINI',''),
  (1062,'Nube',''),
  (1063,'NUOVA POLTROMOT',''),
  (1064,'O.KITALIA',''),
  (1065,'OAK',''),
  (1066,'oasisbagn',''),
  (1067,'Of Interni',''),
  (1068,'Offect',''),
  (1069,'OFFICE DIVISION(Exportline)',''),
  (1070,'Ofi - FRAN',''),
  (1071,'OLD LINE',''),
  (1072,'Olivieri',''),
  (1073,'OLUCE',''),
  (1074,'ONGARO&FUGA',''),
  (1075,'ONLYWOOD',''),
  (1076,'OnlyWood',''),
  (1077,'OnlyWood',''),
  (1078,'OPIFICIO',''),
  (1079,'OR ILLUMINAZIONE',''),
  (1080,'Origgi',''),
  (1081,'ORIGGI  SLOTTI',''),
  (1082,'ORIZZONTI',''),
  (1083,'ORME',''),
  (1084,'Orsi',''),
  (1085,'ORTOLAN',''),
  (1086,'Ortolan',''),
  (1087,'Ortolan',''),
  (1088,'ORTOLANI',''),
  (1089,'OSCAR',''),
  (1090,'OTY LIGHT',''),
  (1091,'OZZIO',''),
  (1092,'PABELLI',''),
  (1093,'Pacini Cаpellini.',''),
  (1094,'Paidi',''),
  (1095,'Pal Mobili',''),
  (1096,'PALLUCCO',''),
  (1097,'PAOLA LENTI',''),
  (1098,'PAOLETTI',''),
  (1099,'PAOLO LUCCHETTA',''),
  (1100,'Parker + Farr',''),
  (1101,'Parkertex',''),
  (1102,'PARRI DESIGN',''),
  (1103,'Pascal Amblard',''),
  (1104,'PASI',''),
  (1105,'PASINI ETTORE',''),
  (1106,'PASSERI',''),
  (1107,'PATAVIUMART',''),
  (1108,'PATINA',''),
  (1109,'PATOCCO',''),
  (1110,'PATRIZIA GARGANTI/BAGA',''),
  (1111,'Pedini',''),
  (1112,'PELLEGATA',''),
  (1113,'PELLIZZONI',''),
  (1114,'PENTA',''),
  (1115,'Pentamobili',''),
  (1116,'PEREZ BENAU',''),
  (1117,'PESMAC',''),
  (1118,'Petrusse',''),
  (1119,'PF HOME COLLECTION',''),
  (1120,'Phillip Jeffries',''),
  (1121,'Phillip Plein',''),
  (1122,'PIANCA',''),
  (1123,'Pianca',''),
  (1124,'Pianca',''),
  (1125,'PIEMME',''),
  (1126,'Piemme',''),
  (1127,'PIERANTONIO BONACINA',''),
  (1128,'Piermaria',''),
  (1129,'PIETRO CONSTANTINI',''),
  (1130,'Pinolino',''),
  (1131,'PINTDECOR',''),
  (1132,'PITTI',''),
  (1133,'PLATEK',''),
  (1134,'POGGENPOHL',''),
  (1135,'Point',''),
  (1136,'POLARIS',''),
  (1137,'Poles',''),
  (1138,'POLES SALOTTI',''),
  (1139,'Poliform',''),
  (1140,'Poliform',''),
  (1141,'Poltromot',''),
  (1142,'Poltrona Frau',''),
  (1143,'Poltronafrau',''),
  (1144,'Porada',''),
  (1145,'PORADA',''),
  (1146,'Porro',''),
  (1147,'Porta Romana',''),
  (1148,'PORTE ITALIA',''),
  (1149,'POSSONI',''),
  (1150,'POTOCCO',''),
  (1151,'Pozzolli',''),
  (1152,'PR STUDIO',''),
  (1153,'PRANDINA',''),
  (1154,'PREARO COLLEZIONI LUCE',''),
  (1155,'Pregno',''),
  (1156,'PREMIUM GROUP',''),
  (1157,'PRESOTTO',''),
  (1158,'PRESOTTO',''),
  (1159,'PRESTIGE',''),
  (1160,'PRESTIGE',''),
  (1161,'PRESTIGIO D''ELITE',''),
  (1162,'PROVASI',''),
  (1163,'Provence & Fils',''),
  (1164,'PUNTOTRE',''),
  (1165,'PUNTOTRE',''),
  (1166,'QUARTET',''),
  (1167,'QUASAR',''),
  (1168,'QUELLI DELLA MARIANI',''),
  (1169,'QUIA',''),
  (1170,'QUOTIDIANA',''),
  (1171,'Radice',''),
  (1172,'RAMPOLDI',''),
  (1173,'RATTAN WOOD',''),
  (1174,'RAUMPLUS',''),
  (1175,'RBR',''),
  (1176,'RE DECO'' BY SOMASCHINI',''),
  (1177,'RECK''S',''),
  (1178,'RECORD',''),
  (1179,'RECORD CUCINE',''),
  (1180,'REFLEX&ANGELO',''),
  (1181,'Regia',''),
  (1182,'Relyon',''),
  (1183,'RES',''),
  (1184,'RES ITALIA',''),
  (1185,'Resistub',''),
  (1186,'Restart',''),
  (1187,'RICAMI',''),
  (1188,'RICHARD GINORI',''),
  (1189,'RIFLESSI',''),
  (1190,'RIMADESIO',''),
  (1191,'RIPERLAMP',''),
  (1192,'RIVA 1920',''),
  (1193,'RIVA MOBILI D''ARTE',''),
  (1194,'Rivaatelier',''),
  (1195,'Rivolta',''),
  (1196,'ROBERTI RATTAN',''),
  (1197,'Roche Bobois',''),
  (1198,'Roland Vlaeminck',''),
  (1199,'ROLFBENZ',''),
  (1200,'ROMOLI',''),
  (1201,'ROMOLI PROF.SIRO',''),
  (1202,'RONALD SCHMITT',''),
  (1203,'Roncato',''),
  (1204,'RONCATO',''),
  (1205,'Rose Cumming',''),
  (1206,'ROSIN&BRAGGION',''),
  (1207,'Rosini',''),
  (1208,'ROSSANA',''),
  (1209,'Rossetto Armobil',''),
  (1210,'Rossidialbizzate',''),
  (1211,'ROYAL ALBERTA',''),
  (1212,'RT MOBILI',''),
  (1213,'RUBELLI',''),
  (1214,'RUBINETTERIE STELLA',''),
  (1215,'RUDE BRAVO',''),
  (1216,'Rudebravo',''),
  (1217,'RUF-BETTEN',''),
  (1218,'Rufflette',''),
  (1219,'Ruggiu',''),
  (1220,'Rugiano',''),
  (1221,'RUSSKAYA USADBA.',''),
  (1222,'SABA',''),
  (1223,'SABER',''),
  (1224,'SACMA/UFFIX SPA',''),
  (1225,'SACMA/UFFIX SPA  sedie LUNA',''),
  (1226,'Saint Babilla',''),
  (1227,'SALCA',''),
  (1228,'SALCON',''),
  (1229,'Salda',''),
  (1230,'Salda',''),
  (1231,'SALVARANI',''),
  (1232,'SAMBONET',''),
  (1233,'San Giacomo',''),
  (1234,'SAN MARCO',''),
  (1235,'SAN MICHELE',''),
  (1236,'SAN VITO',''),
  (1237,'SANCAL',''),
  (1238,'Sanderson',''),
  (1239,'SANDERSON',''),
  (1240,'Sangiorgio',''),
  (1241,'Santa Cole',''),
  (1242,'Santopasaia',''),
  (1243,'Sapa Salotti',''),
  (1244,'SAT EXPORT',''),
  (1245,'Satom Bath',''),
  (1246,'SAVIO FIRMINO',''),
  (1247,'Scandal',''),
  (1248,'SCANDAL HOME COUTURE',''),
  (1249,'Scappini',''),
  (1250,'SCATTOLIN',''),
  (1251,'SCATTOLIN',''),
  (1252,'Scavolini',''),
  (1253,'SCHIFFINI',''),
  (1254,'SCHIOENHUBER FANCHI',''),
  (1255,'SCHMALENBACH',''),
  (1256,'SCHOENBUCH',''),
  (1257,'Schonbek',''),
  (1258,'SCHUELLER',''),
  (1259,'SCIC CUCINE',''),
  (1260,'SEDEX',''),
  (1261,'SEDIT',''),
  (1262,'SEDIT-ITALIA',''),
  (1263,'Seguso',''),
  (1264,'SELETTI',''),
  (1265,'SELLARO',''),
  (1266,'SELVA',''),
  (1267,'Sentury Furniture',''),
  (1268,'SERENISSIMA',''),
  (1269,'SERRALUNGA',''),
  (1270,'SEVEN SALOTTI',''),
  (1271,'Seven sedie',''),
  (1272,'SICC CUCINE',''),
  (1273,'Sicis',''),
  (1274,'SIEMATIC',''),
  (1275,'SIGE GOLD',''),
  (1276,'Signature Prints',''),
  (1277,'Signature Prints - Florence Broadhurst',''),
  (1278,'Signorino Coco',''),
  (1279,'SIL LUX - LAMPADE ITALIANE',''),
  (1280,'SILENIA',''),
  (1281,'SILENIA',''),
  (1282,'Silik',''),
  (1283,'SILOMA',''),
  (1284,'Silvano Griffoni',''),
  (1285,'SIMTA',''),
  (1286,'SIMTA',''),
  (1287,'Sintesi',''),
  (1288,'Sirtek',''),
  (1289,'SITIA',''),
  (1290,'SIWA',''),
  (1291,'SIWA ZANDARIN',''),
  (1292,'SKANDAL',''),
  (1293,'Skovby',''),
  (1294,'SMA',''),
  (1295,'SMANIA',''),
  (1296,'SNAIDERO',''),
  (1297,'SOFT HOUSE',''),
  (1298,'SOFTHOUSE',''),
  (1299,'Spagnol Groupp',''),
  (1300,'Spar',''),
  (1301,'Spini',''),
  (1302,'SPRINT',''),
  (1303,'SRAFINO MARELLI',''),
  (1304,'Status',''),
  (1305,'Status  S.r.l.',''),
  (1306,'Steed Upholstery',''),
  (1307,'Steiner Paris',''),
  (1308,'STELLA DEL MOBILE',''),
  (1309,'Stilema',''),
  (1310,'STOERMER-KUECHEN',''),
  (1311,'Stressless',''),
  (1312,'Studio Mesons',''),
  (1313,'Styleoffice',''),
  (1314,'SUDBROCK',''),
  (1315,'SWAN',''),
  (1316,'SYLCOM',''),
  (1317,'SYLCOM',''),
  (1318,'T.N.B.',''),
  (1319,'Taimoble',''),
  (1320,'TAITU',''),
  (1321,'TANTUSSI',''),
  (1322,'Tarba',''),
  (1323,'TARBA/CASACLASSICA',''),
  (1324,'TARGET POINT',''),
  (1325,'TARPAC',''),
  (1326,'Team 7',''),
  (1327,'TEAM BY WELLIS',''),
  (1328,'TECNI NOVA',''),
  (1329,'TECNO',''),
  (1330,'TECNOARREDO',''),
  (1331,'Tecta',''),
  (1332,'Tekno',''),
  (1333,'TEMPOR',''),
  (1334,'Tempora',''),
  (1335,'Tempur',''),
  (1336,'TENSATOR',''),
  (1337,'TERZANI',''),
  (1338,'TETTAMANZI&ERBA',''),
  (1339,'Teuco',''),
  (1340,'TEXARREDO',''),
  (1341,'THEMES & variations',''),
  (1342,'Thoermer',''),
  (1343,'Thornhill Galleries',''),
  (1344,'Threads',''),
  (1345,'TIEMME MOBILI D''ARTE',''),
  (1346,'TIEMME MOBILI D''ARTE',''),
  (1347,'Tierre salotti',''),
  (1348,'Tiferno',''),
  (1349,'Tiferno Mobili',''),
  (1350,'Timney Fowler',''),
  (1351,'Tindle Lighting',''),
  (1352,'TISETTANTA',''),
  (1353,'Titchmarsh & Goodwin',''),
  (1354,'Today Interiors',''),
  (1355,'Tom Dixon',''),
  (1356,'TOMASSI CUCINE',''),
  (1357,'TONCELLI',''),
  (1358,'TONIN CASA',''),
  (1359,'TONON',''),
  (1360,'Torchetti',''),
  (1361,'TORRE',''),
  (1362,'TOSATO',''),
  (1363,'TOSCANO MOBIL',''),
  (1364,'Townsend leather',''),
  (1365,'Trastes &Contrastes',''),
  (1366,'Treca de Paris',''),
  (1367,'TRECCANI',''),
  (1368,'TRECI SALOTTI',''),
  (1369,'Treo',''),
  (1370,'TREO CUCINE',''),
  (1371,'Trowbridge',''),
  (1372,'TRUEGGELMANN',''),
  (1373,'TUMIDEI',''),
  (1374,'Turatiboiseries',''),
  (1375,'Turazza',''),
  (1376,'Turchetto',''),
  (1377,'TURRI',''),
  (1378,'TURRI',''),
  (1379,'TWILS',''),
  (1380,'UFFIX',''),
  (1381,'ULIVI SALOTTI',''),
  (1382,'ULIVI SALOTTI',''),
  (1383,'Unico Italia',''),
  (1384,'UPPER',''),
  (1385,'Ura srl - Ikrea Group',''),
  (1386,'URSUS',''),
  (1387,'VALCUCINE',''),
  (1388,'Valderamobili',''),
  (1389,'VALDICHIENTI',''),
  (1390,'Valdichienti',''),
  (1391,'Valente Letti',''),
  (1392,'VALENTI LUCE',''),
  (1393,'VALENTILUCE',''),
  (1394,'VALENTINE',''),
  (1395,'Valentiny Living Spca',''),
  (1396,'Valentiny Vanity',''),
  (1397,'Valmori',''),
  (1398,'Valmori',''),
  (1399,'VALSAN',''),
  (1400,'VAMA CUCINE',''),
  (1401,'VAMA CUCINE',''),
  (1402,'VaniDivisione Porte',''),
  (1403,'Varenna',''),
  (1404,'VASELLI MARMI',''),
  (1405,'VENERAN',''),
  (1406,'Veneta Cucine',''),
  (1407,'VENETA MOBILI',''),
  (1408,'VENETA SEDIE',''),
  (1409,'Venetasedie',''),
  (1410,'VENICE HOME COLLECTION',''),
  (1411,'VENIER',''),
  (1412,'VENINIArt Light',''),
  (1413,'Ver Pan',''),
  (1414,'Veranda',''),
  (1415,'VERARDO',''),
  (1416,'VERDESIGN',''),
  (1417,'VERSACE',''),
  (1418,'VERSACE HOME COLLECTION',''),
  (1419,'VERZELLONI',''),
  (1420,'Vetrarti',''),
  (1421,'Vetreria Farroni Francesco',''),
  (1422,'VG',''),
  (1423,'Vibel',''),
  (1424,'VIBIEFFE',''),
  (1425,'Vicent Montoro',''),
  (1426,'Vicente Zaragoza',''),
  (1427,'Vicere di sicilia',''),
  (1428,'VILLA VENETE',''),
  (1429,'Villari',''),
  (1430,'VILLE E CASALI',''),
  (1431,'VIMERCATI',''),
  (1432,'Virema Style',''),
  (1433,'VISENTIN GIOVANNI',''),
  (1434,'Visionnair',''),
  (1435,'Visionnair',''),
  (1436,'VISMAP',''),
  (1437,'VISMARA  DESIGN',''),
  (1438,'Vitra',''),
  (1439,'VITTORIA',''),
  (1440,'Volpi',''),
  (1441,'VOLTAN INDUSTRIA MOBILI',''),
  (1442,'VUZETA',''),
  (1443,'Wackenhut',''),
  (1444,'Wade  Upholstery',''),
  (1445,'WALLFLOR',''),
  (1446,'WALTERKNOLL',''),
  (1447,'Wama',''),
  (1448,'Watts of Westminster',''),
  (1449,'Weldon',''),
  (1450,'WILLI SCHILLIG',''),
  (1451,'WITTMANN',''),
  (1452,'WK Wohnen',''),
  (1453,'WOOD BROS',''),
  (1454,'Wow Imports',''),
  (1455,'XENIA DECORAZIONI',''),
  (1456,'Ybarra & Serret',''),
  (1457,'Ycami',''),
  (1458,'YDF',''),
  (1459,'YDF',''),
  (1460,'Zaccariotto',''),
  (1461,'ZALF',''),
  (1462,'ZANABONI',''),
  (1463,'ZANCANELLA RENZO',''),
  (1464,'ZANDARIN',''),
  (1465,'ZANOTTA',''),
  (1466,'ZAPPALORTO',''),
  (1467,'ZAVANELLA POMPILIO SRL',''),
  (1468,'ZEROOMBRA',''),
  (1469,'ZEROOMBRA-EFFUSIONI DI LUCE',''),
  (1470,'ZICHELE',''),
  (1471,'ZILIO MOBILI SRL',''),
  (1472,'Zoeftig',''),
  (1473,'Zoffany',''),
  (1474,'ZONCA',''),
  (1475,'Zonta',''),
  (1476,'Cecotti',''),
  (1477,'Chelini',''),
  (1478,'Первый русский бренд','http://yandex.ru'),
  (1479,'Второй русский бренд','http://google.ru');
COMMIT;

#
# Data for the `design` table  (LIMIT 0,500)
#

INSERT INTO `design` (`design_id`, `design_title`, `design_image`, `design_preview`, `design_order`) VALUES 
  (1,'Кровать','/upload/design/bed.jpg','/upload/design/bed_preview.jpg',1),
  (2,'Холл','/upload/design/hall.jpg','/upload/design/hall_preview.jpg',2);
COMMIT;

#
# Data for the `lang` table  (LIMIT 0,500)
#

INSERT INTO `lang` (`lang_id`, `lang_title`, `lang_short`, `lang_name`, `lang_default`) VALUES 
  (1,'Русский','Рус','ru',1),
  (2,'Английский','Eng','en',0);
COMMIT;

#
# Data for the `layout` table  (LIMIT 0,500)
#

INSERT INTO `layout` (`layout_id`, `layout_title`, `layout_name`) VALUES 
  (1,'Шаблон главной страницы','index'),
  (2,'Шаблон внутренних страниц','default'),
  (4,'Шаблон для раздела \"Наши работы\"','design');
COMMIT;

#
# Data for the `layout_area` table  (LIMIT 0,500)
#

INSERT INTO `layout_area` (`area_id`, `area_layout`, `area_title`, `area_name`, `area_main`, `area_order`) VALUES 
  (2,2,'Контентная область','content',1,1),
  (5,2,'Главное меню','menu',0,2),
  (7,1,'Социальные сети','social',0,1),
  (8,2,'Социальные сети','social',0,3),
  (9,1,'Контентная область','content',1,2),
  (10,4,'Социальные сети','social',0,3),
  (11,4,'Контентная область','content',1,1),
  (12,4,'Главное меню','menu',0,2);
COMMIT;

#
# Data for the `menu` table  (LIMIT 0,500)
#

INSERT INTO `menu` (`menu_id`, `menu_parent`, `menu_title`, `menu_page`, `menu_url`, `menu_order`, `menu_active`) VALUES 
  (1,0,'Главное меню',0,'',1,1),
  (3,1,'О компании',3,'',2,1),
  (5,1,'Расчет стоимости мебели',5,'',4,1),
  (6,1,'Выбор мебели<br/>по сайту фабрики',6,'',3,1),
  (7,1,'Наши работы',7,'',5,1),
  (8,1,'Контакты',4,'',6,1);
COMMIT;

#
# Data for the `module` table  (LIMIT 0,500)
#

INSERT INTO `module` (`module_id`, `module_title`, `module_name`) VALUES 
  (1,'Текст','text'),
  (3,'Меню','menu'),
  (4,'Заказ','order'),
  (5,'Бренды','brand'),
  (6,'Наши работы','design');
COMMIT;

#
# Data for the `module_param` table  (LIMIT 0,500)
#

INSERT INTO `module_param` (`param_id`, `param_module`, `param_title`, `param_type`, `param_name`, `param_table`, `param_default`, `param_require`, `param_order`) VALUES 
  (1,1,'Текст в блоке','table','id','text','',1,1),
  (4,3,'Меню в блоке','table','id','menu','',1,1),
  (5,3,'Шаблон меню','select','template','','',1,2);
COMMIT;

#
# Data for the `object` table  (LIMIT 0,500)
#

INSERT INTO `object` (`object_id`, `object_parent`, `object_title`, `object_name`, `object_order`, `object_active`) VALUES 
  (1,0,'Контент','',1,1),
  (2,1,'Тексты','text',1,1),
  (4,0,'Сайт','',2,1),
  (5,4,'Разделы','page',1,1),
  (6,4,'Блоки','block',2,1),
  (7,4,'Шаблоны','layout',3,1),
  (8,4,'Модули','module',5,1),
  (9,4,'Параметры модулей','module_param',6,1),
  (10,4,'Значения параметров модулей','param_value',7,1),
  (11,0,'Система','',3,1),
  (12,11,'Языки','lang',1,1),
  (13,11,'Настройки','preference',2,1),
  (14,11,'Системные слова','dictionary',3,0),
  (15,11,'Системные разделы','object',4,1),
  (16,11,'Администраторы','admin',5,1),
  (17,0,'Утилиты','',4,1),
  (18,17,'Файл-менеджер','fm',1,1),
  (19,17,'Почтовая рассылка','delivery',2,0),
  (20,1,'Меню','menu',3,1),
  (21,4,'Области шаблонов','layout_area',4,1),
  (22,11,'Роли','role',6,1),
  (23,17,'Лист рассылки','delivery_person',3,0),
  (24,1,'Бренды','brand',4,1),
  (25,1,'Наши работы','design',5,1);
COMMIT;

#
# Data for the `page` table  (LIMIT 0,500)
#

INSERT INTO `page` (`page_id`, `page_parent`, `page_layout`, `page_title`, `page_name`, `page_folder`, `meta_title`, `meta_keywords`, `meta_description`, `page_order`, `page_active`) VALUES 
  (1,0,1,'Главная страница','',0,'Заголовок главной страницы','Ключевые слова главной страницы','Описание главной страницы',1,1),
  (2,1,2,'Ошибка 404','404',0,'Страница не найдена','Страница не найдена','Страница не найдена',6,1),
  (3,1,2,'О компании','about',0,'Заголовок внутренней страницы','Ключевые слова внутренней страницы','Описание внутренней страницы',1,1),
  (4,1,2,'Контакты','contact',0,'Заголовок внутренней страницы','Ключевые слова внутренней страницы','Описание внутренней страницы',5,1),
  (5,1,2,'Расчет стоимости мебели','order',0,'Заголовок внутренней страницы','Ключевые слова внутренней страницы','Описание внутренней страницы',3,1),
  (6,1,2,'Выбор мебели по сайту фабрики','brand',0,'Заголовок внутренней страницы','Ключевые слова внутренней страницы','Описание внутренней страницы',2,1),
  (7,1,4,'Наши работы','design',0,'Заголовок внутренней страницы','Ключевые слова внутренней страницы','Описание внутренней страницы',4,1);
COMMIT;

#
# Data for the `param_value` table  (LIMIT 0,500)
#

INSERT INTO `param_value` (`value_id`, `value_param`, `value_title`, `value_content`, `value_default`) VALUES 
  (3,5,'Главное меню','main',1);
COMMIT;

#
# Data for the `preference` table  (LIMIT 0,500)
#

INSERT INTO `preference` (`preference_id`, `preference_title`, `preference_name`, `preference_value`) VALUES 
  (1,'Email для сообщений с формы заказа','order_email','webmaster@testea.ru'),
  (2,'Тема для сообщений с формы заказа','order_subject','Тема для сообщений с формы заказа'),
  (3,'Обратный адрес для писем с сайта','from_email','no-reply@mebel555.com'),
  (4,'Имя отправителя для писем с сайта','from_name','Сайт \"Mebel 555\"');
COMMIT;

#
# Data for the `role` table  (LIMIT 0,500)
#

INSERT INTO `role` (`role_id`, `role_title`, `role_default`) VALUES 
  (1,'Главный администратор',1);
COMMIT;

#
# Data for the `text` table  (LIMIT 0,500)
#

INSERT INTO `text` (`text_id`, `text_tag`, `text_title`, `text_content`) VALUES 
  (2,'404','Ошибка 404','<div id=\"error404\">\r\n\tСтраница не найдена</div>\r\n<div id=\"content\">\r\n\t<h1>\r\n\t\tСтраница не найдена</h1>\r\n</div>\r\n'),
  (3,'about','О компании','<div id=\"about\">\r\n\tО компании</div>\r\n<div id=\"content\">\r\n\t<p>\r\n\t\tАбстрактное высказывание, если уловить хореический ритм или аллитерацию на &quot;р&quot;, однократно. Быличка возможна. Комбинаторное приращение, за счет использования параллелизмов и повторов на разных языковых уровнях, представляет собой диалектический характер, что связано со смысловыми оттенками, логическим выделением или с синтаксической омонимией. Цезура, без использования формальных признаков поэзии, интегрирует симулякр, потому что в стихах и в прозе автор рассказывает нам об одном и том же.</p>\r\n\t<p>\r\n\t\tВесьма перспективной представляется гипотеза, высказанная И.Гальпериным: познание текста интегрирует возврат к стереотипам, и это придает ему свое звучание, свой характер. Пастиш вызывает конструктивный полифонический роман, тем не менее узус никак не предполагал здесь родительного падежа. Заимствование, согласно традиционным представлениям, непосредственно притягивает скрытый смысл, где автор является полновластным хозяином своих персонажей, а они - его марионетками. Ямб неоднороден по составу. Силлабика семантически диссонирует цикл, при этом нельзя говорить, что это явления собственно фоники, звукописи.</p>\r\n</div>\r\n'),
  (4,'contact','Контакты','<div id=\"contact\">\r\n\tКонтакты</div>\r\n<div id=\"content\">\r\n\t<p>\r\n\t\t123456, г. Москва, ул. Красная Пресня, д. 9</p>\r\n\t<p>\r\n\t\tТел.: 8-111-111-11-11<br />\r\n\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8-111-111-11-11</p>\r\n\t<p>\r\n\t\tmebel555@yahoo.com</p>\r\n</div>\r\n'),
  (5,'social','Социальные сети','<div id=\"social\">\r\n\t<a href=\"/\" id=\"ok\">Одноклассники</a> <a href=\"/\" id=\"vk\">В контакте</a> <a href=\"/\" id=\"tw\">Twitter</a> <a href=\"/\" id=\"fb\">Facebook</a></div>\r\n'),
  (6,'index','Главная страница','<div>'),
  (7,'order_letter','Тест письма с формы заказа','<p>\r\n\tФабрика производителя: {brand}<br />\r\n\tНаименование позиции: {title}<br />\r\n\tАртикул: {article}<br />\r\n\tОтделка: {decoration}<br />\r\n\tКатегория ткани: {material}<br />\r\n\tКоличество: {quantity}<br />\r\n\tКонтактный телефон заказчика: {phone}</p>\r\n');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;