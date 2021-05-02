
INSERT INTO DEPARTMENT VALUES(0, 'Calidad', NULL);
INSERT INTO DEPARTMENT VALUES(1, 'Administracion', NULL);
INSERT INTO DEPARTMENT VALUES(2, 'Inventario', NULL);
INSERT INTO DEPARTMENT VALUES(3, 'Sistemas de info.', NULL);
INSERT INTO DEPARTMENT VALUES(4, 'Expansion', NULL);
INSERT INTO DEPARTMENT VALUES(5, 'Logistica', NULL);
INSERT INTO EMPLOYEE VALUES(0, 'Ilse', 'Gurys', 'Cll 149 N° 73 - 110', '08-JUL-2001', 'Hombre', 'Coordinador', 3);
INSERT INTO EMPLOYEE VALUES(1, 'Glendon', 'Rennocks', 'Cll 106 N° 109 - 65', '23-APR-1980', 'Hombre', 'Contador', 4);
INSERT INTO EMPLOYEE VALUES(2, 'June', 'Densumbe', 'Cll 60 N° 13 - 73', '27-JUN-1982', 'Mujer', 'Colaborador', 2);
INSERT INTO EMPLOYEE VALUES(3, 'Anette', 'Ivatts', 'Cll 109 N° 8 - 10', '26-JUL-1990', 'Mujer', 'Ingeniero', 3);
INSERT INTO EMPLOYEE VALUES(4, 'Elvira', 'Bishell', 'Cll 9 N° 66 - 78', '19-DEC-2002', 'Mujer', 'Ingeniero', 1);
INSERT INTO EMPLOYEE VALUES(5, 'Stanwood', 'Trevers', 'Cll 134 N° 68 - 51', '30-SEP-1992', 'Mujer', 'Ejecutivo', 2);
INSERT INTO EMPLOYEE VALUES(6, 'Ugo', 'Kitchingham', 'Cra 12 N° 54 - 78', '05-APR-1981', 'Mujer', 'Jefe de Departamento', 0);
INSERT INTO EMPLOYEE VALUES(7, 'Cecelia', 'Shefton', 'Cll 106 N° 108 - 17', '24-MAR-1978', 'Mujer', 'Coordinador', 2);
INSERT INTO EMPLOYEE VALUES(8, 'Guenna', 'Philcock', 'Cra 26 N° 182 - 43', '04-NOV-1967', 'Hombre', 'Secretario', 1);
INSERT INTO EMPLOYEE VALUES(9, 'Lotte', 'Dowsett', 'Cll 116 N° 181 - 69', '10-DEC-1969', 'Hombre', 'Contador', 2);
INSERT INTO EMPLOYEE VALUES(10, 'Nita', 'Daintrey', 'Cll 136 N° 94 - 77', '26-SEP-1991', 'Hombre', 'Ejecutivo', 3);
INSERT INTO EMPLOYEE VALUES(11, 'Webster', 'Sommerville', 'Cll 141 N° 119 - 48', '02-DEC-1988', 'Mujer', 'Jefe de Departamento', 1);
INSERT INTO EMPLOYEE VALUES(12, 'Zilvia', 'Elliker', 'Cra 41 N° 67 - 71', '19-SEP-1989', 'Hombre', 'Jefe de Departamento', 2);
INSERT INTO EMPLOYEE VALUES(13, 'Madelina', 'Scopyn', 'Cll 138 N° 84 - 89', '21-AUG-1986', 'Mujer', 'Coordinador', 3);
INSERT INTO EMPLOYEE VALUES(14, 'Sigismond', 'Seger', 'Cra 167 N° 140 - 17', '01-MAY-1960', 'Hombre', 'Jefe de Departamento', 3);
INSERT INTO EMPLOYEE VALUES(15, 'Phelia', 'Kellie', 'Cra 184 N° 118 - 77', '26-OCT-2002', 'Mujer', 'Jefe de Departamento', 4);
INSERT INTO EMPLOYEE VALUES(16, 'Aviva', 'Ferdinand', 'Cll 138 N° 59 - 51', '28-NOV-1971', 'Hombre', 'Contador', 0);
INSERT INTO EMPLOYEE VALUES(17, 'Cole', 'Rattery', 'Cll 128 N° 123 - 86', '11-JUN-1956', 'Hombre', 'Secretario', 3);
INSERT INTO EMPLOYEE VALUES(18, 'Woodrow', 'Sommerville', 'Cll 174 N° 7 - 108', '14-FEB-1956', 'Hombre', 'Jefe de Departamento', 5);
INSERT INTO EMPLOYEE VALUES(19, 'Oates', 'Corradi', 'Cra 29 N° 56 - 25', '07-DEC-1957', 'Mujer', 'Secretario', 0);
INSERT INTO EMPLOYEE VALUES(20, 'Antons', 'Gurys', 'Cll 120 N° 22 - 83', '08-OCT-1977', 'Hombre', 'Aprendiz', 3);
INSERT INTO EMPLOYEE VALUES(21, 'Pablo', 'McGarrahan', 'Cra 159 N° 196 - 42', '14-APR-1992', 'Mujer', 'Secretario', 4);
INSERT INTO EMPLOYEE VALUES(22, 'Rodolph', 'Sans', 'Cra 136 N° 135 - 28', '04-AUG-1988', 'Mujer', 'Ingeniero', 4);
INSERT INTO EMPLOYEE VALUES(23, 'Goldarina', 'Tenaunt', 'Cll 77 N° 6 - 8', '10-FEB-1956', 'Mujer', 'Asistente', 2);
INSERT INTO EMPLOYEE VALUES(24, 'Lorette', 'Ruzek', 'Cra 107 N° 84 - 64', '14-DEC-1982', 'Hombre', 'Coordinador', 0);
INSERT INTO EMPLOYEE VALUES(25, 'Clarine', 'Davie', 'Cra 125 N° 195 - 67', '27-JUL-1986', 'Hombre', 'Aprendiz', 4);
INSERT INTO EMPLOYEE VALUES(26, 'Salomone', 'Smyley', 'Cll 158 N° 93 - 78', '26-JUL-2001', 'Hombre', 'Ejecutivo', 4);
INSERT INTO EMPLOYEE VALUES(27, 'Brooks', 'Wittier', 'Cra 64 N° 148 - 41', '08-SEP-1989', 'Hombre', 'Ingeniero', 2);
INSERT INTO EMPLOYEE VALUES(28, 'Clarine', 'Osgarby', 'Cll 17 N° 46 - 17', '18-JUN-1973', 'Hombre', 'Secretario', 4);
INSERT INTO EMPLOYEE VALUES(29, 'Lotte', 'Crocker', 'Cll 169 N° 68 - 77', '20-DEC-1976', 'Mujer', 'Contador', 2);
UPDATE DEPARTMENT
SET MNG_EMP_NO=6
WHERE DEPT_NO =0

UPDATE DEPARTMENT
SET MNG_EMP_NO=11
WHERE DEPT_NO =1

UPDATE DEPARTMENT
SET MNG_EMP_NO=12
WHERE DEPT_NO =2

UPDATE DEPARTMENT
SET MNG_EMP_NO=14
WHERE DEPT_NO =3

UPDATE DEPARTMENT
SET MNG_EMP_NO=15
WHERE DEPT_NO =4

UPDATE DEPARTMENT
SET MNG_EMP_NO=18
WHERE DEPT_NO =5

INSERT INTO PROJECT VALUES(0, 'omega', 1);
INSERT INTO PROJECT VALUES(1, 'beta', 1);
INSERT INTO PROJECT VALUES(2, 'alfa', 2);
INSERT INTO PROJECT VALUES(3, 'xilium', 2);
INSERT INTO PROJECT VALUES(4, 'Juliom', 3);
INSERT INTO PROJECT VALUES(5, 'X project', 3);
INSERT INTO PROJECT VALUES(6, 'Alcanzando el cambio', 4);
INSERT INTO PROJECT VALUES(7, 'polo a tierra', 4);
INSERT INTO PROJECT VALUES(8, 'una mano amiga', 5);
INSERT INTO PROJECT VALUES(9, 'estar bien es ser consciente', 5);
INSERT INTO PROJECT VALUES(10, 'un muno para transformar', 6);
INSERT INTO PROJECT VALUES(11, 'por un mundo mejor', 6);
INSERT INTO WORKSON(8, 1, '13-MAR-2020', 1);
INSERT INTO WORKSON(21, 6, '14-AUG-2018', 6);
INSERT INTO WORKSON(13, 5, '05-DEC-2017', 3);
INSERT INTO WORKSON(21, 7, '14-JUN-2016', 2);
INSERT INTO WORKSON(2, 2, '12-MAR-2017', 8);
INSERT INTO WORKSON(28, 6, '17-APR-2020', 6);
INSERT INTO WORKSON(28, 7, '30-APR-2017', 3);
INSERT INTO WORKSON(3, 5, '11-OCT-2019', 8);
INSERT INTO WORKSON(0, 4, '12-MAR-2017', 7);
INSERT INTO WORKSON(4, 0, '16-AUG-2020', 7);
INSERT INTO WORKSON(11, 0, '24-MAR-2018', 2);
INSERT INTO WORKSON(25, 6, '06-NOV-2020', 1);
INSERT INTO WORKSON(4, 1, '29-FEB-2020', 4);
INSERT INTO WORKSON(28, 6, '03-JUL-2019', 1);