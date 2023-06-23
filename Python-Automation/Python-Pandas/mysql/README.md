## Working with Python Pandas for MYSQL DATA

# 1. Install Docker and Run Docker Container
```
docker run -d --name mtsql-employess -p 3306:3306 -e MYSQL_ROOT_PASSWORD=college genschsa/mysql-employees
```
# check the container running
```
docker ps 
```
## 2. Install DBeaver Database tool for Developers

use below script
```
https://dbeaver.io/
```
# Connect database running locally to DBeaver
```
> New Database connection
username = root
password = college
```

## 3. Open juypter notebook
```
import pandas as pd
# Reading csv
df = pd.read_csv('_SELECT_FROM_employees_e_JOIN_salaries_s_ON_e_emp_no_s_emp_no_WH_202306231014.csv')
df.head()
```

## 4. Connecting to the database running locally

```
# connection to database
!pip install mysql.connector
import mysql.connector

connection = mysql.connector.connect(
    user = 'root',
    password = 'college',
    host = 'localhost',
    database = 'employees',
)

connection
```
# create a cursor
```
cursor = connection.cursor()
```
# Execute Query

```
query = '''
    SELECT *
    FROM employees e
    JOIN salaries s
    ON e.emp_no = s.emp_no
    WHERE e.hire_date > '1991-01-01';
'''
cursor.execute(query)

for i,data in enumerate(cursor):
    break

print(data)
```
# Extract Every data out of it
```
results = []
for i,data in enumerate(cursor):
    results.append(data)
connection.close()
cursor.close()

print(results)
```

## 5. Using SQLAlchemy to work with MYSQL to write and ready data from mysql

```
!pip install SQLAlchemy
!pip install pymysql

# read sql from pandas
import pandas as pd
import sqlalchemy
from sqlalchemy import create_engine

con_string = "mysql+pymysql://root:college@localhost/employees"
engine = create_engine(con_string)
query = """
    SELECT *
    FROM employees e
    JOIN salaries s
    ON e.emp_no = s.emp_no
    WHERE e.hire_date > '1991-01-01';
"""

```

# Connecting to the database with create_engine

```
df_read_sql = pd.read_sql(query, engine)
df_read_sql.head()
df_read_sql
```

## 6. Create a New MAX_SALARY table to the database
```
max_salary = df.groupby(['emp_no','first_name','last_name'])['salary'].max().reset_index()
max_salary
```
# Write the table to the database
```
max_salary.to_sql('max_salary', engine, if_exists='replace')
```
# without index
max_salary.to_sql('max_salary', engine, if_exists='replace', index = False)
```
max_salary2 = pd.read_sql('SELECT * FROM max_salary', engine)
print(max_salary2)

max_salary.shape, max_salary2.shape
```

# Adding 10000 to the salary of every employee

```
max_salary_plus = max_salary.copy()
max_salary_plus['salary'] = max_salary_plus['salary'] + 1_000_000
max_salary_plus.to_sql('max_salary', engine, if_exists='append', index=False)

max_salary3 = pd.read_sql('SELECT * FROM max_salary', engine)
print(max_salary3)
```
# Writing Creation data
```
import datetime as dt
dt.datetime.now()
max_salary['create_date'] = dt.datetime.now()
max_salary.to_sql('max_salary', engine, if_exists='replace', index=False )
```
# Writing second time to the same table with different time
```
max_salary['create_date'] = dt.datetime.now()
max_salary.to_sql('max_salary', engine, if_exists='append', index=False)
```
# Gets different timestamp every time we append
```
max_salary4 = pd.read_sql('SELECT * FROM max_salary', engine)
max_salary4['create_date'].value_counts()
```
