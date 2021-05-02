
INSERT INTO DEPARTMENT VALUES(0, 'Calidad', NULL);
INSERT INTO DEPARTMENT VALUES(1, 'Administracion', NULL);
INSERT INTO DEPARTMENT VALUES(2, 'Inventario', NULL);
INSERT INTO DEPARTMENT VALUES(3, 'Sistemas de informacion', NULL);
INSERT INTO DEPARTMENT VALUES(4, 'Expansion', NULL);
INSERT INTO DEPARTMENT VALUES(5, 'Logistica', NULL);
INSERT INTO EMPLOYEE VALUES(0, 'Jose', 'McCaughey', 'Cra 142 N° 12 - 89', '04-10-1967', 'Mujer', 'Jefe de Departamento', 0);
INSERT INTO EMPLOYEE VALUES(1, 'Blake', 'Pomfret', 'Cra 38 N° 32 - 101', '09-28-2002', 'Hombre', 'Colaborador', 2);
INSERT INTO EMPLOYEE VALUES(2, 'Mic', 'Bransgrove', 'Cll 26 N° 2 - 13', '05-01-1979', 'Mujer', 'Jefe de Departamento', 1);
INSERT INTO EMPLOYEE VALUES(3, 'Corine', 'Daintrey', 'Cll 29 N° 154 - 9', '05-30-1973', 'Hombre', 'Jefe de Departamento', 2);
INSERT INTO EMPLOYEE VALUES(4, 'Jacquelyn', 'Kusick', 'Cra 17 N° 23 - 17', '02-20-1977', 'Mujer', 'Ejecutivo', 2);
INSERT INTO EMPLOYEE VALUES(5, 'Lucio', 'Mulholland', 'Cra 98 N° 132 - 55', '06-05-1998', 'Hombre', 'Ejecutivo', 4);
INSERT INTO EMPLOYEE VALUES(6, 'Dian', 'Rodolphe', 'Cll 97 N° 72 - 12', '09-28-1970', 'Hombre', 'Ingeniero', 1);
INSERT INTO EMPLOYEE VALUES(7, 'Priscilla', 'Gwyn', 'Cll 19 N° 97 - 87', '10-20-1987', 'Mujer', 'Jefe de Departamento', 3);
INSERT INTO EMPLOYEE VALUES(8, 'Henrietta', 'Richardes', 'Cll 190 N° 62 - 118', '10-04-1966', 'Mujer', 'Colaborador', 2);
INSERT INTO EMPLOYEE VALUES(9, 'Jobyna', 'Feldman', 'Cra 17 N° 94 - 114', '11-11-2004', 'Mujer', 'Jefe de Departamento', 4);
INSERT INTO EMPLOYEE VALUES(10, 'Goldy', 'Theobald', 'Cll 2 N° 56 - 107', '05-26-1993', 'Hombre', 'Ejecutivo', 1);
INSERT INTO EMPLOYEE VALUES(11, 'Graig', 'Spoole', 'Cll 7 N° 132 - 115', '05-13-1973', 'Mujer', 'Jefe de Departamento', 5);
INSERT INTO EMPLOYEE VALUES(12, 'Ramon', 'Biskupiak', 'Cll 174 N° 98 - 28', '04-25-2003', 'Hombre', 'Aprendiz', 4);
INSERT INTO EMPLOYEE VALUES(13, 'Guss', 'Mercey', 'Cra 175 N° 187 - 113', '03-17-2005', 'Mujer', 'Contador', 3);
INSERT INTO EMPLOYEE VALUES(14, 'Man', 'MacRury', 'Cra 60 N° 138 - 54', '09-14-1995', 'Hombre', 'Ingeniero', 4);
INSERT INTO EMPLOYEE VALUES(15, 'Goddard', 'Dowthwaite', 'Cra 133 N° 73 - 88', '12-31-2004', 'Mujer', 'Contador', 1);
INSERT INTO EMPLOYEE VALUES(16, 'Rory', 'Suttaby', 'Cll 183 N° 60 - 94', '01-02-1990', 'Hombre', 'Contador', 1);
INSERT INTO EMPLOYEE VALUES(17, 'Man', 'Hargitt', 'Cll 198 N° 183 - 14', '03-29-1994', 'Mujer', 'Coordinador', 0);
INSERT INTO EMPLOYEE VALUES(18, 'June', 'Surcombe', 'Cll 128 N° 73 - 83', '08-14-1971', 'Mujer', 'Colaborador', 1);
INSERT INTO EMPLOYEE VALUES(19, 'Clarice', 'Kadd', 'Cra 145 N° 83 - 70', '04-03-1990', 'Hombre', 'Asistente', 4);
INSERT INTO EMPLOYEE VALUES(20, 'Horst', 'Prothero', 'Cll 43 N° 141 - 57', '08-16-2000', 'Mujer', 'Ingeniero', 4);
INSERT INTO EMPLOYEE VALUES(21, 'Cora', 'MacDonagh', 'Cra 178 N° 21 - 32', '07-21-1998', 'Hombre', 'Asistente', 1);
INSERT INTO EMPLOYEE VALUES(22, 'Ephraim', 'Mohan', 'Cll 81 N° 193 - 59', '09-04-2002', 'Mujer', 'Aprendiz', 2);
INSERT INTO EMPLOYEE VALUES(23, 'Molli', 'Simson', 'Cra 172 N° 175 - 90', '10-31-1964', 'Mujer', 'Aprendiz', 4);
INSERT INTO EMPLOYEE VALUES(24, 'Kirstyn', 'Romagnosi', 'Cll 66 N° 188 - 46', '01-05-1969', 'Hombre', 'Aprendiz', 4);
INSERT INTO EMPLOYEE VALUES(25, 'Alice', 'Keat', 'Cll 9 N° 28 - 103', '05-23-1974', 'Mujer', 'Ingeniero', 2);
INSERT INTO EMPLOYEE VALUES(26, 'Pier', 'Littlefield', 'Cll 84 N° 66 - 30', '11-04-1974', 'Hombre', 'Ejecutivo', 4);
INSERT INTO EMPLOYEE VALUES(27, 'Hilarius', 'Neave', 'Cll 100 N° 118 - 103', '09-03-1992', 'Hombre', 'Ejecutivo', 3);
INSERT INTO EMPLOYEE VALUES(28, 'Corey', 'Outridge', 'Cra 127 N° 2 - 91', '04-24-1981', 'Mujer', 'Contador', 1);
INSERT INTO EMPLOYEE VALUES(29, 'Matthew', 'Giovanni', 'Cll 104 N° 13 - 3', '09-03-1983', 'Mujer', 'Asistente', 4);
UPDATE DEPARTMENT
SET MNG_EMP_NO=0
WHERE DEPT_NO =0

UPDATE DEPARTMENT
SET MNG_EMP_NO=2
WHERE DEPT_NO =1

UPDATE DEPARTMENT
SET MNG_EMP_NO=3
WHERE DEPT_NO =2

UPDATE DEPARTMENT
SET MNG_EMP_NO=7
WHERE DEPT_NO =3

UPDATE DEPARTMENT
SET MNG_EMP_NO=9
WHERE DEPT_NO =4

UPDATE DEPARTMENT
SET MNG_EMP_NO=11
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
INSERT INTO WORKSON(4, 2, '03-04-2015', 6);
INSERT INTO WORKSON(18, 1, '09-03-2017', 1);
INSERT INTO WORKSON(16, 0, '04-17-2019', 6);
INSERT INTO WORKSON(25, 2, '06-25-2019', 8);
INSERT INTO WORKSON(18, 0, '09-20-2019', 5);
INSERT INTO WORKSON(13, 4, '12-23-2018', 7);
INSERT INTO WORKSON(3, 2, '04-12-2016', 2);
INSERT INTO WORKSON(15, 0, '01-01-2017', 4);
INSERT INTO WORKSON(13, 4, '10-29-2019', 5);
INSERT INTO WORKSON(1, 2, '09-27-2018', 6);
INSERT INTO WORKSON(15, 0, '03-12-2019', 3);
INSERT INTO WORKSON(3, 2, '01-31-2017', 2);
INSERT INTO WORKSON(3, 3, '07-11-2020', 3);
INSERT INTO WORKSON(20, 7, '12-19-2016', 4);
INSERT INTO WORKSON(3, 3, '12-29-2019', 7);
INSERT INTO WORKSON(14, 6, '10-20-2018', 2);
INSERT INTO WORKSON(28, 0, '11-29-2020', 5);