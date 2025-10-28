/* sqlite3

.open busines/busines.db
.mode table
.header on

.tables
.schema busines
.read busines/busines.sql
 */


DROP TABLE  IF EXISTS busines;
CREATE TABLE  IF NOT EXISTS busines
(BusinesId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
r_name NVARCHAR(250) NOT NULL DEFAULT '',
r_amount INTEGER NOT NULL DEFAULT 0,
r_price FLOAT NOT NULL DEFAULT 0,
s_name NVARCHAR(250) NOT NULL DEFAULT '',
s_amount INTEGER NOT NULL DEFAULT 0,
s_price FLOAT NOT NULL DEFAULT 0
); 

INSERT INTO busines (r_name, r_amount, r_price) VALUES  ('мука', 1, 20000);
INSERT INTO busines (r_name, r_amount, r_price) VALUES  ('дрожи', 10, 2000);
INSERT INTO busines (s_name, s_amount, s_price) VALUES  ('хлеб', 1000, 100);
INSERT INTO busines (s_name, s_amount, s_price) VALUES  ('пироги', 200, 60);

SELECT * FROM busines;

SELECT SUM(r_amount * r_price) AS Затраты, SUM(s_amount * s_price) AS Выручка, SUM(s_amount * s_price) - SUM(r_amount * r_price) AS Прибыль FROM busines;
