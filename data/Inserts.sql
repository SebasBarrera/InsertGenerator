
INSERT INTO DEPARTMENT VALUES(0, 'Calidad', NULL);
INSERT INTO DEPARTMENT VALUES(1, 'Administracion', NULL);
INSERT INTO DEPARTMENT VALUES(2, 'Inventario', NULL);
INSERT INTO DEPARTMENT VALUES(3, 'Sistemas de info.', NULL);
INSERT INTO DEPARTMENT VALUES(4, 'Expansion', NULL);
INSERT INTO DEPARTMENT VALUES(5, 'Logistica', NULL);
INSERT INTO EMPLOYEE VALUES(0, 'Francklin', 'Toupe', 'Cra 157 N° 48 - 79', '07-JUL-1994', 'Hombre', 'Contador', 4);
INSERT INTO EMPLOYEE VALUES(1, 'Johannah', 'Twelvetree', 'Cll 132 N° 143 - 31', '21-OCT-1971', 'Mujer', 'Coordinador', 1);
INSERT INTO EMPLOYEE VALUES(2, 'Merrick', 'Portingale', 'Cra 111 N° 24 - 1', '31-AUG-1972', 'Mujer', 'Ejecutivo', 4);
INSERT INTO EMPLOYEE VALUES(3, 'Daren', 'Velez', 'Cra 196 N° 75 - 100', '07-APR-1982', 'Mujer', 'Ejecutivo', 2);
INSERT INTO EMPLOYEE VALUES(4, 'Claus', 'Wipper', 'Cll 119 N° 169 - 77', '29-DEC-1969', 'Mujer', 'Colaborador', 0);
INSERT INTO EMPLOYEE VALUES(5, 'Shayla', 'Suttaby', 'Cll 136 N° 187 - 18', '02-NOV-1989', 'Hombre', 'Ingeniero', 1);
INSERT INTO EMPLOYEE VALUES(6, 'Harrie', 'Rehme', 'Cll 70 N° 115 - 24', '29-NOV-1994', 'Hombre', 'Aprendiz', 1);
INSERT INTO EMPLOYEE VALUES(7, 'Sarene', 'Shurey', 'Cra 145 N° 143 - 63', '11-FEB-1986', 'Mujer', 'Jefe de Departamento', 0);
INSERT INTO EMPLOYEE VALUES(8, 'Dwayne', 'Swanne', 'Cra 24 N° 196 - 6', '05-FEB-1977', 'Mujer', 'Coordinador', 4);
INSERT INTO EMPLOYEE VALUES(9, 'Pandora', 'McCloughlin', 'Cll 176 N° 137 - 4', '19-JAN-2002', 'Mujer', 'Ingeniero', 4);
INSERT INTO EMPLOYEE VALUES(10, 'Victoir', 'Sansbury', 'Cra 107 N° 182 - 40', '19-MAY-2003', 'Mujer', 'Coordinador', 1);
INSERT INTO EMPLOYEE VALUES(11, 'Olimpia', 'Jikovsky', 'Cll 176 N° 93 - 73', '12-FEB-1963', 'Mujer', 'Secretario', 3);
INSERT INTO EMPLOYEE VALUES(12, 'Corella', 'Frise', 'Cll 171 N° 102 - 29', '19-MAR-1958', 'Mujer', 'Jefe de Departamento', 1);
INSERT INTO EMPLOYEE VALUES(13, 'Elli', 'Filkov', 'Cra 100 N° 119 - 95', '15-DEC-1984', 'Mujer', 'Asistente', 4);
INSERT INTO EMPLOYEE VALUES(14, 'Issy', 'Truggian', 'Cra 34 N° 132 - 37', '01-JUL-1982', 'Mujer', 'Ejecutivo', 0);
INSERT INTO EMPLOYEE VALUES(15, 'Florian', 'Leban', 'Cra 88 N° 69 - 56', '08-JUN-2006', 'Hombre', 'Contador', 0);
INSERT INTO EMPLOYEE VALUES(16, 'Wilburt', 'Murfin', 'Cll 101 N° 19 - 107', '08-SEP-1977', 'Hombre', 'Ejecutivo', 0);
INSERT INTO EMPLOYEE VALUES(17, 'Hildagarde', 'Hull', 'Cll 53 N° 34 - 119', '27-DEC-1977', 'Hombre', 'Colaborador', 4);
INSERT INTO EMPLOYEE VALUES(18, 'Pattie', 'Mair', 'Cra 128 N° 125 - 47', '29-SEP-1992', 'Hombre', 'Jefe de Departamento', 2);
INSERT INTO EMPLOYEE VALUES(19, 'Dara', 'Booton', 'Cll 81 N° 38 - 95', '12-JUL-2006', 'Hombre', 'Colaborador', 1);
INSERT INTO EMPLOYEE VALUES(20, 'Nikoletta', 'Aldhouse', 'Cra 60 N° 161 - 95', '21-SEP-1988', 'Mujer', 'Contador', 1);
INSERT INTO EMPLOYEE VALUES(21, 'Elli', 'Bassill', 'Cll 159 N° 33 - 52', '23-DEC-1994', 'Hombre', 'Secretario', 1);
INSERT INTO EMPLOYEE VALUES(22, 'Mayne', 'Giacomucci', 'Cra 111 N° 30 - 115', '13-SEP-1971', 'Mujer', 'Aprendiz', 4);
INSERT INTO EMPLOYEE VALUES(23, 'Frederigo', 'Hadlee', 'Cra 134 N° 2 - 74', '24-APR-1962', 'Hombre', 'Ingeniero', 4);
INSERT INTO EMPLOYEE VALUES(24, 'Corine', 'Thrussell', 'Cll 124 N° 6 - 60', '27-NOV-1994', 'Hombre', 'Jefe de Departamento', 3);
INSERT INTO EMPLOYEE VALUES(25, 'Lucio', 'Redan', 'Cll 65 N° 26 - 27', '25-AUG-1971', 'Mujer', 'Jefe de Departamento', 4);
INSERT INTO EMPLOYEE VALUES(26, 'Drud', 'Cotsford', 'Cra 49 N° 141 - 56', '24-APR-1972', 'Hombre', 'Jefe de Departamento', 5);
INSERT INTO EMPLOYEE VALUES(27, 'Deerdre', 'Willgrass', 'Cra 63 N° 78 - 94', '30-JUL-1991', 'Hombre', 'Ingeniero', 0);
INSERT INTO EMPLOYEE VALUES(28, 'Lona', 'Marde', 'Cra 21 N° 75 - 69', '12-DEC-1963', 'Hombre', 'Ejecutivo', 3);
INSERT INTO EMPLOYEE VALUES(29, 'Adina', 'Evers', 'Cll 106 N° 6 - 89', '15-OCT-1961', 'Hombre', 'Asistente', 0);
UPDATE DEPARTMENT
SET MNG_EMP_NO=7
WHERE DEPT_NO =0;

UPDATE DEPARTMENT
SET MNG_EMP_NO=12
WHERE DEPT_NO =1;

UPDATE DEPARTMENT
SET MNG_EMP_NO=18
WHERE DEPT_NO =2;

UPDATE DEPARTMENT
SET MNG_EMP_NO=24
WHERE DEPT_NO =3;

UPDATE DEPARTMENT
SET MNG_EMP_NO=25
WHERE DEPT_NO =4;

UPDATE DEPARTMENT
SET MNG_EMP_NO=26
WHERE DEPT_NO =5;

INSERT INTO PROJECT VALUES(0, 'omega', 0);
INSERT INTO PROJECT VALUES(1, 'beta', 0);
INSERT INTO PROJECT VALUES(2, 'alfa', 1);
INSERT INTO PROJECT VALUES(3, 'xilium', 1);
INSERT INTO PROJECT VALUES(4, 'Juliom', 2);
INSERT INTO PROJECT VALUES(5, 'X project', 2);
INSERT INTO PROJECT VALUES(6, 'por el cambio', 3);
INSERT INTO PROJECT VALUES(7, 'polo a tierra', 3);
INSERT INTO PROJECT VALUES(8, 'una mano amiga', 4);
INSERT INTO PROJECT VALUES(9, 'estar bien', 4);
INSERT INTO PROJECT VALUES(10, 'mundo de todos', 5);
INSERT INTO PROJECT VALUES(11, 'mundo mejor', 5);
INSERT INTO WORKSON VALUES(8, 8, '15-FEB-2016', 2);
INSERT INTO WORKSON VALUES(8, 9, '22-FEB-2018', 3);
INSERT INTO WORKSON VALUES(15, 0, '23-JAN-2016', 1);
INSERT INTO WORKSON VALUES(27, 0, '19-MAY-2017', 1);
INSERT INTO WORKSON VALUES(9, 8, '07-NOV-2020', 2);
INSERT INTO WORKSON VALUES(15, 1, '16-MAY-2020', 2);
INSERT INTO WORKSON VALUES(25, 8, '22-NOV-2019', 7);
INSERT INTO WORKSON VALUES(17, 9, '31-OCT-2017', 7);
INSERT INTO WORKSON VALUES(13, 9, '27-NOV-2015', 8);
INSERT INTO WORKSON VALUES(23, 9, '15-MAR-2019', 4);
INSERT INTO WORKSON VALUES(24, 7, '28-MAY-2015', 6);