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
