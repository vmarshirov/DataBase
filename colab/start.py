import sqlite3
db = sqlite3.connect('list_new.db')

# Create Cursor
c = db.cursor()
# Создание таблицы
c.execute("""CREATE TABLE articles (
    title text,
     full_text text,
     views integer,
     avtor text
 )""")

# Добавление данных
c.execute("INSERT INTO articles VALUES ('Amazon is cool!', 'Amazon is really cool', 400, 'Modest')")
db.commit()

c.execute("SELECT* FROM articles")
items = c.fetchall()
print(items)

# Удаление данных
#c.execute("DELETE FROM articles WHERE avtor = 'Admin'")

# Изменение данных
#c.execute("UPDATE articles SET avtor = 'Admin', views = 1 WHERE title = 'Amazon is cool!'")

# Выборка данных
#c.execute("SELECT rowid, * FROM articles WHERE rowid < 5 ORDER BY views")
items = c.fetchall()
#print(items)

# print(c.fetchmany(1))
# print(c.fetchone()[1])

# for el in items:
#     print(el[1] + "\n" + el[4])

db.commit()

db.close()
