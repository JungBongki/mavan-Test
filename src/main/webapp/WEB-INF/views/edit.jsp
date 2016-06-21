<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix= "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action = "${pageContext.request.contextPath }/edit_OK.do" method = "post">
name : <input type = "text" name="name" value="${mm.name }"><br>
tel : <input type = "text" name="tel" value="${mm.tel }"><br>
address : <input type = "text" name="address" value="${mm.address }"><br>
<input type = "hidden" name = "num" value = "${mm.num }">
<input type = "submit" value = "수정">
</body>
</html>