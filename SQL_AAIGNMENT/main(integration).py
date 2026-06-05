# import pandas as pd

# df = pd.read_csv("EMPLOYEES.csv")

# print(df)



import sqlite3

import pandas as pd

# Read CSV file
df = pd.read_csv(r"C:\Users\pravi\ml(py)\SQL_AAIGNMENT\EMPLOYEES.CSV")

# Connect database
conn = sqlite3.connect("EMPLOYEES.DB")

# Convert CSV to SQL table
df.to_sql(
    "employees",
    conn,
    if_exists="replace",
    index=False
)

print("Data inserted into SQL successfully!")

# SQL Query
query = """
SELECT Name, salary
FROM employees
WHERE salary > 10000
ORDER BY salary DESC
"""

# Read SQL data
result = pd.read_sql(query, conn)

print(result)

# Close database
conn.close()