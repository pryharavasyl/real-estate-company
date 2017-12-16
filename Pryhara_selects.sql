use firm

select *
from realty
where price <= 40000 and sqr > 70

use firm

SELECT *
FROM client_object
inner JOIN clients on client_object.client_passport = clients.client_passport
where sex = 'жін' 

use firm

select avg(price)
from realty

use firm

select count(client_passport)
from clients
where certificate_of_income = '+'

use firm

select SUM(price)
from realty
where adress_city = 'lutsk'

use firm

select id_object, price, sqr, type_object, floors
from realty
where sqr > 80
order by adress_city

use firm 

select min(price)
from realty
where type_object = 'apartment'

use firm

select *
from agreements
full outer join rieltors on agreements.id_rieltor = rieltors.id_rieltor
where phone_number like '066%'
order by second_name asc

use firm

select top 10 *
from clients
order by first_naame DESC

select *
from ((agreements
inner join clients on agreements.client_passport_give = clients.client_passport)
inner join rieltors on agreements.id_rieltor = rieltors.id_rieltor)
where sex = 'чол' and premium > 10

