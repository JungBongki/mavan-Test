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
name :${xxx.name }<br>
tel :${xxx.tel }<br>
address :${xxx.address }<br>
<a href = "${pageContext.request.contextPath }/list.do">목록보기</a>
</body>
</html>