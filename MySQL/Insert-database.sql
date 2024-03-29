use round_robin;

insert into research_center (address, email, city, country, duty_manager_name, instructions, name) values ('Los castro sn', 'UC@gmail.com', 'Santander', 'Esp', 'Jesus', 'no se', 'UC');
insert into research_center (address, email, city, country, duty_manager_name, instructions, name) values ('PCTCAN', 'atlantico@gmail.com', 'Santander', 'Esp', 'Javier', 'no se', 'Universidad del Atlantico');
insert into research_center (address, email, city, country, duty_manager_name, instructions, name) values ('Gran Via', 'madrid@gmail.com', 'Madrid', 'Esp', 'Alicia', 'no se', 'Universidad de Madrid');
insert into research_center (address, email, city, country, duty_manager_name, instructions, name) values ('Mortera', 'jesus@gmail.com', 'Madrid', 'Esp', 'Jesus', 'no se', 'Mi casa');
insert into research_center (address, email, city, country, duty_manager_name, instructions, name) values ('Liencres', 'ruben@gmail.com', 'Liencres', 'Esp', 'Ruben', 'no se', 'Casa de Ruben');

update research_center set password = 'dbdbc8ce6333f81b460c72bf6fdc4e3c37903773aab075474eaa21bf7b7ce595' where id = 1; #uc
update research_center set password = 'cdefdfc1b5f1c676af2d6d9eae8b2bc6092ebc55d8c32ee8825ccce80cacfca8' where id = 2; #atlantico
update research_center set password = '1579a6e3112caba1b6031ef7c507f3014d7b0a408fefd1b4d4a2c8c32d2274ff' where id = 3; #madrid




insert into experiment (name, description, creator_center_fk, status) values 
('Resistencia del Carbono', 'Se quiere probar cual es la maxima resistencia que soporta el carbono bajo diferentes situaciones', 1, 1);
insert into experiment (name, description, creator_center_fk, status) values 
('Analisis del Diamante', 'Se quiere probar cual es la maxima resistencia que soporta el diamante bajo diferentes situaciones', 1, 1);
insert into experiment (name, description, creator_center_fk, status) values 
('Analisis del Uranio', 'Se quiere probar cual es la maxima resistencia que soporta el uranio bajo diferentes situaciones', 1, 0);
insert into experiment (name, description, creator_center_fk, status) values 
('Analisis de la fibra de vidrio', 'Se quiere probar cual es la maxima resistencia que soporta la fibra de vidrio bajo diferentes situaciones', 2, 0);
insert into experiment (name, description, creator_center_fk, status) values 
('Analisis del Oro oxidado', 'Se quiere probar cual es la maxima resistencia que soporta el oro oxidado bajo diferentes situaciones', 3, 0);


#Add participants
insert into experiment_research_center (research_center_fk, experiment_fk) values (1, 1);
#delete from experiment_research_center where research_center_fk=7;
insert into experiment_research_center (research_center_fk, experiment_fk) values (2, 1);
insert into experiment_research_center (research_center_fk, experiment_fk) values (3, 1);
insert into experiment_research_center (research_center_fk, experiment_fk) values (4, 1);
insert into experiment_research_center (research_center_fk, experiment_fk) values (5, 1);
insert into experiment_research_center (research_center_fk, experiment_fk) values (2, 2);
insert into experiment_research_center (research_center_fk, experiment_fk) values (3, 2);
insert into experiment_research_center (research_center_fk, experiment_fk) values (2, 3);
insert into experiment_research_center (research_center_fk, experiment_fk) values (2, 5);



insert into measure (name, instructions, experiment_fk) values ('Dureza del Carbono', 'Someter a rayaduras con objetos de dureza exponencial', 1);
insert into measure (name, instructions, experiment_fk) values ('Presion del Carbono', 'Probar el angula maximo de reflectancia', 1);
insert into measure (name, instructions, experiment_fk) values ('Resistencia al calor del Carbono', 'Averiguar la temperatura maxima antes de derretirse', 1);

insert into measure (name, instructions, experiment_fk) values ('Dureza del Diamante', 'Someter a rayaduras con objetos de dureza exponencial', 2);
insert into measure (name, instructions, experiment_fk) values ('Presion del Diamante', 'Probar el angula maximo de reflectancia', 2);
insert into measure (name, instructions, experiment_fk) values ('Resistencia al calor del Diamante', 'Averiguar la temperatura maxima antes de derretirse', 2);




delete from measurement where id=6;
insert into measurement (name, research_center_fk, measure_fk) values ('\'Dureza del Carbono\' in \'Universidad del Atlantico\'', 2, 1);
insert into measurement (name, research_center_fk, measure_fk) values ('\'Presion del Carbono\' in \'Universidad del Atlantico\'', 2, 2);
insert into measurement (name, research_center_fk, measure_fk) values ('\'Dureza del Diamante\' in \'Universidad del Atlantico\'', 2, 4);

insert into measurement (name, research_center_fk, measure_fk) values ('\'Presion del Carbono\' in \'Universidad de Madrid\'', 3, 2);
insert into measurement (name, research_center_fk, measure_fk) values ('\'Presion del Diamante\' in \'Universidad de Madrid\'', 3, 5);

insert into sample (material_name, code, composition, description, measurement_fk, experiment_fk) values
('Carbono', 'Carbono 1', 'C', 'Descripcion del carbono', 1, 1);
insert into sample (material_name, code, composition, description, measurement_fk, experiment_fk) values
('Carbono', 'Carbono 2', 'C', 'Descripcion del carbono', 2, 1);
insert into sample (material_name, code, composition, description, measurement_fk, experiment_fk) values
('Diamante', 'Diamante 1', 'COF-1', 'Descripcion del diamante', 3, 2);
insert into sample (material_name, code, composition, description, measurement_fk, experiment_fk) values
('Diamante', 'Diamante 2', 'COF-1', 'Descripcion del diamante', 4, 2);

delete from experiment_research_center where research_center_fk=7;
delete from research_center where id=7;


#insert into result (name, comments, satisfactory, measurement_fk) values ('Resultado de la prueba 1', 'La muestra mostro debilidad a mas de 130 grados', true, 1);
#select * from experiment;
#select * from research_center;
#select * from experiment_research_center;