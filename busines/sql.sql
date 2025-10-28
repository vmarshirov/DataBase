/* sqlite3

.open busines/busines.db
.tables
.schema busines
 */


DROP TABLE  IF EXISTS busines;
CREATE TABLE  IF NOT EXISTS busines
(r_name NVARCHAR(250) NOT NULL DEFAULT '',
r_amount INTEGER NOT NULL DEFAULT 0,
r_price FLOAT NOT NULL DEFAULT 0,
s_name NVARCHAR(250) NOT NULL DEFAULT '',
s_amount INTEGER NOT NULL DEFAULT 0,
s_price FLOAT NOT NULL DEFAULT 0
); 

INSERT INTO busines (r_name, r_amount, r_price) VALUES  ('мука', 5, 20000);
INSERT INTO busines (r_name, r_amount, r_price) VALUES  ('дрожи', 10, 2000);
INSERT INTO busines (s_name, s_amount, s_price) VALUES  ('хлеб', 100, 100);
INSERT INTO busines (s_name, s_amount, s_price) VALUES  ('пироги', 200, 60);

SELECT * FROM busines;
