
INSERT INTO DEPARTMENT VALUES(0, 'Calidad', NULL);
INSERT INTO DEPARTMENT VALUES(1, 'Administracion', NULL);
INSERT INTO DEPARTMENT VALUES(2, 'Inventario', NULL);
INSERT INTO DEPARTMENT VALUES(3, 'Sistemas de info.', NULL);
INSERT INTO DEPARTMENT VALUES(4, 'Expansion', NULL);
INSERT INTO DEPARTMENT VALUES(5, 'Logistica', NULL);
INSERT INTO EMPLOYEE VALUES(0, 'Guss', 'Peppard', 'Cll 43 N° 111 - 61', '21-MAY-1965', 'Mujer', 'Jefe de Departamento', 0);
INSERT INTO EMPLOYEE VALUES(1, 'Sigismond', 'Kenwin', 'Cra 47 N° 82 - 105', '16-JUN-1990', 'Hombre', 'Jefe de Departamento', 1);
INSERT INTO EMPLOYEE VALUES(2, 'Whitman', 'Southerell', 'Cra 51 N° 112 - 14', '23-NOV-1977', 'Mujer', 'Secretario', 4);
INSERT INTO EMPLOYEE VALUES(3, 'Jillian', 'Ruggles', 'Cra 19 N° 24 - 65', '10-JAN-1965', 'Mujer', 'Jefe de Departamento', 2);
INSERT INTO EMPLOYEE VALUES(4, 'Clemmie', 'Murfin', 'Cra 128 N° 86 - 106', '25-OCT-1991', 'Hombre', 'Jefe de Departamento', 3);
INSERT INTO EMPLOYEE VALUES(5, 'Dunc', 'Giovanni', 'Cra 106 N° 26 - 70', '05-SEP-1960', 'Hombre', 'Colaborador', 4);
INSERT INTO EMPLOYEE VALUES(6, 'Luigi', 'Toupe', 'Cra 181 N° 43 - 19', '18-MAR-1991', 'Hombre', 'Coordinador', 0);
INSERT INTO EMPLOYEE VALUES(7, 'Henderson', 'McIlhatton', 'Cll 63 N° 54 - 49', '12-JAN-1996', 'Mujer', 'Contador', 1);
INSERT INTO EMPLOYEE VALUES(8, 'Goldy', 'Kirmond', 'Cll 100 N° 34 - 106', '03-AUG-1969', 'Mujer', 'Jefe de Departamento', 4);
INSERT INTO EMPLOYEE VALUES(9, 'Guthrey', 'Towler', 'Cll 199 N° 30 - 35', '17-NOV-1959', 'Hombre', 'Jefe de Departamento', 5);
INSERT INTO EMPLOYEE VALUES(10, 'Margarette', 'Jolliss', 'Cra 64 N° 13 - 107', '18-DEC-1973', 'Mujer', 'Colaborador', 0);
INSERT INTO EMPLOYEE VALUES(11, 'Hilarius', 'Ralling', 'Cra 196 N° 35 - 46', '05-DEC-1979', 'Hombre', 'Secretario', 2);
INSERT INTO EMPLOYEE VALUES(12, 'Guss', 'Kleisle', 'Cra 134 N° 122 - 69', '15-JAN-1981', 'Hombre', 'Colaborador', 1);
INSERT INTO EMPLOYEE VALUES(13, 'Shelagh', 'Mirfield', 'Cll 199 N° 139 - 91', '09-JUN-1970', 'Mujer', 'Aprendiz', 2);
INSERT INTO EMPLOYEE VALUES(14, 'Armand', 'Malthouse', 'Cll 91 N° 74 - 30', '03-NOV-1981', 'Hombre', 'Ingeniero', 0);
INSERT INTO EMPLOYEE VALUES(15, 'Jermayne', 'Frise', 'Cra 20 N° 149 - 88', '06-SEP-1991', 'Mujer', 'Secretario', 0);
INSERT INTO EMPLOYEE VALUES(16, 'Gerta', 'Ivel', 'Cra 174 N° 5 - 71', '10-JAN-1986', 'Hombre', 'Colaborador', 2);
INSERT INTO EMPLOYEE VALUES(17, 'Serene', 'Stuckford', 'Cra 128 N° 25 - 92', '17-MAR-1990', 'Hombre', 'Contador', 4);
INSERT INTO EMPLOYEE VALUES(18, 'Nadia', 'Trodler', 'Cra 182 N° 164 - 39', '05-OCT-1983', 'Hombre', 'Secretario', 0);
INSERT INTO EMPLOYEE VALUES(19, 'Hanan', 'Corradi', 'Cra 170 N° 126 - 82', '31-OCT-1992', 'Hombre', 'Colaborador', 0);
INSERT INTO EMPLOYEE VALUES(20, 'Devon', 'Duncombe', 'Cll 6 N° 45 - 64', '26-AUG-1958', 'Mujer', 'Contador', 0);
INSERT INTO EMPLOYEE VALUES(21, 'Kizzee', 'Swanne', 'Cll 51 N° 8 - 109', '08-OCT-1966', 'Hombre', 'Aprendiz', 1);
INSERT INTO EMPLOYEE VALUES(22, 'Portia', 'Weetch', 'Cll 153 N° 6 - 84', '21-DEC-1966', 'Mujer', 'Ingeniero', 1);
INSERT INTO EMPLOYEE VALUES(23, 'Cathi', 'Cuolahan', 'Cra 116 N° 31 - 43', '24-JUN-1962', 'Mujer', 'Ejecutivo', 0);
INSERT INTO EMPLOYEE VALUES(24, 'Dunc', 'Dendle', 'Cll 69 N° 102 - 106', '09-JUL-1983', 'Mujer', 'Colaborador', 4);
INSERT INTO EMPLOYEE VALUES(25, 'Aile', 'Thorington', 'Cll 101 N° 20 - 37', '02-NOV-1982', 'Mujer', 'Colaborador', 3);
INSERT INTO EMPLOYEE VALUES(26, 'Blanche', 'Glowacz', 'Cll 52 N° 199 - 105', '31-JAN-1983', 'Hombre', 'Coordinador', 1);
INSERT INTO EMPLOYEE VALUES(27, 'Cherri', 'Peppard', 'Cll 40 N° 161 - 60', '17-FEB-1987', 'Mujer', 'Coordinador', 1);
INSERT INTO EMPLOYEE VALUES(28, 'Arnoldo', 'Daintrey', 'Cra 197 N° 21 - 74', '22-APR-1993', 'Hombre', 'Ingeniero', 2);
INSERT INTO EMPLOYEE VALUES(29, 'Demetra', 'Berdale', 'Cll 4 N° 161 - 45', '06-FEB-2002', 'Hombre', 'Ingeniero', 0);
UPDATE DEPARTMENT
SET MNG_EMP_NO=0
WHERE DEPT_NO =0;

UPDATE DEPARTMENT
SET MNG_EMP_NO=1
WHERE DEPT_NO =1;

UPDATE DEPARTMENT
SET MNG_EMP_NO=3
WHERE DEPT_NO =2;

UPDATE DEPARTMENT
SET MNG_EMP_NO=4
WHERE DEPT_NO =3;

UPDATE DEPARTMENT
SET MNG_EMP_NO=8
WHERE DEPT_NO =4;

UPDATE DEPARTMENT
SET MNG_EMP_NO=9
WHERE DEPT_NO =5;

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
INSERT INTO WORKSON(21, 1, '19-AUG-2018', 6);
INSERT INTO WORKSON(11, 2, '04-OCT-2020', 5);
INSERT INTO WORKSON(17, 6, '27-JUN-2020', 6);
INSERT INTO WORKSON(28, 2, '03-JUL-2019', 5);
INSERT INTO WORKSON(5, 6, '29-JUN-2020', 5);
INSERT INTO WORKSON(11, 2, '27-MAR-2020', 2);
INSERT INTO WORKSON(28, 2, '24-NOV-2019', 1);
INSERT INTO WORKSON(22, 1, '19-FEB-2018', 1);
INSERT INTO WORKSON(9, 8, '25-AUG-2016', 1);
INSERT INTO WORKSON(7, 1, '17-APR-2018', 8);
INSERT INTO WORKSON(27, 1, '27-NOV-2017', 3);
INSERT INTO WORKSON(8, 6, '02-SEP-2020', 8);
INSERT INTO WORKSON(22, 1, '04-NOV-2015', 4);
INSERT INTO WORKSON(8, 6, '31-DEC-2017', 7);