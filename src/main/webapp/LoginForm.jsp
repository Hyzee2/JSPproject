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
<h2>�α��� ������</h2>
<span style="color: red; font-size: 1.2em;">
	<%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg") %>
</span>
<%
if(session.getAttribute("userId") == null){ // �α��� ���� Ȯ�� (���� ������ ���̵� ����Ǿ��ִ��� Ȯ��. ���� null�̸� �α׾ƿ� ����)
	%>
	<script>
	function validateForm(form){
		if(!form.user_id.value){
			alert("���̵� �Է��ϼ���.");
			return false;
		}
		if(form.user_pw.value == ""){
			alert("�н����带 �Է��ϼ���.");
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