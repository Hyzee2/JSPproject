<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String user = request.getParameter("user");
	String title = request.getParameter("title");
	String filename1 = request.getParameter("filename1");
	String filename2 = request.getParameter("filename2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>file upload check</title>
</head>
<body>
	<p>
	올린 사람: <%=user %><br>
	제목: <%=title %><br>
	파일명1: <a href = "upload/<%=filename1 %>"><%=filename1 %></a><br>
	파일명2: <a href = "upload/<%=filename2 %>"><%=filename2 %></a></p>
</body>
</html>