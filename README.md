Introduction
This is a simple educational system website, and combined with the book ordering function, I hope this small DEMO can help everyone learn.

Use technology
IoC container: spring

Web framework: springmvc

Orm framework: mybatis

Security framework: shiro

Data source: dbcp2

Log: sl4j

Json: Gson

Front End Framework: Bootstrap

Start:
1. Initialize the project

1) Download Mysql, create a database name for giit, import create.sql and populate.sql, run sql directly

2) Download Tomcat

3) Import the project using Intellij Idea, then configure the project startup mode, use the Tomcat just downloaded

4) running

image

Introduction to use:
1. Introduction to permissions:

According to the imported populate.sql, there are four permission roles when running the website initially:

1). Administrator, account is admin

2). Student, account number is student

3). Teacher, account number is teache

4). Supplier, account number is supplier

The password is 123456

Features:
1. Basic information function:
Some basic school information, that is, entity-relationships in the database, can be set up, and then more complex functions can be performed based on these basic relationship information. For example, after class selection, how many students can select this course, only the teacher submits The total number of books counted after the book can be obtained through the relationship

1) Department information

2) Professional information

3) Class information

4) Course Information

5) Student Management

image

2. Book management function:
1) Teacher uploads books

2) Secretary approves books

3) View reviewed books

image

Database table structure:
image
