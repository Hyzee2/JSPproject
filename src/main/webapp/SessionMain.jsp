<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
session.setMaxInactiveInterval(1800); // session 내장객체로 세션 유지 시간 1800초(=30분) 설정

SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss"); // 날짜 표시 형식

long creationTime = session.getCreationTime(); // 최초 요청(세션 생성) 시각
String creationTimeStr = dateFormat.format(new Date(creationTime));

long lastTime = session.getLastAccessedTime(); // 마지막 요청 시각
String lastTimeStr = dateFormat.format(new Date(lastTime));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>
<h2>Session 설정 확인</h2>
<ul>
	<li>세션유지시간: <%=session.getMaxInactiveInterval() %></li>
	<li>세션아이디: <%=session.getId() %></li> <%--웹 브라우저에 생성된 세션ID 출력 --%>
	<li>최초요청시각: <%=creationTimeStr %></li>
	<li>마지막요청시각: <%=lastTimeStr %></li>
</ul>
</body>
</html>