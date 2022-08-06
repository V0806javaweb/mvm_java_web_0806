<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.LoginBean" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login bean jsp</title>
</head>
<body>
       <jsp:useBean id="account"  class="model.LoginBean">
         <jsp:setProperty name="account" property="*" />
       </jsp:useBean>
        Name: ${account.user}<br/>
        Password:${account.password}<br/>
        Phone: ${account.phone}

</body>
</html>