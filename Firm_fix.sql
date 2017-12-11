use firm
ALTER TABLE agreements   
DROP CONSTRAINT f_client_give_agr
ALTER TABLE agreements
DROP CONSTRAINT f_object_agr


ALTER TABLE client_object
add id_register int null

delete from client_object 
where client_passport='ĞĞ151497' and id_object=1004

delete from client_object 
where client_passport='ÑÒ174454' and id_object=1017

delete from client_object 
where client_passport='ÌÄ994643' and id_object=1049

delete from client_object 
where client_passport='ÌÌ325846' and id_object=1049

update client_object 
set id_register=1
where id_object=1001
update client_object 
set id_register=2
where id_object=1002
update client_object 
set id_register=3
where id_object=1003
update client_object 
set id_register=4
where id_object=1004
update client_object 
set id_register=5
where id_object=1005
update client_object 
set id_register=6
where id_object=1006
update client_object 
set id_register=7
where id_object=1007
update client_object 
set id_register=8
where id_object=1008
update client_object 
set id_register=9
where id_object=1009
update client_object 
set id_register=10
where id_object=1010
update client_object 
set id_register=11
where id_object=1011
update client_object 
set id_register=12
where id_object=1012
update client_object 
set id_register=13
where id_object=1013
update client_object 
set id_register=14
where id_object=1014
update client_object 
set id_register=15
where id_object=1015
update client_object 
set id_register=16
where id_object=1016
update client_object 
set id_register=17
where id_object=1017
update client_object 
set id_register=18
where id_object=1018
update client_object 
set id_register=19
where id_object=1019
update client_object 
set id_register=20
where id_object=1020
update client_object 
set id_register=21
where id_object=1021
update client_object 
set id_register=22
where id_object=1022
update client_object 
set id_register=23
where id_object=1023
update client_object 
set id_register=24
where id_object=1024
update client_object 
set id_register=25
where id_object=1025
update client_object 
set id_register=26
where id_object=1026
update client_object 
set id_register=27
where id_object=1027
update client_object 
set id_register=28
where id_object=1028
update client_object 
set id_register=29
where id_object=1029
update client_object 
set id_register=30
where id_object=1030
update client_object 
set id_register=31
where id_object=1031
update client_object 
set id_register=32
where id_object=1032
update client_object 
set id_register=33
where id_object=1033
update client_object 
set id_register=34
where id_object=1034
update client_object 
set id_register=35
where id_object=1035
update client_object 
set id_register=36
where id_object=1036
update client_object 
set id_register=37
where id_object=1037
update client_object 
set id_register=38
where id_object=1038
update client_object 
set id_register=39
where id_object=1039
update client_object 
set id_register=40
where id_object=1040
update client_object 
set id_register=41
where id_object=1041
update client_object 
set id_register=42
where id_object=1042
update client_object 
set id_register=43
where id_object=1043
update client_object 
set id_register=44
where id_object=1044
update client_object 
set id_register=45
where id_object=1045
update client_object 
set id_register=46
where id_object=1046
update client_object 
set id_register=47
where id_object=1047
update client_object 
set id_register=48
where id_object=1048
update client_object 
set id_register=49
where id_object=1049
update client_object 
set id_register=50
where id_object=1050

alter table client_object
alter column id_register int not null

alter table client_object
ADD CONSTRAINT  main_key PRIMARY KEY (id_register)

alter table agreements   
add id_register int null

update agreements
set id_register=1
where id_object=1001
update agreements
set id_register=2
where id_object=1002
update agreements
set id_register=3
where id_object=1003
update agreements
set id_register=4
where id_object=1004
update agreements
set id_register=5
where id_object=1005
update agreements
set id_register=6
where id_object=1006
update agreements
set id_register=7
where id_object=1007
update agreements
set id_register=8
where id_object=1008
update agreements
set id_register=9
where id_object=1009
update agreements
set id_register=10
where id_object=1010
update agreements
set id_register=11
where id_object=1011
update agreements 
set id_register=12
where id_object=1012
update agreements
set id_register=13
where id_object=1013
update agreements 
set id_register=14
where id_object=1014
update agreements 
set id_register=15
where id_object=1015
update agreements
set id_register=16
where id_object=1016
update agreements
set id_register=17
where id_object=1017
update agreements
set id_register=18
where id_object=1018
update agreements
set id_register=19
where id_object=1019
update agreements
set id_register=20
where id_object=1020
update agreements
set id_register=21
where id_object=1021
update agreements 
set id_register=22
where id_object=1022
update agreements
set id_register=23
where id_object=1023
update agreements
set id_register=24
where id_object=1024
update agreements 
set id_register=25
where id_object=1025
update agreements
set id_register=26
where id_object=1026
update agreements
set id_register=27
where id_object=1027
update agreements
set id_register=28
where id_object=1028
update agreements
set id_register=29
where id_object=1029
update agreements 
set id_register=30
where id_object=1030
update agreements 
set id_register=31
where id_object=1031
update agreements 
set id_register=32
where id_object=1032
update agreements 
set id_register=33
where id_object=1033
update agreements 
set id_register=34
where id_object=1034
update agreements
set id_register=35
where id_object=1035
update agreements 
set id_register=36
where id_object=1036
update agreements 
set id_register=37
where id_object=1037
update agreements 
set id_register=38
where id_object=1038
update agreements
set id_register=39
where id_object=1039
update agreements
set id_register=40
where id_object=1040
update agreements 
set id_register=41
where id_object=1041
update agreements 
set id_register=42
where id_object=1042
update agreements
set id_register=43
where id_object=1043
update agreements
set id_register=44
where id_object=1044
update agreements
set id_register=45
where id_object=1045
update agreements 
set id_register=46
where id_object=1046
update agreements 
set id_register=47
where id_object=1047
update agreements 
set id_register=48
where id_object=1048
update agreements
set id_register=49
where id_object=1049
update agreements
set id_register=50
where id_object=1050

alter table agreements
alter column id_register int not null

alter table agreements
drop column id_object

alter table agreements
drop column client_passport_give

alter table agreements
add constraint f_register_id foreign key (id_register) references client_object  (id_register)