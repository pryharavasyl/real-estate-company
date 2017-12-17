use firm

// 1. ������� �볺���, �� �� ��������� ���� "�����"

select *
from clients
where email is null

// 2. ������� �볺���, �� � ���������� ������ "�������"

select client_passport, second_name, first_name, middle_name, phone_number
from clients
where phone_number like '093%' or phone_number like '063%' or phone_number like '073%'

// 3. ������� �������, � ���� ����� �� 10 �� 18 � ����������� �� �� ������� ���쳿

select *
from rieltors
where premium between 10 and 18 order by premium

// 4. ���������� ������� ������� ������� � ���

select AVG(price) as priceAVG from realty where adress_city = 'kyiv' and type_object = 'house'

// 5. ������� �������, � ���� ���� � ���� �����, �� � ����

SELECT second_name, premium 
FROM rieltors
WHERE premium=(SELECT premium FROM rieltors WHERE second_name = '���')

// 6. ������� ������� �������, ������������ �� ����� � ������� ��������

Select adress_city, count(*) as ʳ������ from realty where type_object = 'apartment'
group by adress_city
order by ʳ������ desc






