insert into CStatus
values
-- ID, CA, PV, DESLOC
('1', '15', '2d6','9m'),
('2', '18', '19d10+17', '0 m, voo 6m (planar)'),
('3', '6', '8d10+40', '4,5m'),
('4', '11', '7d8+7', '6m, voo 12m'),
('5', '16', '17d8+68', '9m'),
('6', '11', '6d6+6', '6m, voo 12m'),
('7', '13', '3d4+3', '6m, voo 12m'),
('8', '15', '5d8', '9m'),
('9', '12', '2d6-2', '9m'),
('10', '13', '7d10+21', '12m'),
('11', '13', '10d10+30', '12m');


insert into caracteristicas
values
-- ID, PERICIA, SENTIDO, IDIOMAS, ND
('1','Furtividade +6','visão no escuro 18 m, Percepção passiva 9',
'Comum, Goblin','1/4 (50xp)'),
('2', 'Percepção +12', 'visão no escuro 36 m, Percepção passiva 22',
 'Dialeto Subterrâneo, Subcomum', '13 (10.000 XP)'),
 ('3', '-', 'percepção às cegas 18 m (cego além desse raio), Percepção passiva 8',
 '-', ' 2 (450xp)'),
 ('4', '-', 'Percepção passiva 10', 'Comum', '1 (200xp)'),
 ('5', 'Furtividade +9, Percepção +7', 'visão no escuro 36 m, Percepção passiva 17',
 'os idiomas que conhecia em vida', '13 (10.000 XP)'),
 ('6','-', 'visão no escuro 18 m, Percepção passiva 11','-','1/2 (100xp)'),
 ('7','Enganação +4, Furtividade +5, Intuição +3, Persuasão +4', 'visão no escuro 18 m, Percepção passiva 11',
 'Infernal, Comum','1 (200 XP)'),
('8', '-', 'visão no escuro 18 m, Percepção passiva 10', 'Gnoll', '1/2 (100 XP)'),
('9', '-', 'visão no escuro 18 m, Percepção passiva 8', 'Comum, Dracônico', '1/8 (25 XP)'),
('10', 'Percepção +3', 'visão no escuro 18 m, Percepção passiva 13', '-', '3 (700 XP)'),
('11', '-', 'visão no escuro 18 m, Percepção passiva 11', '-', '3 (700 XP)');
 
 

insert into habilidades
values
-- ID, FOR, DES, CON, INT, SAB, CAR
('1', '8(-1)','14(+2)','10(0)', '10(0)', '8(-1)', '8(-1)'),
('2', '10(0)', '14(+2)','18(+4)', '17(+3)','15(+2)', '17(+3)'),
('3', '14(+2)', '3(-4)', '20(+5)', '1(-5)', '6(-2)','1(-5)'),
('4', '12(+1','13(+1)','12(+1)','7(-2)','10(0)','13(+1)'),
('5', '18(+4)', '18(+4)','18(+4)','17(+3)','15(+2)','18(+4)'),
('6', '6(-2)','12(+1)','12(+1)','2(-4)','13(+1)','5(-3)'),
('7', '6(-2)','17(+3)','13(+1)','11(0)','12(+1)','14(+2)'),
('8', '14(+2)','12(+1)','11(0)','6(-2)','10(0)','7(-2)'),
('9', '7(-2)','15(+2)','9(-1)','8(-1)','7(-2)','8(-1)'),
('10', '20(+5)','12(+1)','17(+3)','3(-4)','12(+1)','7(-2)'),
('11', '18(+4)','15(+2)','16(+3)','6(-2)','12(+1)','8(-1)');



insert into criatura 
values
-- NOMECRIATURA, TIPO, TAMANHO, TEDENCIA, IDSTATUS, IDCARACTERISTICAS, IDHABILIDADES
('Goblin', 'Humanoide', 'Pequena', 'Neutro e Mal', '1', '1', '1'),
('Observador', 'Aberração', 'Grande', 'Leal e mau', '2', '2', '2'),
('Cubo gelatinoso', 'Limo', 'Aberração', 'imparcial','3','3','3'),
('Harpia', 'Mostruosidade', 'Média','caótico e mau','4','4','4'),
('Vampiro', 'Morto-vivo','Média','leal e mau','5','5','5'),
('Cocatriz', 'Monstruosidade','Pequena','imparcial','6','6','6'),
('Diabrete', 'Corruptor','Média','leal e mau','7','7','7'),
('Gnoll', 'Humanoide','Média','caótico e mau','8','8','8'),
('Kobold', 'Humanoide','Pequena','leal e mau','9','9','9'),
('Urso Coruja', 'Monstruosidade','Grande,','imparcial','10','10','10'),
('Pantera Deslocadora', 'Monstruosidade','Grande,','leal e mau','11','11','11');








