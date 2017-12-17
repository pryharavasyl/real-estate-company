use firm

//1.������� ���������� ��� �������, �� ����������

select * 
from realty
where type_object = 'house' and sell_or_rent = 'sell'


//2.������ ������� ������� � �����, �� ��������  � ������ �� ���� �� �����, ������ 400���

select count(id_object) as amount
from realty
where type_object = 'apartment' and sell_or_rent = 'rent' and price <= '400' and adress_city = 'lviv'


//3.������� id �� ������ �������, �� ����������� � �����, � ���� � ������������ ��� �������������� �������

select id_object, adress_street, adress_house, adress_aparment
from realty
where type_object = 'apartment' and adress_city = 'lviv' and (adress_area = 'luchakiv' or adress_area = 'shevchenka')


//4.������ �����, �� ���� ������� � ����� 2017 ����

select *
from agreements
where agreement_date like '2017-%-12'


//5.������ ������� �������, �� ������ ���� � 1 �����

select distinct second_name
from rieltors as r join agreements as a on r.id_rieltor = a.id_rieltor


//6.������ ������� �������, �� ��������� � ���, �� ������� ����. ������� ���� �� �������

select adress_city, count(id_object) as amount
from realty
where type_object = 'apartment'
group by adress_city


//7.������ �������, �� ������������ ��������� ��������� ����. ������� ���, ������� �� ����� ��������. ������������ �� ����

select first_name, middle_name, phone_number
from rieltors
where phone_number like '093%'
order by first_name


//8.������ �볺���, �� ����� ��� � ����� ����� ����������. ������� �� ϲ�

select second_name, first_name, middle_name
from clients as c join client_object as o on c.client_passport = o.client_passport
group by second_name, first_name, middle_name
having count(o.client_passport) >= 2


//9.������ �������� � �����, �� �� �� ���� � ������. ������� id ��������

select id_object
from realty
where adress_city = 'lviv' and sell_or_rent = 'rent'
except
select id_object
from client_object as c join agreements as a on c.id_register = a.id_registers

//10.������ ������ �������� ������, �� �������� ������� � �����

select client_passport
from client_object as c
where c.id_object in (select r.id_object from realty as r where r.adress_city = 'lviv' and r.type_object = 'house' and r.sell_or_rent = 'sell')
