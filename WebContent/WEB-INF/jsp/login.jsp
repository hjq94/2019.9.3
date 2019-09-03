<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/login.action">
用户名:<input type="text" name="username"/>
密码:<input type="password" name="pw"/>
<input type="submit"/>

</form>


</body>
</html>