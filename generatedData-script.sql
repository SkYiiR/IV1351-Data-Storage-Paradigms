INSERT INTO student (name,adress_street_name,adress_zip_code,adress_city,skill_level,person_number)
VALUES
  ('Quail Alford','Ap #407-6028 Mi Av.','08474','Lipetsk','beginner',880342024008),
  ('Raja Watts','8793 Scelerisque, Av.','31115','Campomorone','beginner',431991027680),
  ('Coby Matthews','Ap #405-6069 Venenatis Rd.','4405','Serang','intermediate',323754890176),
  ('Gavin Bean','Ap #306-3344 Suspendisse Street','81325-92697','Newton','intermediate',200303297103),
  ('Wylie Walsh','5503 Sed Rd.','1114','Secunda','advanced',348367340199),
  ('Halla Tran','Ap #913-5057 Eleifend Road','B3R 2S7','Aklavik','advanced',542058317578),
  ('Alexander Santiago','175-6777 Donec Avenue','40414','Bama','beginner',821493299639),
  ('Dara Wyatt','465 Nam Avenue','9275','Novodvinsk','beginner',345441754161),
  ('Chanda Robertson','2531 Mus. Rd.','40213','Larvik','intermediate',892290147737),
  ('Kellie Mcclure','976-1208 Elit. Rd.','18-39','Saratov','intermediate',427416178915),
  ('Hilda Shaffer','6510 Magna Street','632824','Tours','advanced',523684071607),
  ('Clayton Wynn','562-8691 Curabitur Av.','58684-653','Trier','advanced',482014722442),
  ('Magee Gilbert','P.O. Box 926, 5778 Non, St.','30-686','Santander','beginner',157480384785),
  ('John Norman','Ap #687-6869 Est, Rd.','323597','Bais','beginner',787677916641),
  ('Jenette Knight','Ap #958-6062 Quis, Street','175268','Woodlands','intermediate',895498689899);


INSERT INTO instructor (name,adress_street_name,adress_zip_code,adress_city,can_teach_ensamble,person_number)
VALUES
  ('Gay Nixon','Ap #238-6345 Arcu Rd.','844283','Lạng Sơn','Yes',982494608382),
  ('Lee Riggs','1334 Massa. Avenue','01278','Agartala','No',846099015685),
  ('Risa Hyde','641-9538 Quisque Ave','89750-863','Mildura','Yes',990860621871),
  ('Hu Dickson','Ap #127-3538 Nibh St.','777458','Gulfport','No',245712828710),
  ('Veronica Cruz','P.O. Box 464, 6782 Sodales Rd.','39216-87724','Hong Kong','No',240212685784);



INSERT INTO instrument (instrument_type,brand,renting_price,rented)
VALUES
  ('piano','Steinway_Musical_Instruments',29,'No'),
  ('piano','Yamaha',18,'Yes'),
  ('cello','Steinway_Musical_Instruments',99,'No'),
  ('cello','Sennheiser',10,'Yes'),
  ('flute','Sennheiser',99,'No'),
  ('flute','Harman_Professional',26,'No'),
  ('guitar','Fender_Musical_Instruments',94,'No'),
  ('guitar','Yamaha',56,'No'),
  ('drums','Yamaha',33,'No'),
  ('drums','Fender_Musical_Instruments',75,'No'),
  ('bass','Yamaha',43,'Yes'),
  ('bass','Harman_Professional',12,'No'),
  ('violin','Steinway_Musical_Instruments',54,'No'),
  ('violin','Shure',25,'Yes'),
  ('piano','Sennheiser',9,'No'),
  ('piano','Steinway_Musical_Instruments',51,'Yes'),
  ('cello','Yamaha',30,'Yes'),
  ('cello','Steinway_Musical_Instruments',26,'No');



INSERT INTO lesson (instructor_id,price_scheme_id,max_spots,min_spots,genre,lesson_type,time,instrument_type,room_number,number_of_spots,skill_level)
VALUES
  (4,4,7,13,'pop','Individual','12:31 AM','piano',183,15,'beginner'),
  (2,6,8,13,'pop','group','8:19 AM','cello',130,13,'intermediate'),
  (2,5,14,2,'jazz','ensamble','8:41 PM','flute',227,2,'advanced'),
  (2,3,11,6,'jazz','Individual','1:57 PM','bass',105,5,'beginner'),
  (4,6,7,2,'piano','Dec 18, 2022','group','pop',146,1,'Individual'),
  (4,5,6,2,'guitar','Dec 17, 2022','ensamble','jazz',119,2,'Individual'),
  (2,2,9,9,'drums','Dec 12, 2022','Individual','rock',119,1,'group'),  
  (2,2,9,9,'drums','Dec 18, 2022','Individual','rock',119,1,'group'),
  (1,5,7,8,'violin','Dec 16, 2022','group','classic',188,4,'group'),
  (2,4,8,8,'bass','Dec 17, 2022','ensamble','indie',116,1,'ensamble'),
  (3,4,8,7,'flute','Dec 13, 2022','Individual','soul',152,3,'ensamble'),
  (2,6,8,9,'cello','Dec 13, 2022','group','pop',152,4,'Individual'),
  (4,4,10,3,'piano','Dec 18, 2022','ensamble','jazz',197,2,'Individual'),
  (3,7,10,8,'guitar','Dec 12, 2022','Individual','rock',112,3,'group'),
  (4,3,8,3,'piano','Dec 13, 2022','group','pop',197,1,'beginner'),
  (2,4,9,2,'guitar','Dec 13, 2022','ensamble','jazz',113,3,'beginner'),
  (2,4,10,4,'drums','Dec 15, 2022','Individual','rock',109,1,'advanced'),
  (1,3,9,3,'violin','Dec 16, 2022','group','classic',175,2,'advanced'),
  (4,7,7,4,'bass','Dec 17, 2022','ensamble','indie',143,3,'intermediate'),
  (1,4,10,4,'flute','Dec 18, 2022','Individual','soul',143,3,'intermediate'),
  (4,7,7,4,'cello','Dec 12, 2022','group','pop',141,1,'beginner'),
  (2,2,8,5,'piano','Dec 13, 2022','ensamble','jazz',103,3,'beginner'),
  (3,5,9,2,'guitar','Dec 17, 2022','Individual','rock',155,3,'advanced'),
  (2,7,7,4,'drums','Dec 16, 2022','group','classic',164,1,'advanced'),
  (1,4,9,3,'violin','Dec 18, 2022','ensamble','indie',190,2,'intermediate'),
  (4,2,10,5,'piano','Dec 14, 2022','ensamble','pop',201,10,'beginner'),
  (4,1,10,4,'guitar','Dec 14, 2022','ensamble','jazz',142,9,'beginner'),
  (5,2,10,4,'drums','Dec 14, 2022','ensamble','rock',191,7,'advanced'),
  (2,7,10,2,'violin','Dec 14, 2022','ensamble','classic',113,8,'advanced'),
  (4,6,10,4,'bass','Dec 14, 2022','ensamble','indie',125,9,'intermediate'),
  (2,3,10,4,'bass','Dec 18, 2022','Individual','soul',123,1,'intermediate'),
  (4,6,6,2,'flute','Dec 12, 2022','group','pop',104,1,'beginner'),
  (2,4,7,3,'cello','Dec 11, 2022','ensamble','jazz',125,2,'beginner'),
  (5,5,8,2,'piano','Dec 11, 2022','Individual','rock',128,2,'advanced'),
  (2,3,7,6,'drums','Dec 13, 2022','group','classic',196,2,'group'),
  (4,1,7,7,'violin','Dec 17, 2022','ensamble','indie',179,1,'ensamble'),
  (4,3,7,2,'bass','Dec 12, 2022','Individual','soul',176,4,'ensamble'),
  (2,6,6,4,'flute','Dec 14, 2022','group','pop',131,3,'Individual'),
  (3,4,10,5,'cello','Dec 17, 2022','ensamble','jazz',155,4,'Individual'),
  (5,5,9,6,'piano','Dec 12, 2022','Individual','rock',110,3,'group'),
  (3,2,17,9,'rock','group','2:54 AM','violin',245,13,'intermediate'),
  (2,6,7,11,'rock','ensamble','4:46 AM','drums',130,10,'advanced'),
  (3,2,19,3,'classic','Individual','4:37 AM','guitar',209,14,'beginner'),
  (2,2,17,15,'classic','group','9:04 PM','piano',282,9,'intermediate'),
  (2,1,11,11,'soul','ensamble','8:32 PM','cello',195,11,'advanced'),
  (2,6,9,3,'soul','Individual','9:20 PM','flute',287,7,'beginner');



INSERT INTO price_scheme  (skill_level_price,lesson_type_price,discount,instructor_salary)
VALUES
  (22,93,20,74),
  (45,100,88,39),
  (13,94,97,32),
  (29,58,22,30),
  (38,40,8,98),
  (23,24,74,68),
  (68,95,98,86);


INSERT INTO student_lessons (student_id,lesson_id)
VALUES
  (13,2),
  (4,8),
  (7,6),
  (4,4),
  (11,7),
  (6,9),
  (5,3),
  (8,7),
  (9,9),
  (14,3),
  (1,3),
  (14,10),
  (7,9),
  (9,6),
  (14,9),
  (8,9),
  (6,4),
  (11,1),
  (11,9),
  (15,8),
  (12,2),
  (12,8),
  (10,9),
  (10,4),
  (9,4),
  (8,6),
  (3,4),
  (8,3),
  (10,5),
  (2,7),
  (2,4);


INSERT INTO rented_instruments (student_id,instruments_id,rented_date)
VALUES
  (7,15,'Apr 20, 2023'),
  (6,5,'May 13, 2023'),
  (13,3,'Oct 29, 2023'),
  (7,1,'Jul 30, 2022'),
  (11,10,'Feb 25, 2023'),
  (12,4,'Jun 3, 2023'),
  (11,9,'Mar 28, 2023'),
  (8,14,'Oct 4, 2022'),
  (12,11,'Sep 5, 2023'),
  (15,17,'Aug 17, 2022'),
  (2,16,'Jan 20, 2023');



INSERT INTO parent_phone (student_id, phone_number)
VALUES
  (1,'0741483337'),
  (2,'0732628312'),
  (3,'0708866286'),
  (4,'0716688135'),
  (5,'0740983899'),
  (6,'0796443845'),
  (7,'0776911335'),
  (8,'0739393481'),
  (9,'0768371365'),
  (10,'0732684495'),
  (11,'0769779983'),
  (12,'0752558324'),
  (13,'0730476545'),
  (14,'0725192542'),
  (15,'0732226984');

INSERT INTO parent_email (student_id,email)
VALUES
  (1,'luctus.sit.amet@hotmail.couk'),
  (2,'semper@protonmail.couk'),
  (3,'ornare.sagittis.felis@google.edu'),
  (4,'dictum.phasellus@protonmail.com'),
  (5,'at.fringilla.purus@google.edu'),
  (6,'feugiat.tellus@protonmail.org'),
  (7,'taciti@protonmail.net'),
  (8,'ornare.fusce@google.net'),
  (9,'velit.dui@yahoo.edu'),
  (10,'dolor.egestas@aol.ca'),
  (11,'sapien@google.edu'),
  (12,'hendrerit.consectetuer@google.com'),
  (13,'dictum.placerat@protonmail.edu'),
  (14,'lacus.varius.et@google.ca'),
  (15,'erat.neque@google.com');

INSERT INTO student_phone (student_id,phone_number)
VALUES
  (1,'0700889872'),
  (2,'0765773956'),
  (3,'0744325437'),
  (4,'0722996045'),
  (5,'0763554111'),
  (6,'0766499188'),
  (7,'0746238659'),
  (8,'0730734262'),
  (9,'0752964973'),
  (10,'0704215665'),
  (11,'0797318148'),
  (12,'0755618762'),
  (13,'0769878987'),
  (14,'0741088854'),
  (15,'0798561223');


INSERT INTO student_email (student_id,email)
VALUES
  (1,'orci@icloud.net'),
  (2,'proin@google.net'),
  (3,'diam.dictum@yahoo.org'),
  (4,'ultrices@aol.couk'),
  (5,'nec.metus.facilisis@hotmail.net'),
  (6,'sociis.natoque.penatibus@outlook.org'),
  (7,'turpis.non.enim@outlook.edu'),
  (8,'aliquam.iaculis@protonmail.com'),
  (9,'sed@protonmail.couk'),
  (10,'sapien.nunc@outlook.ca'),
  (11,'quis.accumsan@hotmail.net'),
  (12,'nibh@aol.com'),
  (13,'nulla.magna.malesuada@outlook.org'),
  (14,'mi.pede@protonmail.couk'),
  (15,'ut.nulla.cras@hotmail.couk');

INSERT INTO instructor_phone (instructor_id,phone_number)
VALUES
  (1,'0783468108'),
  (2,'0774662024'),
  (3,'0733425789'),
  (4,'0741101636'),
  (5,'0752771462');

INSERT INTO instructor_email (instructor_id,email)
VALUES
  (1,'sed.pede@google.com'),
  (2,'libero.donec.consectetuer@protonmail.edu'),
  (3,'sagittis.duis@google.ca'),
  (4,'rhoncus@aol.org'),
  (5,'felis.orci@aol.couk');

INSERT INTO sibling (student_id,sibling_student_id)
VALUES
  (1,3),
  (3,1),
  (2,6),
  (6,2),
  (9,7),
  (7,9),
  (4,10),
  (10,4),
  (5,8),
  (8,5),
  (11,12),
  (12,11),
  (11,13),
  (13,11),
  (12,13),
  (13,12);