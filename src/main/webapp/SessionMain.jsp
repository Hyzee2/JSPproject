<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
session.setMaxInactiveInterval(1800); // session ���尴ü�� ���� ���� �ð� 1800��(=30��) ����

SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss"); // ��¥ ǥ�� ����

long creationTime = session.getCreationTime(); // ���� ��û(���� ����) �ð�
String creationTimeStr = dateFormat.format(new Date(creationTime));

long lastTime = session.getLastAccessedTime(); // ������ ��û �ð�
String lastTimeStr = dateFormat.format(new Date(lastTime));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>
<h2>Session ���� Ȯ��</h2>
<ul>
	<li>���������ð�: <%=session.getMaxInactiveInterval() %></li>
	<li>���Ǿ��̵�: <%=session.getId() %></li> <%--�� �������� ������ ����ID ��� --%>
	<li>���ʿ�û�ð�: <%=creationTimeStr %></li>
	<li>��������û�ð�: <%=lastTimeStr %></li>
</ul>
</body>
</html>