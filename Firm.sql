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