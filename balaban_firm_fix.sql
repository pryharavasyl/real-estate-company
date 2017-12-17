use firm

alter table client_object
add id_register int identity(1,1) primary key

alter table agreements   
add id_register int null

alter table agreements
drop column id_register

alter table agreements   
add id_registers int null

create table #agr_cl_obj
(id_reg int,
cl_p_g nvarchar(8),
id_obj int)

drop table #agr_cl_obj

select client_object.id_register, agreements.client_passport_give, agreements.id_object
into #agr_cl_obj
from client_object, agreements
where client_object.client_passport = agreements.client_passport_give and client_object.id_object = agreements.id_object

select *
from #agr_cl_obj

select *
from client_object

update agreements
set agreements.id_registers = (select #agr_cl_obj.id_register from #agr_cl_obj where #agr_cl_obj.id_object = agreements.id_object)

select *
from agreements

alter table agreements   
drop constraint f_client_give_agr
alter table agreements
drop constraint f_object_agr

alter table agreements
drop column id_object

alter table agreements
drop column client_passport_give

alter table agreements
add constraint f_register_id foreign key (id_registers) references client_object (id_register)
