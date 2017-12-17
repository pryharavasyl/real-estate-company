Use firm

--1.������� ��� �������, � ���� ������ � ����� 10%

Select *
from rieltors
where premium<10

/*2.�������� ������ �������, �� ����� ����� 1 �������, � �� ���������� � �����. 
������� �����, ������, ����� ������� �� ����.*/

Select adress_area, adress_street, adress_house, floors, price
from realty
where floors>1 and adress_city='lviv'
order by floors

--3.������ �ᒺ��� ����������, �� ����������� �� ��������� � ������ �������� �� ����� 2001.

Select realty.id_object, realty.adress_city, realty.adress_area, realty.adress_street, realty.adress_house, realty.adress_aparment, realty.floors, realty.price, realty.sell_or_rent
from ((realty inner join 
client_object on realty.id_object = client_object.id_object)
inner join agreements on client_object.id_register = agreements.id_register)
where agreements.id_rieltor=2001

--4.���������� ������ �볺��� ����� ��������� ��������� LIFE�ELL.

Select count(phone_number) as Lifecell_Clients
from clients
where phone_number like('063%') or phone_number like('073%') or phone_number like('093%')

/*5.���������� ������� ��������� ���� �� ���������� � ������� � ���. 
�� ������ ������� �� ������� ���� ����� ��� (�� ���������).*/

Select realty.adress_city, count(agreement_number) as Quantity_Agr
from ((agreements join
client_object on agreements.id_register = client_object.id_register)
join realty on client_object.id_object = realty.id_object)
group by realty.adress_city 
order by Quantity_Agr DESC

--6.������� ���������� �� ��������� ���� �������, �� � � ��� ����.

Select *
from realty
where adress_city='lviv' and type_object='apartment' and sell_or_rent='sell'
order by price DESC

/*7.������� �볺���, �� ����� � ������ ���������� 
�� ������������ �� � ���������� ������� �� ���������.*/

Select clients.client_passport, clients.second_name, clients.first_name, clients.middle_name, clients.phone_number
from ((clients inner join
agreements on clients.client_passport = agreements.client_passport_take)
inner join client_object on agreements.id_register = client_object.id_register
inner join realty on client_object.id_object = realty.id_object)
where realty.sell_or_rent = 'rent'
order by clients.second_name ASC

--8.������� ������� ����� ������� � ��� �� �������. 

Select adress_area, avg(sqr) as Average_Sqr
from realty 
where  type_object='apartment' and adress_city='Kyiv'
group by adress_area

--9.������ ������ ��������, �� ���������� � 3 ��� ����� �������.

Select rieltors.premium
from rieltors
group by premium
having count(id_rieltor)>=3

--10.�������� �����, �� ���� ������� �� 01.01.17 �� 01.12.17.

Select *
from agreements
where agreement_date between '2017-01-01' and '2017-12-01'


