CREATE TABLE IF NOT EXISTS "orm_abc_app_abcmodel" 
("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
"task" varchar(255) NOT NULL, 
"a" integer NOT NULL, 
"b" integer NOT NULL, 
"c" integer NOT NULL,
"result" varchar(255) NOT NULL
)


	
INSERT INTO orm_abc_app_abcmodel ("task", "a", "b","c","result") VALUES("формулировка", 1, 2, 3, "Результат");
SELECT * FROM  orm_abc_app_abcmodel;

INSERT INTO orm_abc_app_abcmodel VALUES(100,"формулировка", 1, 2, 3, "Результат")
INSERT INTO orm_abc_app_abcmodel VALUES(?,"формулировка", 1, 2, 3, "Результат")
	

SELECT 	a, b, c FROM orm_abc_app_abcmodel;
	CASE
		WHEN c > a AND c < b THEN 'в диапазоне'
		ELSE'вне диапазона'
	END
FROM orm_abc_app_abcmodel;


SELECT 	a, b, c   
CASE a,b
	WHEN a > b THEN "a>b"
	ELSE 'N'
END	
FROM orm_abc_app_abcmodel;
