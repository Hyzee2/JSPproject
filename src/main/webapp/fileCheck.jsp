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
	�ø� ���: <%=user %><br>
	����: <%=title %><br>
	���ϸ�1: <a href = "upload/<%=filename1 %>"><%=filename1 %></a><br>
	���ϸ�2: <a href = "upload/<%=filename2 %>"><%=filename2 %></a></p>
</body>
</html>