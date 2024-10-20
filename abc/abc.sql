DROP TABLE IF EXISTS orm_abc_app_abcmodel;

CREATE TABLE IF NOT EXISTS "orm_abc_app_abcmodel" 
("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
"task" varchar(255) NOT NULL DEFAULT "Равна ли С сумме A и B ?", 
"a" integer NOT NULL DEFAULT 10, 
"b" integer NOT NULL DEFAULT 20, 
"c" integer NOT NULL DEFAULT 30,
"result" varchar(255) NOT NULL DEFAULT "нет результата"
)


	
INSERT INTO orm_abc_app_abcmodel ("task", "a", "b","c","result") VALUES("Равна ли С сумме A и B ?", 1, 2, 3, "Результат");
SELECT * FROM  orm_abc_app_abcmodel;

INSERT INTO orm_abc_app_abcmodel VALUES(100,"Равна ли С сумме A и B ?", 3, 2, 3, "Результат");
INSERT INTO orm_abc_app_abcmodel VALUES(?,"Равна ли С сумме A и B ?", 1, 20, 3, "Результат");

INSERT INTO orm_abc_app_abcmodel ("a", "b","c") VALUES(20, 10, 5);


SELECT task AS Формулировка, a, b, c, CASE WHEN c > a AND c < b THEN 'с в диапазоне a-b' WHEN c > b AND c < a THEN 'с в диапазоне a-b' ELSE ' с вне диапазона a-b' END AS Результат FROM orm_abc_app_abcmodel;

UPDATE orm_abc_app_abcmodel SET a = 100 WHERE b == 20
SELECT * FROM  orm_abc_app_abcmodel;