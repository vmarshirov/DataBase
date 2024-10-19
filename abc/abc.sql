CREATE TABLE IF NOT EXISTS "orm_abc_app_abcmodel" 
("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
"task" varchar(255) NOT NULL, 
"a" integer NOT NULL, 
"b" integer NOT NULL, 
"c" integer NOT NULL,
"result" varchar(255) NOT NULL
)

INSERT INTO orm_abc_app_abcmodel VALUES(100,"формулировка", 1, 2, 3, "kjlk")
INSERT INTO orm_abc_app_abcmodel ("task", "a", "b","c","result") VALUES("формулировка", 1, 2, 3, "Результат");
SELECT * FROM  orm_abc_app_abcmodel;


SELECT
	a,
	b,
	CASE
		WHEN c > a  THEN
			'short'
		WHEN c > a AND c < b THEN 'medium'
		ELSE
			'long'
		END category
FROM
	orm_abc_app_abcmodel;
