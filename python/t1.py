import sqlite3
db = sqlite3.connect('sql_python.db')

# Create Cursor
c = db.cursor()
# Создание таблицы
c.execute("""CREATE TABLE IF NOT EXISTS "orm_abc_app_abcmodel" 
("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
"task" varchar(255) NOT NULL DEFAULT "Формулировка задачи", 
"a" integer NOT NULL DEFAULT 10, 
"b" integer NOT NULL DEFAULT 20, 
"c" integer NOT NULL DEFAULT 30,
"result" varchar(255) NOT NULL DEFAULT "нет результата"
)
 )""")

# Добавление данных
c.execute("INSERT INTO orm_abc_app_abcmodel (a) VALUES (1)")
db.commit()

c.execute("SELECT* FROM orm_abc_app_abcmodel")
items = c.fetchall()
print(items)
