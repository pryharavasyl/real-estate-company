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
(2001,'Арама','Ольга','Федорівна','0737389562','arama@ukr.net','5'),
(2002,'Бак','Роман','Юрійович','0938472947','bak@gmail.com','10'),
(2003,'Балабан','Анастасія','Олександрівна','0736098267','balaban@gmail.com','12'),
(2004,'Бойко','Роман','Володимирович','0668363785','boyko@gmail.com','25'),
(2005,'Вовк','Володимир','Володимирович','0957301264','vovk@ukr.net','5'),
(2006,'Грицик','Юлія','Андріївна','0996409271','grizik@gmail.com','8'),
(2007,'Гутів','Андрій','Олегович','0507893610','gutiv@mail.ru','10'),
(2008,'Гремента','Олена','Євгеніївна','0974679027','grementa@ukr.net','18'),
(2009,'Дворянська','Анна-Анастасія','Тарасівна','0995378904','dvorianska@gmail.com','12'),
(2010,'Демян','Василь','Миколайович','0937890674','demon@mail.ru','15'),
(2011,'Дзьоба','Вікторія','Андріївна','0736789306','dzioba@gmail.com','15'),
(2012,'Діжак','Оксана','Ярославівна','0996478936','dighak@ukr.net','15'),
(2013,'Маслій','Олександра','Романівна','0669349947','masliy@mail.ru','20'),
(2014,'Маліков','Валентин','Михайлович','0508390267','malikoff@gmail.com','20'),
(2015,'Пригара','Василь','Володимирович','0937490123','prihara@mail.ru','20'),
(2016,'Поліщак','Ірина','Ігорівна','0678930294','polishchak@ukr.net','5'),
(2017,'Ракова','Анастасія','Андріївна','0996478902','rakova@gmail.com','25'),
(2018,'Романенко','Ольга','Олександрівна','0736789043','romanenko@mail.ru','10'),
(2019,'Секета','Данило','Львович','0996784321','seketa@ukr.net','5'),
(2020,'Смольський','Дмитро','Миколайович','0937894673','smolskiy@gmail.com','8')

delete from rieltors
where id_rieltor=2014

delete from rieltors
where phone_number like '050%'

delete from rieltors
where premium>=20

 Insert into rieltors
values
(2014,'Фик','Володимир','Юрійович','0737389362','fik@ukr.net','8'),
(2007,'Гутів','Андрій','Олегович','0937893610','gutiv@mail.ru','10'),
(2004,'Бойко','Роман','Володимирович','0668363785','boyko@gmail.com','18'),
(2013,'Маслій','Олександра','Романівна','0669349947','masliy@mail.ru','17'),
(2015,'Пригара','Василь','Володимирович','0937490123','prihara@mail.ru','19'),
(2017,'Ракова','Анастасія','Андріївна','0996478902','rakova@gmail.com','15')

update rieltors
set second_name='Дем*ян'
where id_rieltor=2010

update rieltors
set second_name='Когут'
where second_name='Поліщак'

update rieltors
set premium=10
where premium<10

update rieltors
set phone_number='0997397481'
where second_name='Бак'

update rieltors
set premium=premium+1
where email like '%@ukr.net'

update rieltors
set premium=premium-2
where email like '%@mail.ru'

create table clients
(client_passport nvarchar(8) primary key not null,
second_name nvarchar(20) not null,
first_name nvarchar(20) not null,
middle_name nvarchar(20) not null,
sex nvarchar(3) not null,
phone_number nvarchar(10) not null
check (phone_number Like('[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
email nvarchar(30) null
check (email Like('%_@____%')),
certificate_of_income nvarchar(1) null)

insert into clients
values 
('ТМ423423', 'Меркулова', 'Лариса','Андріївна', 'жін', '0675564521', 'kulioleg@yandex.ru','+'),
('КС561440', 'Жуков', 'Максим','Олексійович', 'чол', '0975434237','kuz.wot@rambler.ru','+'),
('ММ325846', 'Шаповалова', 'Катерина','Юріївна', 'жін', '0974562420','Lagutina75@list.ru','-'),
('КМ403775', 'Федченко', 'Юлія','Дмитрівна', 'жін', '0501230894','Leonid3798@bk.ru','+'),
('НА600677', 'Бурова', 'Світлана','Андріївна', 'жін', '0952303003','live@intersat.ru','-'),
('ПР229521', 'Коротких', 'Кристина','Володимирівна', 'жін', '0956002508','Kukuruzaaaaaa24@mail.ru','-'),
('КК583229', 'Білокінь', 'Наталя','Віталіївна', 'жін', '0676799981','L.Messi2000@mail.ru','-'),
('МТ226000', 'Костюк', 'Олена','Борисівна', 'жін', '0503711254','zoggar@gmail.com','-'),
('ЛО891708', 'Орел', 'Карина','Валеріївна', 'жін', '0677620560','sas.lev28@mail.ru','-'),
('ГН376244', 'Морозова', 'Олександра','Григорівна', 'жін', '0973807630',null,'+'),
('РО129096', 'Коваленко', 'Поліна','Валеріївна', 'жін', '0675215689','naki812@i.ua','+'),
('ЕЕ561788', 'Ерешова', 'Яна','Миколаївна', 'жін', '0639424943',null,'+'),
('ТТ820148', 'Демянчук', 'Катерина','Фодорівна', 'жін', '0983295641','nikitka.kenya@ukr.net','+'),
('СТ174454', 'Піщуліна', 'Дар*я','Павлівна', 'жін', '0667956522','mno64@yandex.ru','-'),
('ЛО892635', 'Сівко', 'Богдан','Ігорович', 'чол', '0735298551','belka07101993@gmail.com','+'),
('ЦУ751315', 'Мішкевич', 'Артем','Сергійович', 'чол', '0502327742','best-player@inbox.ua','-'),
('НФ834452', 'Скляр', 'Дмитро','Вікторович', 'чол', '0737545641','barxat_098@i.ua','+'),
('ВА955103', 'Гапєєва', 'Віра','Олександрівна', 'жін', '0675442311',null,'+'),
('ДЕ736880', 'Ізмайлова', 'Аліна','Ренатівна', 'жін', '0987865642',null,'+'),
('НО180875', 'Мініна', 'Маргарита','Андріївна', 'жін', '0671298440','bonantonio@mail.ua','+'),
('ТМ873856', 'Барабаш', 'Ірина','Сергіївна', 'жін', '0507645413','burnevich_34@mail.ru','-'),
('ЗО998832', 'Мустяца', 'Ігор','Іларіонович', 'чол', '0505654736','zatola89@rambler.ru','+'),
('УП908535', 'Падеріна', 'Крістіна','Андріївна', 'жін', '0506800641', null,'-'),
('РВ634023', 'Шатурська', 'Тетяна','Сергіївна', 'жін', '0976532324', null,'-'),
('ЕП420618', 'Михайлова', 'Юлія','Геннадіївна', 'жін', '0987056546','zmei-ruslan@rambler.ua','-'),
('НО981422', 'Кот', 'Олександра','Русланівна', 'жін', '0992232848',null,'-'),
('СВ384536', 'Чубата', 'Юлія','Валеріївна', 'жін', '0501198435','wot-top2200@i.ua','-'),
('ФВ376228', 'Турищева', 'Марія','Сергіївна', 'жін', '0937124975','xano@divermail.com','-'),
('ИС235959', 'Сторожук', 'Кирило','Валерійович', 'чол', '0686852136','yps666@yandex.ru','+'),
('РМ860900', 'Володіна', 'Поліна','Вікторівна', 'жін', '0509785201','wmh@bk.ru','-'),
('ТЛ550020', 'Косенкова', 'Ольга','Андріївна', 'жін', '0971265485','Wadimka222@nail.com','+'),
('ЕК812201', 'Авраменко', 'Маргарита','Сергіївна', 'жін', '0505032368','w1rus.mail@gmail.com','+'),
('ОП127182', 'Граматік', 'Катерина','Анатоліївна', 'жін', '0989432169','vovan18032001@gmail.com','+'),
('КЦ119647', 'Шаповалов', 'Денис',' Олегович', 'чол', '0673521949',null,'+'),
('ЛК644320', 'Євич', 'Діана','Сергіївна', 'жін', '0735698744','volkmen1775@meta.ua','+'),
('ОП425691', 'Копєйка', 'Марія','Валеріївна', 'жін', '0501123569','westbod46217@ukr.net','+'),
('ВЛ501619', 'Лонь', 'Дар*я','Сергіївна', 'жін', '0662212687','vladislav.pilgun@ukr.net','-'),
('ГХ466415', 'Гонтарєва', 'Тетяна','Євгеніївна', 'жін', '0979765200','veremchuk.igor23@gmail.com','-'),
('РР151497', 'Декалюк', 'Ілона','Георгіївна', 'жін', '0687504144','viktor.kuzmin.2012@list.ru','+'),
('МД994643', 'Шихірєва', 'Ольга', 'Іванівна', 'жін', '0975033107',null,'-'),
('ММ753493', 'Данькова', 'Вікторія','Дмитрівна', 'жін', '0957059957','vantoniuk@mail.ua','+'),
('ВЛ615359', 'Павловский', 'Олег','Юрійович', 'чол', '0971117853',null,'-'),
('ІР599733', 'Олейник', 'Марина','Сергіївна', 'жін', '0983247357','vadim.sokolov.1993@gmail.com','-'),
('ЄП943691', 'Попазогло', 'Вадим','Олегович', 'чол', '0507889978',null,'-'),
('ЮД909139', 'Легась', 'Катерина','Дмитрівна', 'жін', '0975652119','trekal223221@gmail.com','+'),
('ХГ128607', 'Белоус', 'Костянтин','Ігорович', 'чол', '0635232117','vasik2390@mail.ru','-'),
('ВС264110', 'Курочка', 'Владислав','Павлович', 'чол', '0935353055','temagoryachev@bk.ru','+'),
('НТ158488', 'Шестова', 'Ольга','Юріївна', 'жін', '0965002320',null,'-'),
('АК464296', 'Григоренко', 'Юлія','Віталіївна', 'жін', '0662032321','tip.kazan@list.ru','+'),
('АШ432549', 'Марковский', 'Артем','Валерійович', 'чол', '0956502218','sorokin.vlad.ter4@yandex.ua','+')

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

create table client_object
(id_object int  not null,
client_passport nvarchar(8)  not null
constraint f_object foreign key (id_object) references realty (id_object),
constraint f_client foreign key (client_passport) references clients (client_passport))

insert into client_object
values 
(1001, 'КК583229'), 
(1002, 'ТТ820148'), 
(1003, 'ВС264110'), 
(1004, 'УП908535'), 
(1004, 'РР151497'),
(1005, 'ЄП943691'), 
(1006, 'ІР599733'), 
(1007, 'НО180875'), 
(1008, 'КК583229'), 
(1009, 'МД994643'), 
(1010, 'ЛО891708'), 
(1011, 'РР151497'), 
(1012, 'ЛО892635'), 
(1013, 'ИС235959'), 
(1014, 'АК464296'), 
(1015, 'КМ403775'), 
(1016, 'КК583229'), 
(1017, 'ЛО892635'), 
(1017, 'СТ174454'),
(1018, 'ЄП943691'), 
(1019, 'ЕЕ561788'), 
(1020, 'ТМ423423'), 
(1021, 'ЦУ751315'), 
(1022, 'ВА955103'), 
(1023, 'НА600677'), 
(1024, 'ВЛ615359'), 
(1025, 'КЦ119647'), 
(1026, 'ММ325846'),
(1027, 'НФ834452'),
(1028, 'СТ174454'),
(1029, 'МТ226000'),
(1030, 'КС561440'),
(1031, 'ЛК644320'),
(1032, 'ГН376244'),
(1033, 'ДЕ736880'),
(1034, 'ЛК644320'),
(1035, 'ТМ423423'),
(1036, 'ДЕ736880'),
(1037, 'ЛК644320'),
(1038, 'РВ634023'),
(1039, 'МД994643'),
(1040, 'ВЛ501619'),
(1041, 'КМ403775'),
(1042, 'РМ860900'),
(1043, 'НО981422'),
(1044, 'ММ753493'),
(1045, 'МД994643'),
(1046, 'ОП127182'),
(1047, 'ТЛ550020'),
(1048, 'ОП425691'),
(1049, 'ВЛ615359'),
(1049, 'МД994643'),
(1049, 'ММ325846'),
(1050, 'ХГ128607')

create table agreements
(agreement_number int primary key not null,
id_rieltor int not null,
client_passport_give nvarchar(8) not null,
client_passport_take nvarchar(8) not null,
id_object int not null
constraint f_rieltor_agr foreign key (id_rieltor) references rieltors (id_rieltor),
constraint f_client_give_agr foreign key (client_passport_give) references clients (client_passport),
constraint f_client_take_agr foreign key (client_passport_take) references clients (client_passport),
constraint f_object_agr foreign key (id_object) references realty (id_object))

insert into agreements
values
(1, 2001, 'ТМ423423', 'ПР229521', 1035),
(2, 2005, 'КК583229', 'РО129096', 1001),
(3, 2001, 'ЄП943691', 'ТМ873856', 1005),
(4, 2010, 'МД994643', 'ЗО998832', 1009),
(5, 2015, 'АК464296', 'ЕП420618', 1014),
(6, 2017, 'ЛО892635', 'СВ384536', 1017),
(7, 2019, 'ІР599733', 'ФВ376228', 1006),
(8, 2003, 'НО180875', 'ЕК812201', 1007),
(9, 2020, 'ММ325846', 'ГХ466415', 1026),
(10, 2005, 'СТ174454', 'ЮД909139', 1028),
(11, 2015, 'КС561440', 'НТ158488', 1030),
(12, 2016, 'ВА955103', 'АШ432549', 1022),
(13, 2018, 'ЛК644320', 'ТТ820148', 1031),
(14, 2002, 'ДЕ736880', 'РР151497', 1036),
(15, 2007, 'МД994643', 'ІР599733', 1039),
(16, 2017, 'ВЛ501619', 'ЛО891708', 1040),
(17, 2004, 'РМ860900', 'ЛО892635', 1042),
(18, 2010, 'МД994643', 'ИС235959', 1045),
(19, 2015, 'КМ403775', 'КК583229', 1041),
(20, 2001, 'ОП127182', 'ММ325846', 1046),
(21, 2017, 'ТЛ550020', 'НО981422', 1047),
(22, 2011, 'ДЕ736880', 'ММ753493', 1033),
(23, 2017, 'РВ634023', 'ЛК644320', 1038),
(24, 2003, 'ВС264110', 'МТ226000', 1003),
(25, 2008, 'КК583229', 'НФ834452', 1008),
(26, 2020, 'РР151497', 'КЦ119647', 1011),
(27, 2012, 'КМ403775', 'ХГ128607', 1015),
(28, 2001, 'ТМ423423', 'ЦУ751315', 1020),
(29, 2004, 'НА600677', 'ВЛ615359', 1023),
(30, 2009, 'ЄП943691', 'ВС264110', 1018)

alter table agreements
add agreement_date date null

update agreements
set agreement_date='01.01.2000'
where agreement_date is null

delete from agreements
where id_object=1023

delete from agreements
where id_rieltor=2019

update agreements
set client_passport_take='ФВ376228'
where id_object=1033

update agreements
set id_rieltor=2004
where client_passport_give='КМ403775'

update agreements
set agreement_date='10.12.2017'
where id_rieltor=2001

update agreements
set agreement_date='07.12.2017'
where id_rieltor>2015

select *
from agreements

select second_name, first_name, middle_name
from rieltors
where premium >= '20'

select second_name, first_name, phone_number
from clients
where certificate_of_income = '+' and sex = 'чол'

select count(id_object) as amount
from realty
where type_object = 'apartment' and sell_or_rent = 'rent' and price <= '400' and adress_city = 'lviv'
