<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix= "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>1. form.jsp(�ʱ�ȭ��?)</title>
</head>
<body>
<form action = "${pageContext.request.contextPath }/add.do" method = "post">
name : <input type = "text" name="name"><br>
tel : <input type = "text" name="tel"><br>
address : <input type = "text" name="address"><br>
<input type = "submit" value = "����">
</form>
</body>
</html>