<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="utils.CookieManager" %>
<%@ page import="utils.JSFunction" %>
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");

if("guswl".equals(user_id) && "1234".equals(user_pw)){
	session.setAttribute("user_id", user_id);
	if(save_check != null && save_check.equals("Y")){
		CookieManager.makeCookie(response, "loginId", user_id, 86400);
	}else {
		CookieManager.deleteCookie(response, "loginId");
	}
	
	JSFunction.alertLocation("�α��ο� �����߽��ϴ�.", "template.jsp", out);
}else {
	JSFunction.alertBack("�α��ο� �����߽��ϴ�.", out);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login process page</title>
</head>
<body>

</body>
</html>