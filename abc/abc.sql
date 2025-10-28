
/* 
sqlite3


.open abc/abc.db
.databases
.tables
.schema orm_abc_app_abcmodel
.mode table
.header on

.read abc/abc.sql

 */

DROP TABLE IF EXISTS 'orm_abc_app_abcmodel'; 

CREATE TABLE IF NOT EXISTS 'orm_abc_app_abcmodel' 
('id' integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
'task' varchar(255) NOT NULL DEFAULT 'Находится ли С в диапазоне A B?', 
'a' float NOT NULL DEFAULT 10, 
'b' float NOT NULL DEFAULT 20, 
'c' float NOT NULL DEFAULT 30.1,
'int_d' integer NOT NULL DEFAULT 0,
'result' varchar(255) NOT NULL DEFAULT 'нет результата'
);


SELECT * FROM  orm_abc_app_abcmodel;
INSERT INTO orm_abc_app_abcmodel ('task', 'a', 'b','c', 'int_d','result') VALUES('Находится ли С в диапазоне A B?', 1, 2, 3, 1,  'не известно');
SELECT * FROM  orm_abc_app_abcmodel;

INSERT INTO orm_abc_app_abcmodel VALUES(?,'Находится ли С в диапазоне A B?', 43.211, 4, 3, 2, '?');
INSERT INTO orm_abc_app_abcmodel VALUES(100,'Находится ли С в диапазоне A B?', 1, 20, 3, 3, '??');
INSERT INTO orm_abc_app_abcmodel ('a', 'b','c') VALUES(20, 10, 5);
SELECT * FROM  orm_abc_app_abcmodel;

SELECT id, task AS Формулировка, a, b, c, int_d,  CASE WHEN c > a AND c < b THEN 'C в диапазоне A, B' WHEN c > b AND c < a THEN 'C в диапазоне A,B' ELSE 'C вне диапазона A,B' END AS Результат FROM orm_abc_app_abcmodel;

UPDATE orm_abc_app_abcmodel SET c = (a + b)/2 WHERE id == 2;
SELECT id, task AS Формулировка, a, b, c, int_d,  CASE WHEN c > a AND c < b THEN 'C в диапазоне A, B' WHEN c > b AND c < a THEN 'C в диапазоне A,B' ELSE 'C вне диапазона A,B' END AS Результат FROM orm_abc_app_abcmodel;
