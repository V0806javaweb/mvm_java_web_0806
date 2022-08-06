<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user input jsp</title>
</head>
<body>
	<h1>Hello World!</h1>
        <form action="insertDBtb.jsp" method="post">
            ID : <input type="text" name="uid" value="105"><br>
            Age : <input type="text" name="age" value="20"><br>
            FirstName : <input type="text" name="firstname" value="Mary"><br>
            LastName : <input type="text" name="lastname" value="Anderson"><br>
            <input type="submit"  value="Send">
        </form>
</body>
</html>