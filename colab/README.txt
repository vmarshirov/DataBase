# @title SQlite


# /content/db/gta.db
!ls -lAF /content/
import sqlite3
#connection = sqlite3.connect("/content/gta.db")
cursor = connection.cursor()

cursor.execute("""CREATE TABLE IF NOT EXISTS  gta (
  reliase_year integer,
  reliase_name  text,
  city text
  );""")

number_input = 333 # @param {type:"number"}
print(number_input)

gta = [
    (10, "2", "3"),
    (1, "2", "3")
    ]

print(gta)


cursor.execute("INSERT INTO gta (reliase_year, reliase_name, city) VALUES (1,'20','31');")
cursor.executemany("insert into gta values (?,?,?)", gta)


raws = cursor.execute(("select * from gta;"))

print(raws.fetchall())


raws = cursor.execute(("SELECT * from gta;"))
i = 0
for raw in raws:
  i+=1
  print(i, raw)

#connection.close()

!date
!ls -lAF
