<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<html>
<head>
<meta charset="UTF-8">
<title>JINSERT Operation</title>
</head>
<body>
 <c:set var="UID" value="${param.uid}" />
 <c:set var="Age" value="${param.age}" /> 
 <c:set var="FName" value="${param.firstname}" />
 <c:set var="LName" value="${param.lastname}" />
<sql:setDataSource var="sample" driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/classicmodels?serverTimezone=Asia/Taipei"
     user="root"  password="0730"/> 
<sql:update dataSource="${sample}" var="result">
       INSERT INTO freshEmployees VALUES (${UID}, ${Age}, '${FName}', '${LName}')
</sql:update> 
<sql:query dataSource="${sample}" var="result">
      SELECT * from freshEmployees
</sql:query> 
<table border="1" width="50%">
<tr>
   <th>Emp ID</th>
   <th>Age</th>
   <th>First Name</th>
   <th>Last Name</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.age}"/></td>
   <td><c:out value="${row.firstname}"/></td>
   <td><c:out value="${row.lastname}"/></td>
</tr>
</c:forEach>
</table>


</body>
</html>