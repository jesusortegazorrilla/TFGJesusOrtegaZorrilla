-- Script for basic database check

drop database round_robin;
create database round_robin;
use round_robin;

select * from experiment;
select * from research_center;
select * from instrument;
select * from measure;
select * from measurement;
select * from parameter;
select * from research_center;
select * from contactData;
select * from result;
select * from sample;
select * from experiment_research_center;

insert into measure (name, instructions, experiment_fk) values ('Dureza', 'Probar a 50 grados', 1);
insert into measurement (name, research_center_fk, measure_fk) values ('Madrid Dureza', 3, 1);
insert into result (name, comments, satisfactory, measurement_fk) values ('Resultado de la prueba 1', 'La muestra mostro debilidad a mas de 130 grados', true, 1);
#delete from result where id = "1";
#delete from research_center where name = "Menorca";









