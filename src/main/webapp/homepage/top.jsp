<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
if((session.getAttribute("user_id")) == null){ %>
	<a href="login.jsp">로그인</a>
<%}else{%>
	<a href="login.jsp">로그아웃</a> <br><br>
	<%= session.getAttribute("user_id") %>님, 환영합니다. <br>
<%}
%>

</body>
</html>