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
	<a href="login.jsp">�α���</a>
<%}else{%>
	<a href="login.jsp">�α׾ƿ�</a> <br><br>
	<%= session.getAttribute("user_id") %>��, ȯ���մϴ�. <br>
<%}
%>

</body>
</html>