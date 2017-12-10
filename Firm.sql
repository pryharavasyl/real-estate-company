create database firm
On (Name = firm_dat,
Filename = 'C:\firm.mdf')
Log on (Name = firm_log,
Filename = 'C:\firm.ldf')

use firm
create table rieltors
(id_rieltor int primary key not null,
second_name nvarchar(20) not null,
first_name nvarchar(20) not null,
middle_name nvarchar(20) not null,
phone_number nvarchar(10) not null
check (phone_number Like('[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
email nvarchar(30) not null
check (email Like('%_@____%')),
premium nvarchar(5) not null
check (premium between 0 and 100))

Insert into rieltors
values
(2001,'Àðàìà','Îëüãà','Ôåäîð³âíà','0737389562','arama@ukr.net','5'),
(2002,'Áàê','Ðîìàí','Þð³éîâè÷','0938472947','bak@gmail.com','10'),
(2003,'Áàëàáàí','Àíàñòàñ³ÿ','Îëåêñàíäð³âíà','0736098267','balaban@gmail.com','12'),

(2004,'Áîéêî','Ðîìàí','Âîëîäèìèðîâè÷','0668363785','boyko@gmail.com','25'),
(2005,'Âîâê','Âîëîäèìèð','Âîëîäèìèðîâè÷','0957301264','vovk@ukr.net','5'),
(2006,'Ãðèöèê','Þë³ÿ','Àíäð³¿âíà','0996409271','grizik@gmail.com','8'),
(2007,'Ãóò³â','Àíäð³é','Îëåãîâè÷','0507893610','gutiv@mail.ru','10'),
(2008,'Ãðåìåíòà','Îëåíà','ªâãåí³¿âíà','0974679027','grementa@ukr.net','18'),
(2009,'Äâîðÿíñüêà','Àííà-Àíàñòàñ³ÿ','Òàðàñ³âíà','0995378904','dvorianska@gmail.com','12'),
(2010,'Äåìÿí','Âàñèëü','Ìèêîëàéîâè÷','0937890674','demon@mail.ru','15'),
(2011,'Äçüîáà','Â³êòîð³ÿ','Àíäð³¿âíà','0736789306','dzioba@gmail.com','15'),
(2012,'Ä³æàê','Îêñàíà','ßðîñëàâ³âíà','0996478936','dighak@ukr.net','15'),
(2013,'Ìàñë³é','Îëåêñàíäðà','Ðîìàí³âíà','0669349947','masliy@mail.ru','20'),
(2014,'Ìàë³êîâ','Âàëåíòèí','Ìèõàéëîâè÷','0508390267','malikoff@gmail.com','20'),
(2015,'Ïðèãàðà','Âàñèëü','Âîëîäèìèðîâè÷','0937490123','prihara@mail.ru','20'),
(2016,'Ïîë³ùàê','²ðèíà','²ãîð³âíà','0678930294','polishchak@ukr.net','5'),
(2017,'Ðàêîâà','Àíàñòàñ³ÿ','Àíäð³¿âíà','0996478902','rakova@gmail.com','25'),
(2018,'Ðîìàíåíêî','Îëüãà','Îëåêñàíäð³âíà','0736789043','romanenko@mail.ru','10'),
(2019,'Ñåêåòà','Äàíèëî','Ëüâîâè÷','0996784321','seketa@ukr.net','5'),
(2020,'Ñìîëüñüêèé','Äìèòðî','Ìèêîëàéîâè÷','0937894673','smolskiy@gmail.com','8')

delete from rieltors
where id_rieltor=2014

delete from rieltors
where phone_number like '050%'

delete from rieltors
where premium>=20

 Insert into rieltors
values
(2014,'Ôèê','Âîëîäèìèð','Þð³éîâè÷','0737389362','fik@ukr.net','8'),
(2007,'Ãóò³â','Àíäð³é','Îëåãîâè÷','0937893610','gutiv@mail.ru','10'),
(2004,'Áîéêî','Ðîìàí','Âîëîäèìèðîâè÷','0668363785','boyko@gmail.com','18'),
(2013,'Ìàñë³é','Îëåêñàíäðà','Ðîìàí³âíà','0669349947','masliy@mail.ru','17'),
(2015,'Ïðèãàðà','Âàñèëü','Âîëîäèìèðîâè÷','0937490123','prihara@mail.ru','19'),
(2017,'Ðàêîâà','Àíàñòàñ³ÿ','Àíäð³¿âíà','0996478902','rakova@gmail.com','15')

update rieltors
set second_name='Äåì*ÿí'
where id_rieltor=2010

update rieltors
set second_name='Êîãóò'
where second_name='Ïîë³ùàê'

update rieltors
set premium=10
where premium<10

update rieltors
set phone_number='0997397481'
where second_name='Áàê'

update rieltors
set premium=premium+1

use firm
create table realty
(id_object int primary key not null,
type_object nvarchar(20) not null,
adress_city nvarchar(20) not null,
adress_area nvarchar(20) null,
adress_street nvarchar(20)not null,
adress_house int not null,
adress_aparment int null,
floors int null default '1',
price money not null,
sqr int not null,
sell_or_rent nvarchar(4)not null,
constraint check_sell_or_rent check (sell_or_rent in ('sell','rent')),
constraint check_type_object check (type_object in ('apartment','house')),
unique (id_object),
constraint  check_id_object_a check (id_object > 0),
constraint  check_adress_house_a check (adress_house > 0),
constraint  check_price_a check (price > 0),
constraint  check_floor_a check (floors > 0))

insert into realty
values 
(1001, 'apartment', 'lviv','luchakiv', 'pasichna', 22, 515, 1, '10000', 30, 'sell'),
(1002, 'apartment', 'lviv','shevchenka', 'mamaiva', 1, 51, 1, '110000', 63, 'sell'),
(1003, 'apartment', 'lviv','shevchenka', 'horodotska', 2, 5, 1, '500', 63, 'rent'),
(1004, 'house', 'kyiv','troeshchina', 'velyka', 301, null, 3, '550000', 500, 'sell'),
(1005, 'apartment', 'lutsk','black', 'zelena', 23, 55, 1, '18000', 63, 'sell'),
(1006, 'apartment', 'Kharkiv','alexeivka', 'shevchenka', 3, 51, 1, '200', 46, 'rent'),
(1007, 'house', 'Kyiv','obolon', 'doroshenka', 58, null, 1, '150', 35, 'rent'),
(1008, 'house', 'Kyiv','shevchenka', 'zelena', 3, null, 2, '20000', 150, 'sell'),
(1009, 'apartment', 'kyiv','shevchenka', 'zelena', 1, 6, 1, '280', 80, 'rent'),
(1010, 'apartment', 'lviv','shevchenka', 'bichna', 15, 15, 1, '110000', 45, 'sell'),
(1011, 'apartment', 'lviv','lychakiv', 'dovha', 3, 5, 1, '50000', 60, 'sell'),
(1012, 'apartment', 'lviv','syhiv', 'levytskoho', 16, 39, 1, '45000', 80, 'sell'),
(1013, 'apartment', 'lviv','syhiv', 'franka', 47, 14, 1, '1100000', 67, 'sell'),
(1014, 'apartment', 'lviv','luchakiv', 'luschakivska', 2, 21, 1, '8000', 41, 'sell'),
(1015, 'house', 'Odessa','centr', 'shyroka', 45, null, 2, '250', 200, 'rent'),
(1016, 'apartment', 'Kyiv','obolon', 'korotka', 5, 1, 1, '23000', 51, 'sell'),
(1017, 'house', 'lutsk','white', 'mamaiva', 57, null, 4, '35000', 700, 'sell'),
(1018, 'house', 'ternopil','okruzhna', 'zolota', 10, 2, 1, '100', 75, 'rent'),
(1019, 'house', 'lviv','franka', 'chuprynky', 1, null, 1, '15000', 90, 'sell'),
(1020, 'apartment', 'chop','mosty', 'shevchenka', 19, 16, 1, '150', 63, 'rent'),
(1021, 'apartment', 'lviv','shevchenka', 'mala', 201, 18, 1, '240', 48, 'rent'),
(1022, 'house', 'lviv','franka', 'kosach', 359, null, 1, '38000', 180, 'sell'),
(1023, 'apartment', 'lviv','franka', 'velyka', 3, 2, 1, '400', 55, 'rent'),
(1024, 'apartment', 'kyiv','sviatoshyn', 'chyprynky', 28, 3, 1, '500', 58, 'rent'),
(1025, 'apartment', 'kyiv','obolon', 'bila', 37, 45, 1, '80', 59, 'rent'),
(1026, 'apartment', 'lviv','lychakiv', 'kavova', 34, 3, 1, '14000', 60, 'sell'),
(1027, 'apartment', 'lviv','franka', 'zelena', 78, 5, 1, '110000', 61, 'sell'),
(1028, 'apartment', 'kyiv','shevchenka', 'khreschatyk', 91, 6, 1, '180', 64, 'rent'),
(1029, 'apartment', 'kyiv','shevchenka', 'khreschatyk', 2, 42, 1, '180000', 63, 'sell'),
(1030, 'apartment', 'lutsk','grey', 'barabasha', 8, 28, 1, '280', 63, 'rent'),
(1031, 'apartment', 'lutsk','red', 'okryzna', 19, 14, 1, '21000', 28, 'sell'),
(1032, 'apartment', 'dnipro','daleko', 'valova', 44, 41, 1, '320', 40, 'rent'),
(1033, 'house', 'lviv','syhiv', 'mala', 59, null, 1, '420', 110, 'rent'),
(1034, 'apartment', 'lviv','syhiv', 'shevchenka', 49, 23, 1, '15000', 64, 'sell'),
(1035, 'apartment', 'lviv','shevchenka', 'zelena', 98, 8, 1, '45000', 69, 'sell'),
(1036, 'apartment', 'dnipto','blyzko', 'pidkovy', 100, 9, 1, '600000', 71, 'sell'),
(1037, 'apartment', 'kyiv','sviatoshyn', 'franka', 1, 1, 1, '56000', 79, 'sell'),
(1038, 'house', 'lviv','lyxhakiv', 'zelena', 45, null, 3, '170', 200, 'rent'),
(1039, 'apartment', 'kyiv','shevchenka', 'kovalia', 48, 8, 1, '45000', 42, 'sell'),
(1040, 'house', 'kharkiv','alexeivka', 'bila', 98, null, 2, '89000', 150, 'sell'),
(1041, 'apartment', 'kyiv','shevchenka', 'vovchka', 169, 2, 1, '100', 52, 'rent'),
(1042, 'apartment', 'kharkiv','alexeivka', 'vovchka', 65, 3, 1, '110', 58, 'rent'),
(1043, 'apartment', 'kharkiv','alexeivka', 'zolota', 92, 4, 1, '110000', 55, 'sell'),
(1044, 'apartment', 'lviv','franka', 'teatralna', 13, 5, 1, '150', 60, 'rent'),
(1045, 'house', 'lviv','shevchenka', 'zelena', 7, null, 2, '200000', 146, 'sell'),
(1046, 'apartment', 'dnipro','centr', 'kotsubynskoho', 1, 10, 1, '210', 80, 'rent'),
(1047, 'apartment', 'dnipro','centr', 'trusha', 7, 11, 1, '580', 81, 'sell'),
(1048, 'apartment', 'lviv','shevchenka', 'zelena', 99, 32, 1, '50000', 95, 'sell'),
(1049, 'house', 'lviv','shevchenka', 'zelena', 16, null, 5, '1000', 1000, 'rent'),
(1050, 'house', 'lviv','shevchenka', 'luchakivska', 6, null, 1, '1000000', 63, 'sell')


update realty
set adress_street = 'ifranka'
where adress_street='franka'

insert into realty
values
(1051, 'house', 'ternopil','grey', 'chornovala', 8, null, 2, '60000', 140, 'sell'),
(1052, 'apartment', 'lviv','shevchenka', 'chornovola', 2, '23', 1, '56000', 50, 'sell'),
(1053, 'apartment', 'kyiv','shevchenka', 'luchakivska', 6, '12', 1, '60000', 65, 'sell'),
(1054, 'apartment', 'lviv','syhiv', 'bandery', 6, '10', 1, '450', 63, 'sell')


update realty
set sell_or_rent = 'rent'
where id_object = '1054'

update realty
set price = price + 10 
where adress_city = 'kyiv'

update realty
set price = price * 0.95
where sqr<50

delete from realty
where id_object = 1054

update realty
set sqr = 1200
where id_object = 1053

delete from realty
where sqr > 1000








where email like '%@ukr.net'

update rieltors
set premium=premium-2
where email like '%@mail.ru'
