<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<html>
<head>
<meta charset="UTF-8">
<title>Create Operation</title>
</head>
<body>
 <sql:setDataSource var="sample" driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/classicmodels?serverTimezone=Asia/Taipei"
     user="root"  password="0730"/> 
 <sql:update dataSource="${sample}" var="result">
   create table if not exists freshEmployees
    (
     id int not null primary key,
     age int not null,
     firstname varchar (255),
     lastname varchar (255)
    )
 </sql:update> 
 <c:out  value="Finish"/> 
 
</body>
</html>