DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `student_phone` varchar(100) default NULL,
  `student_email` varchar(255) default NULL,
  `adress_street_name` varchar(255) default NULL,
  `adress_zip_code` varchar(10) default NULL,
  `adress_city` varchar(50) default NULL,
  `skill_level` TEXT default NULL,
  `person_number` mediumint default NULL,
  `id` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `students` (`name`,`student_phone`,`student_email`,`adress_street_name`,`adress_zip_code`,`adress_city`,`skill_level`,`person_number`,`id`)
VALUES
  ("Drake Gibbs","1-584-591-6045","cursus@google.edu","P.O. Box 461, 6581 Urna. St.","416225","Västra Götalands län","beginner",19781031,729),
  ("Conan Harmon","1-701-616-3362","non.justo.proin@icloud.couk","P.O. Box 490, 3188 A, St.","65125","Maine","beginner",19938863,747),
  ("Glenna Rollins","1-727-537-4174","sed.diam@hotmail.ca","136-3912 Arcu. Road","M3G 3E8","Gävleborgs län","intermediate",19735996,267),
  ("Ferdinand Odom","1-482-974-3868","egestas.duis@yahoo.org","7759 Auctor Av.","41596","Norte de Santander","intermediate",19814992,813),
  ("Irma Scott","1-466-159-3408","enim.consequat@aol.org","7680 Erat Street","736372","Sindh","advanced",19782108,115),
  ("Cara Santiago","1-337-547-3876","rhoncus.nullam@google.com","426-947 Urna. Rd.","25609","Tasmania","advanced",20049717,843),
  ("Clarke Booker","1-895-461-6824","urna.ut@hotmail.edu","8195 Nascetur St.","49571","Dōngběi","beginner",19873997,835),
  ("Sean Myers","1-462-944-5663","nisi@aol.ca","945-1955 Malesuada Street","363657","Los Ríos","beginner",19987064,80),
  ("Wang Austin","1-545-138-8578","amet.consectetuer@aol.org","P.O. Box 715, 2787 Amet, Avenue","81471","Bahia","intermediate",19594497,569),
  ("Kylynn Hampton","1-674-539-8255","morbi.tristique.senectus@aol.couk","P.O. Box 646, 9682 Aliquet, Av.","6235","Nordland","intermediate",19761591,782),
  ("Aurelia Meyers","(667) 499-4944","a.feugiat.tellus@icloud.couk","P.O. Box 638, 2299 Vivamus Rd.","117862","Zuid Holland","advanced",19670480,77),
  ("Keiko Wiley","1-986-569-3821","donec@yahoo.couk","Ap #281-2890 Nascetur Road","04445","Huádōng","advanced",19614147,423),
  ("Francis Lynn","1-356-216-4331","mauris.ipsum.porta@icloud.org","Ap #724-7547 Proin St.","93632","Waals-Brabant","beginner",20061458,222),
  ("Tanek Salazar","(483) 818-4347","ac@outlook.org","177-4431 Felis. Av.","3005","Gauteng","beginner",19893560,847),
  ("Logan Underwood","(720) 455-1388","elementum.sem.vitae@protonmail.edu","443-9758 Pede Ave","2872","Punjab","intermediate",19636317,67),
  ("Leo Mcfarland","1-439-869-1902","mauris.sapien@protonmail.edu","P.O. Box 866, 1303 Turpis. Road","4841","Friesland","intermediate",19596798,521),
  ("Talon Olson","1-501-276-8235","nunc.mauris@yahoo.com","9487 Fusce Road","88071","Luik","advanced",19595620,779),
  ("Nash Gilliam","1-192-425-4228","sapien.cras@protonmail.couk","540-4189 Dignissim Av.","50211","Trentino-Alto Adige","advanced",20026356,38),
  ("Karly Wall","(363) 531-6866","risus.nunc@google.ca","940-9449 Tellus. St.","48228","Gangwon","beginner",19795064,147),
  ("Yardley Cooke","1-492-284-5756","accumsan.sed@protonmail.net","526-9598 Commodo Rd.","25-87","Maranhão","beginner",20015868,882),
  ("Tamara Dawson","(186) 833-5827","a.mi@google.couk","Ap #297-7122 Sem St.","68581","Đồng Tháp","intermediate",20109594,528),
  ("Jada Ochoa","1-437-728-1242","rhoncus.id@yahoo.ca","Ap #761-8427 Sed St.","65536-13509","East Region","intermediate",19590747,4),
  ("Harding Hogan","(666) 277-0463","in.hendrerit.consectetuer@hotmail.org","787-9780 Tincidunt Road","96141-387","Zakarpattia oblast","advanced",20100748,193),
  ("Kevyn Hernandez","1-306-854-2314","id@protonmail.couk","627-3364 Elementum, Ave","235095","North Island","advanced",19960624,813),
  ("Gisela Farley","1-807-117-7421","mi.aliquam.gravida@hotmail.ca","194-6102 A St.","1967-4316","Bangsamoro","beginner",20147354,755),
  ("Ori Freeman","(367) 214-7056","neque.pellentesque.massa@google.com","7678 Donec Ave","35664","South Island","beginner",19504725,996),
  ("Gemma Hester","(752) 638-4222","pharetra@yahoo.ca","4058 Eget Ave","0236 TW","Manitoba","intermediate",19986870,454),
  ("Paul Bernard","(857) 747-8193","suspendisse@hotmail.org","825-6531 Suscipit, St.","5376 CP","Boyacá","intermediate",20115185,645),
  ("Rinah Osborne","1-213-547-8374","dictum@aol.ca","6194 Penatibus Avenue","44266","Caraga","advanced",19845443,509),
  ("Lewis Ballard","1-758-560-7882","elementum.at@aol.org","288-8195 Lacinia Rd.","5343","Prince Edward Island","advanced",19821400,382);

DROP TABLE IF EXISTS `instructors`;

CREATE TABLE `instructors` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `instructor_phone` varchar(100) default NULL,
  `instructor_email` varchar(255) default NULL,
  `adress_street_name` varchar(255) default NULL,
  `adress_zip_code` varchar(10) default NULL,
  `adress_city` varchar(50) default NULL,
  `person_number` mediumint default NULL,
  `id` mediumint default NULL,
  `can_teach_ensambe` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `instructors` (`name`,`instructor_phone`,`instructor_email`,`adress_street_name`,`adress_zip_code`,`adress_city`,`person_number`,`id`,`can_teach_ensambe`)
VALUES
  ("Dale Sosa","(758) 972-0657","ligula.eu.enim@yahoo.net","Ap #153-1532 Elit Rd.","35611-32917","Calabarzon",19556650,711,"Yes"),
  ("Ava Vaughan","1-676-964-3829","vehicula@hotmail.edu","927-3131 Pede Ave","46569","Virginia",19869545,764,"No"),
  ("Carl Schultz","(740) 372-4413","lacinia.mattis.integer@outlook.org","239-2511 Vivamus Road","309386","Northumberland",20148787,934,"No"),
  ("Ayanna Leach","1-727-640-6493","morbi.sit@hotmail.net","Ap #718-7630 Fermentum Rd.","8537","Picardie",19501157,233,"No"),
  ("Simone Barnes","1-286-957-8287","massa.lobortis@hotmail.org","P.O. Box 757, 4121 Lorem Rd.","64244","Nordrhein-Westphalen",20121962,62,"No"),
  ("Addison Harrell","(344) 918-2261","dolor.sit.amet@icloud.org","691-5567 A, Ave","24640","Northwest Territories",19770219,72,"No"),
  ("Echo Robinson","1-717-227-3686","suspendisse.aliquet@aol.net","Ap #815-440 Vitae, Street","81277","Trøndelag",19797176,833,"Yes"),
  ("Willa Guy","1-837-433-6053","neque.tellus@icloud.ca","Ap #720-412 Imperdiet St.","32189","Lima",20132334,898,"No");

DROP TABLE IF EXISTS `instruments`;

CREATE TABLE `instruments` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `instrument_type` TEXT default NULL,
  `brand` TEXT default NULL,
  `id` mediumint,
  `renting_price` varchar(100) default NULL,
  `rented` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `instruments` (`instrument_type`,`brand`,`id`,`renting_price`,`rented`)
VALUES
  ("Piano","ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla",1,"$47.91","No"),
  ("Piano","nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque",126,"$85.63","Yes"),
  ("Violin","lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis",251,"$24.17","Yes"),
  ("Violin","erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat",376,"$38.73","Yes"),
  ("Guitar","aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam",501,"$76.44","No"),
  ("Guitar","molestie. Sed id risus quis diam luctus lobortis. Class aptent",626,"$74.55","Yes"),
  ("Electric-guitar","magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec",751,"$42.97","Yes"),
  ("Electric-guitar","vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur",876,"$15.02","No"),
  ("Bass","faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor",1001,"$40.45","Yes"),
  ("Bass","sem semper erat, in consectetuer ipsum nunc id enim. Curabitur",1126,"$76.83","Yes"),
  ("Flute","lectus convallis est, vitae sodales nisi magna sed dui. Fusce",1251,"$32.60","Yes"),
  ("Flute","tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque",1376,"$19.65","Yes"),
  ("Cello","lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at",1501,"$6.28","No"),
  ("Cello","vel lectus. Cum sociis natoque penatibus et magnis dis parturient",1626,"$58.43","No"),
  ("Drums","porttitor tellus non magna. Nam ligula elit, pretium et, rutrum",1751,"$99.65","No"),
  ("Drums","lectus sit amet luctus vulputate, nisi sem semper erat, in",1876,"$80.11","Yes"),
  ("Piano","Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam",2001,"$8.67","Yes"),
  ("Piano","Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc",2126,"$48.66","Yes"),
  ("Violin","Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,",2251,"$43.79","Yes"),
  ("Violin","ante ipsum primis in faucibus orci luctus et ultrices posuere",2376,"$8.02","Yes");

DROP TABLE IF EXISTS `lessons`;

CREATE TABLE `lessons` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `instructor_id` mediumint,
  `price_scheme_id` mediumint,
  `id` mediumint,
  `max_spots` mediumint default NULL,
  `min_spots` mediumint default NULL,
  `genre` TEXT default NULL,
  `lesson_type` TEXT default NULL,
  `time` varchar(255),
  `instrument_type` TEXT default NULL,
  `room_number` mediumint default NULL,
  `number_of_spots` mediumint default NULL,
  `skill_level` TEXT default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `lessons` (`instructor_id`,`price_scheme_id`,`id`,`max_spots`,`min_spots`,`genre`,`lesson_type`,`time`,`instrument_type`,`room_number`,`number_of_spots`,`skill_level`)
VALUES
  (1,1,1,14,3,"rock","individual","9:20 AM","Guitar",10,1,"beginner"),
  (100,2,2,30,6,"rock","individual","11:31 PM","Guitar",4,1,"beginner"),
  (199,3,3,28,3,"pop","group","7:40 PM","Piano",22,3,"intermediate"),
  (298,4,4,17,7,"pop","group","6:21 AM","Piano",23,1,"intermediate"),
  (397,5,5,30,3,"classic","ensamble","6:54 AM","Violin",31,3,"advanced"),
  (496,6,6,33,1,"classic","ensamble","2:02 PM","Violin",2,10,"advanced"),
  (595,7,7,14,6,"indie","individual","8:59 AM","Bass",19,8,"beginner"),
  (694,8,8,30,3,"indie","individual","12:16 PM","Bass",27,0,"beginner"),
  (793,9,9,19,4,"punk","group","1:52 PM","Electric-guitar",7,7,"intermediate"),
  (892,10,10,14,6,"punk","group","10:11 AM","Electric-guitar",19,3,"intermediate"),
  (991,11,11,6,3,"rock","ensamble","6:38 AM","Flute",7,2,"advanced"),
  (1090,12,12,6,4,"rock","ensamble","9:06 PM","Flute",6,6,"advanced"),
  (1189,13,13,23,3,"pop","individual","3:31 AM","Guitar",15,1,"beginner"),
  (1288,14,14,29,5,"pop","individual","7:55 PM","Guitar",2,3,"beginner"),
  (1387,15,15,17,7,"classic","group","8:01 AM","Piano",28,10,"intermediate");

DROP TABLE IF EXISTS `price_scheme`;

CREATE TABLE `price_scheme` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `id` mediumint,
  `skill_level_price` varchar(100) default NULL,
  `lesson_type_price` varchar(100) default NULL,
  `discount` varchar(100) default NULL,
  `instructor_salary` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `price_scheme` (`id`,`skill_level_price`,`lesson_type_price`,`discount`,`instructor_salary`)
VALUES
  (1,"$54.69","$51.91","$75.13","$90.02"),
  (126,"$81.95","$75.71","$61.61","$1.46"),
  (251,"$50.70","$25.74","$38.65","$9.01"),
  (376,"$71.51","$65.77","$60.86","$35.49"),
  (501,"$40.07","$99.29","$91.23","$14.24"),
  (626,"$61.41","$27.36","$34.70","$35.16"),
  (751,"$46.59","$34.61","$27.37","$81.11"),
  (876,"$18.44","$12.12","$2.96","$66.25"),
  (1001,"$61.41","$48.53","$93.94","$13.76"),
  (1126,"$70.90","$24.24","$82.75","$49.20"),
  (1251,"$58.94","$78.90","$85.80","$9.78"),
  (1376,"$97.38","$89.99","$85.09","$13.28"),
  (1501,"$50.49","$57.01","$17.45","$27.65"),
  (1626,"$71.97","$46.19","$80.30","$56.02"),
  (1751,"$9.82","$86.22","$94.95","$25.15"),
  (1876,"$59.57","$87.92","$56.18","$18.47"),
  (2001,"$53.59","$57.33","$82.85","$29.92"),
  (2126,"$95.36","$6.26","$81.67","$44.46"),
  (2251,"$16.23","$18.02","$99.59","$8.58"),
  (2376,"$64.89","$47.58","$65.72","$83.52"),
  (2501,"$37.08","$81.22","$92.10","$43.85");

DROP TABLE IF EXISTS `student_lessons`;

CREATE TABLE `student_lessons` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `student_id` mediumint,
  `lesson_id` mediumint,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `student_lessons` (`student_id`,`lesson_id`)
VALUES
  (1,1),
  (100,21),
  (199,41),
  (298,61),
  (397,81),
  (496,101),
  (595,121),
  (694,141),
  (793,161),
  (892,181),
  (991,201),
  (1090,221),
  (1189,241),
  (1288,261),
  (1387,281),
  (1486,301),
  (1585,321),
  (1684,341),
  (1783,361),
  (1882,381),
  (1981,401),
  (2080,421),
  (2179,441),
  (2278,461),
  (2377,481),
  (2476,501),
  (2575,521),
  (2674,541),
  (2773,561),
  (2872,581),
  (2971,601),
  (3070,621),
  (3169,641),
  (3268,661),
  (3367,681);

DROP TABLE IF EXISTS `rented_instruments`;

CREATE TABLE `rented_instruments` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `instruments_id` mediumint,
  `student_id` mediumint,
  `rented_date` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `rented_instruments` (`instruments_id`,`student_id`,`rented_date`)
VALUES
  (1,1,"Jan 5, 2023"),
  (100,21,"Apr 14, 2023"),
  (199,41,"Feb 16, 2022"),
  (298,61,"Sep 9, 2022"),
  (397,81,"Nov 10, 2022"),
  (496,101,"Nov 30, 2021"),
  (595,121,"Jan 30, 2022"),
  (694,141,"Jan 30, 2023"),
  (793,161,"Jul 4, 2023"),
  (892,181,"Dec 12, 2022"),
  (991,201,"Feb 14, 2022");

DROP TABLE IF EXISTS `parent_phone`;

CREATE TABLE `parent_phone` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `student_id` mediumint,
  `parent_phone` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `parent_phone` (`student_id`,`parent_phone`)
VALUES
  (1,"1-291-620-0273"),
  (21,"1-213-896-2163"),
  (41,"1-386-208-3259"),
  (61,"(804) 470-1536"),
  (81,"(324) 858-8486"),
  (101,"(772) 817-5643"),
  (121,"1-791-715-5275"),
  (141,"(471) 261-9822"),
  (161,"1-702-815-2846"),
  (181,"(322) 575-3195"),
  (201,"(914) 452-4981");

DROP TABLE IF EXISTS `parent_email`;

CREATE TABLE `parent_email` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `student_id` mediumint,
  `parent_email` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `parent_email` (`student_id`,`parent_email`)
VALUES
  (1,"phasellus.libero.mauris@protonmail.couk"),
  (21,"eu.odio.phasellus@yahoo.net"),
  (41,"pede@hotmail.ca"),
  (61,"dignissim.magna.a@yahoo.com"),
  (81,"risus.morbi.metus@protonmail.net"),
  (101,"ut.dolor@google.com"),
  (121,"pellentesque.sed@aol.couk"),
  (141,"non.arcu@yahoo.net"),
  (161,"arcu.curabitur@google.ca"),
  (181,"aenean.euismod@yahoo.com"),
  (201,"molestie@aol.edu");

DROP TABLE IF EXISTS `siblings`;

CREATE TABLE `siblings` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `student_id` mediumint,
  `sibling_student_id` mediumint,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `siblings` (`student_id`,`sibling_student_id`)
VALUES
  (1,1),
  (21,100),
  (41,199),
  (61,298),
  (81,397),
  (101,496),
  (121,595),
  (141,694),
  (161,793);
