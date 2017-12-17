use firm

// 1. Вибрати клієнтів, які не заповнили поле "Емейл"

select *
from clients
where email is null

// 2. Вибрати клієнтів, які є абонентами компанії "Лайфсел"

select client_passport, second_name, first_name, middle_name, phone_number
from clients
where phone_number like '093%' or phone_number like '063%' or phone_number like '073%'

// 3. Вибрати ріелторів, в яких премія від 10 до 18 і посортувати їх за розміром премії

select *
from rieltors
where premium between 10 and 18 order by premium

// 4. Порахувати середню вартість будинків в Києві

select AVG(price) as priceAVG from realty where adress_city = 'kyiv' and type_object = 'house'

// 5. Вибрати ріелторів, в яких така ж сама премія, як в Фика

SELECT second_name, premium 
FROM rieltors
WHERE premium=(SELECT premium FROM rieltors WHERE second_name = 'Фик')

// 6. Вивести кількість квартир, погрупованих по містах в порядку спадання

Select adress_city, count(*) as Кількість from realty where type_object = 'apartment'
group by adress_city
order by Кількість desc






