
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

INSERT INTO orm_abc_app_abcmodel VALUES(?,'Равна ли С сумме A и B ?', 5, 4, 3, 2, '?');
INSERT INTO orm_abc_app_abcmodel VALUES(100,'Равна ли С сумме A и B ?', 1, 20, 3, 3, '??');
INSERT INTO orm_abc_app_abcmodel ('a', 'b','c') VALUES(20, 10, 5);
SELECT * FROM  orm_abc_app_abcmodel;

SELECT id, task AS Формулировка, a, b, c, int_d,  CASE WHEN c > a AND c < b THEN 'с в диапазоне a-b' WHEN c > b AND c < a THEN 'с в диапазоне a-b' ELSE 'с вне диапазона a-b' END AS Результат FROM orm_abc_app_abcmodel;

UPDATE orm_abc_app_abcmodel SET c = (a + b)/2 WHERE id == 2;

SELECT id, task AS Формулировка, a, b, c, int_d , CASE WHEN c > a AND c < b THEN 'с в диапазоне a-b' WHEN c > b AND c < a THEN 'с в диапазоне a-b' ELSE 'с вне диапазона a-b' END AS Результат FROM orm_abc_app_abcmodel;

SELECT * FROM  orm_abc_app_abcmodel;

-- SELECT SUM(a*b) AS Выручка, SUM(b*int) AS Затраты, SUM(a*b)-SUM(b*int) AS Прибыль FROM orm_abc_app_abcmodel;

