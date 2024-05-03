<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="utils.JSFunction" %>
<%
	String user_id = (String)session.getAttribute("user_id");
	if(user_id == null){
		JSFunction.alertLocation("로그인 후 이용해주세요.", "login.jsp", out);
	}

	String pagefile = request.getParameter("listname");
   	if(pagefile == null){
   		pagefile = "newitem";
   	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Template</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
%>

<table border="1" style="width: 80%; height: 500px;">
	<tr>
		<td colspan="2"><jsp:include page="top.jsp" /></td>
	</tr>
	
	<tr>
		
		<td colspan="2"><jsp:include page='<%=pagefile + ".jsp" %>' /></td>
	</tr>
	
	<tr>
		<td colspan="2"><jsp:include page="bottom.jsp" /></td>
	</tr> 
</table>

</body>
</html>