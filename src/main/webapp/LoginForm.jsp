<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
session.setMaxInactiveInterval(60);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>
<h2>로그인 페이지</h2>
<span style="color: red; font-size: 1.2em;">
	<%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg") %>
</span>
<%
if(session.getAttribute("userId") == null){ // 로그인 상태 확인 (세션 영역에 아이디가 저장되어있는지 확인. 값이 null이면 로그아웃 상태)
	%>
	<script>
	function validateForm(form){
		if(!form.user_id.value){
			alert("아이디를 입력하세요.");
			return false;
		}
		if(form.user_pw.value == ""){
			alert("패스워드를 입력하세요.");
			return false;
		}
	}
	</script>
	<form action="LoginProcess.jsp" method="post" name="loginForm" onsubmit="">
		
	</form>
	<%
}
%>
</body>
</html>