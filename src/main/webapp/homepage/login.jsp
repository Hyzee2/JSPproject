<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="utils.CookieManager" %>
<% 
String loginId = CookieManager.readCookie(request, "loginId");

String cookieCheck = "";
if(!loginId.equals("")){
	cookieCheck = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login page</title>
</head>
<body>
<h3>로그인 페이지</h3>
<form action="loginProcess.jsp" method="post">
아이디: <input type="text" name="user_id" value="<%=loginId %>" />
<input type="checkbox" name="save_check" value="Y" <%=cookieCheck %> />
아이디 저장하기
<br>
패스워드: <input type="text" name="user_pw" />
<br>
<input type="submit" value="로그인하기" />
</form>
</body>
</html>