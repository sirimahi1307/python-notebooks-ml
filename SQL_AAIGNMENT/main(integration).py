



import sqlite3

import pandas as pd

df = pd.read_csv(r"C:\Users\pravi\ml(py)\SQL_AAIGNMENT\EMPLOYEES.CSV")


conn = sqlite3.connect("EMPLOYEES.DB")


df.to_sql(
    "employees",
    conn,
    if_exists="replace",
    index=False
)

print("Data inserted into SQL successfully!")


query = """
SELECT Name, salary
FROM employees
WHERE salary > 10000
ORDER BY salary DESC
"""


result = pd.read_sql(query, conn)

print(result)
git 
conn.close() 