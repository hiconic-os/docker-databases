# docker-databases
Several docker databases configuration


## Connection details

> username: **cortex**\
password: **cortex**

| DBMS | Driver | JDBC URL |
|-|-|-|
| Derby | org.apache.derby.jdbc.ClientDriver | jdbc:derby://localhost:1527/res/db/dbtest;create=true |
| MS SQL | com.microsoft.sqlserver.jdbc.SQLServerDriver | jdbc:sqlserver://localhost:51433;databaseName=dbtest |
| MySql | com.mysql.jdbc.Driver | jdbc:mysql://localhost:53306/dbtest |
| Oracle | oracle.jdbc.pool.OracleDataSource | jdbc:oracle:thin:@localhost:51521/xe |
| Postgre | org.postgresql.Driver | jdbc:postgresql://localhost:55432/dbtest |
